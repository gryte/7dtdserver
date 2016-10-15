# download 7days app via steamcmd
execute '7daysded_steamcmd' do
  user '7days'
  group '7days'
  command '/home/7days/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/7days/steamcmd/7daysded +app_update 294420 +quit'
  action :run
end
