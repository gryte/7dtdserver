# wget is installed
describe package('wget') do
  it { should be_installed }
end

# downloads directory exists
describe directory('/.downloads') do
  it { should be_directory }
end

# 7days user exists
describe user('7days') do
  it { should exist }
  its('group') { should eq '7days' }
  its('home') { should eq '/home/7days' }
  its('shell') { should eq '/bin/bash' }
end

# 7days user exists
describe group('7days') do
  it { should exist }
end

# /home/7days directory exists
describe directory('/home/7days') do
  it { should be_directory }
end

# screen is installed
describe package('screen') do
  it { should be_installed }
end

# steamcmd package exists
describe file('/.downloads/steamcmd_linux.tar.gz') do
  it { should be_file }
end

# glibc.i686 is installed
describe command('yum list glibc.i686') do
  its('stdout') { should match('glibc\.i686') }
end

# libstdc++.i686 is installed
describe command('yum list libstdc++.i686') do
  its('stdout') { should match('libstdc\+\+\.i686') }
end

# steamcmd directory exists
describe directory('/home/7days/steamcmd') do
  it { should be_directory }
  it { should be_owned_by '7days' }
  it { should be_grouped_into '7days' }
end

# steamcmd opened package exists
describe file('/home/7days/steamcmd/steamcmd.sh') do
  it { should be_file }
  it { should be_owned_by '7days' }
  it { should be_grouped_into '7days' }
end

# 7daysded directory exists
describe directory('/home/7days/steamcmd/7daysded') do
  it { should be_directory }
  it { should be_owned_by '7days' }
  it { should be_grouped_into '7days' }
end

# startserver.sh script exists
describe file('/home/7days/steamcmd/7daysded/startserver.sh') do
  it { should be_file }
  it { should be_owned_by '7days' }
  it { should be_grouped_into '7days' }
end

# serverconfig.xml file exists
describe file('/home/7days/steamcmd/7daysded/serverconfig.xml') do
  it { should be_file }
  it { should be_owned_by '7days' }
  it { should be_grouped_into '7days' }
  its('content') { should match '<property name=\"ServerIsPublic\".*value=\"false\"' }
  its('content') { should match '<property name=\"TelnetEnabled\".*value=\"false\"' }
end

# startserver.sh process is running
describe processes('startserver.sh') do
  its('states') { should eq ['Ss+'] }
  its('users') { should eq ['7days'] }
end
