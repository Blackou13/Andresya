resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Location de vélos by MRV#7513'

client_scripts {
    'client/bike_cl.lua',
    'client/functions.lua',
    'config/config.lua'
}

server_scripts {
    'server/bike_sv.lua',
    'config/config.lua'
}

dependencies {
    'es_extended',
    'essentialmode',
    'esx_menu_default'
}
