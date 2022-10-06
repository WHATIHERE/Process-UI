client_script "@SCRIPTX-AC/core/client/netive.secure.lua"
client_script "@SCRIPTX-AC/core/client/stop.resource.lua"
client_script "@SCRIPTX-AC/export/secured.cl.lua"
server_script "@SCRIPTX-AC/export/secured.sv.lua"

version '1.1.1'
author 'JJ Copy X?'
description 'JJ AUTO PROCESS CUSTIOM SCRIPT'
fx_version 'bodacious'
games {'gta5'}
client_scripts {'config.lua', 'client/client.lua'}

server_scripts {'server/server.lua'}

ui_page 'html/index.html'

files {'html/index.html', 
'html/app.js', "html/img/*.png"}

