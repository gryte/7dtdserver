#
#    manage serverconfig.xml settings
#

# Port you want the server to listen on.
# Default is 26900
default['serversettings']['serverport'] = '26900'

# Should this server register to master server
# Default is false
default['serversettings']['serverispublic'] = 'false'

# Whatever you want the name to be.
# Default is My Game Host
default['serversettings']['servername'] = 'My Game Host'

# Maximum Concurrent Players
# Default is 8
default['serversettings']['servermaxplayercount'] = '8'

# Whatever you want the description to be.
# Default is A 7 Days to Die server
default['serversettings']['serverdescription'] = 'A 7 Days to Die server'

# Navezgane, MP Wasteland Horde, MP Wasteland Skirmish, MP Wasteland War, Random Gen
# Default is Navezgane
default['serversettings']['gameworld'] = 'Navezgane'

# Whatever you want the game name to be THIS CONTROLS THE RANDOM GENERATION SEED
# Default is My Game
default['serversettings']['gamename'] = 'My Game'

# Enable/Disable the control panel
# Default is false
default['serversettings']['controlpanelenabled'] = 'false'

# Port of the control panel webpage
# Default is 8080
default['serversettings']['controlpanelport'] = '8080'

# Enable/Disable the telnet
# Default is false
default['serversettings']['telnetenabled'] = 'false'
