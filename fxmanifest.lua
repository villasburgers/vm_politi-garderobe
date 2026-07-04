fx_version 'cerulean'
game 'gta5'

author 'VM Store'
description 'Politi Garderobe lavet af villas.burgers.alt'
version '1.0.0'

dependencies {
    'ox_lib',
}

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
}

client_scripts {
    'client.lua',
}

server_scripts {
    'server.lua',
}
