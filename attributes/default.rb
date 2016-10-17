#
#    manage serverconfig.xml settings
#

# Port you want the server to listen on.
# Default is 26900
default['7dtdserver']['serversettings']['serverport'] = '26900'

# Should this server register to master server
# Default is false
default['7dtdserver']['serversettings']['serverispublic'] = 'false'

# Whatever you want the name to be.
# Default is My Game Host
default['7dtdserver']['serversettings']['servername'] = 'My Game Host'

# Maximum Concurrent Players
# Default is 8
default['7dtdserver']['serversettings']['servermaxplayercount'] = '8'

# Whatever you want the description to be.
# Default is A 7 Days to Die server
default['7dtdserver']['serversettings']['serverdescription'] = 'A 7 Days to Die server'

# Navezgane, MP Wasteland Horde, MP Wasteland Skirmish, MP Wasteland War, Random Gen
# Default is Navezgane
default['7dtdserver']['serversettings']['gameworld'] = 'Navezgane'

# Whatever you want the game name to be THIS CONTROLS THE RANDOM GENERATION SEED
# Default is My Game
default['7dtdserver']['serversettings']['gamename'] = 'My Game'

# Enable/Disable the control panel
# Default is false
default['7dtdserver']['serversettings']['controlpanelenabled'] = 'false'

# Port of the control panel webpage
# Default is 8080
default['7dtdserver']['serversettings']['controlpanelport'] = '8080'

# Enable/Disable the telnet
# Default is false
default['7dtdserver']['serversettings']['telnetenabled'] = 'false'

#
#    manage test flag
#

# Prevent startserver.sh from running in kitchen vagrant run
# Defaul is false
default['7dtdserver']['vagrant'] = false
