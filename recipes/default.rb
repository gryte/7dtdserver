#
# Cookbook Name:: 7dtdserver
# Recipe:: default
#
# Copyright (c) 2016 Adam Linkous, All Rights Reserved.

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

# untar steamcmd into install directory
execute 'untar_steamcmd' do
  command 'tar xzf /.downloads/steamcmd_linux.tar.gz -C /home/7days/steamcmd'
  not_if { ::File.exist?('/home/7days/steamcmd/steamcmd.sh') }
  notifies :run, 'execute[chown_steamcmd]'
end

# chown steamcmd contents within install directory
execute 'chown_steamcmd' do
  command 'chown -R 7days:7days /home/7days/steamcmd/*.*'
  action :nothing
end
