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
  its('home') { should eq '/home/7days' }
  its('shell') { should eq '/bin/bash' }
end

# screen is installed
describe package('screen') do
  it { should be_installed }
end

# steamcmd exists
describe file('/.downloads/steamcmd_linux.tar.gz') do
  it { should be_file }
end

# glibc.i686 is installed
describe package('glibc.i686') do
  it { should be_installed }
end

# libstdc++.i686 is installed
describe package('libstdc++.i686') do
  it { should be_installed }
end
