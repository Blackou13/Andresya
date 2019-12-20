resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

description "Menu Perso No Brain"

---------------------------------------------------------------------------------------------------------------------------------------------------------
-- nb_menuperso
---------------------------------------------------------------------------------------------------------------------------------------------------------
client_script 'NativeUI.lua'
client_script 'config.lua'
client_script 'keycontrol.lua'
client_script 'client.lua'
client_script 'handsup.lua'
client_script 'pointing.lua'
client_script 'crouch.lua'
client_script 'limiteur.lua'


server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'server.lua'
}