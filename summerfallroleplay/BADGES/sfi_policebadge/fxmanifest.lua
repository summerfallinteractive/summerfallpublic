fx_version 'bodacious'
game 'gta5'
author 'Barna Bence'
description 'Badge for Summerfall Roleplay Police job'
version '1.1'

ui_page {
    'html/ui.html',
}


shared_scripts {
    'config.lua',
}


client_scripts {
    'client/client.lua',
}


server_scripts {
    'server/server.lua',
	'config.lua'
}


files {
	'html/ui.html',
	'html/badges/*.png',
	'html/css/*.css',
	'html/js/*.js',

}