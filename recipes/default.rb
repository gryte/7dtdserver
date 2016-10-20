#
# Cookbook Name:: 7dtdserver
# Recipe:: default
#
# Copyright (c) 2016 Adam Linkous, All Rights Reserved.

# include chef-vault recicpe
include_recipe 'chef-vault'

# install wget
package 'wget' do
  action :install
end

# create system directories
directory '/.downloads' do
  owner 'root'
  group 'root'
end

group '7days' do
  action :create
end

user '7days' do
  comment '7days to die Server'
  group '7days'
  home '/home/7days'
  manage_home true
  shell '/bin/bash'
  password 'test'
  action :create
end

# install wget
package 'screen' do
  action :install
end

# download nux-dextop rpm
remote_file 'steamcd_download' do
  not_if { ::File.exist?('/.downloads/steamcmd_linux.tar.gz') }
  path '/.downloads/steamcmd_linux.tar.gz'
  source 'http://media.steampowered.com/installer/steamcmd_linux.tar.gz'
end

# install nux-dextop
package 'glibc.i686' do
  action :install
end

# install nux-dextop
package 'libstdc++.i686' do
  action :install
end

# create system directories
directory '/home/7days/steamcmd' do
  owner '7days'
  group '7days'
end

unless ::File.exist?('/home/7days/steamcmd/steamcmd.sh')
  # untar steamcmd into install directory
  execute 'untar_steamcmd' do
    user '7days'
    group '7days'
    command 'tar xzf /.downloads/steamcmd_linux.tar.gz -C /home/7days/steamcmd'
  end

  include_recipe '7dtdserver::install_7daysded'
end

template 'manage_serverconfig' do
  action :create
  path '/home/7days/steamcmd/7daysded/serverconfig.xml'
  source 'serverconfig.xml.erb'
  owner '7days'
  group '7days'
  sensitive true
  variables(
    env: node.chef_environment,
    serverpassword: chef_vault_item('7dtdserver', 'serverpassword')
  )
end

execute 'start_server' do
  user '7days'
  group '7days'
  command 'screen -dmS 7daysded /home/7days/steamcmd/7daysded/startserver.sh -configfile=serverconfig.xml'
  not_if 'ps cax | grep startserver.sh'
end
