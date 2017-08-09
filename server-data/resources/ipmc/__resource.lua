resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

files 
{
	'ipmc_overlays.xml',
	'shop_tatto.meta',
}

data_file 'PED_OVERLAY_FILE' 'ipmc_overlays.xml'
data_file 'TATTOO_SHOP_DLC_FILE' 'shop_tatto.meta'

--client_script 'client.lua'
server_script 'server.lua'
client_script 'nativeui.net.dll'
-- LOAD NATIVEUI BEFORE ALL OTHER DLLS!!!!!!!!ONEELVEN well at least if the use nativeui lol
client_script 'IPMCClientScript.net.dll'
server_script 'IPMCServerScript.net.dll'