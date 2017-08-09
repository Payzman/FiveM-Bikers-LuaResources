--AddEventHandler("chatMessage",function(Source,Name,Msg)
--	print("DEBUG:someone wrote a message "..Msg);
--	local args = stringsplit(Msg, " ");
--	if (args[1] == "/setPatch") then
--		print("DEBUG: He wants to set his patch");
--		TriggerClientEvent("SetPatch",Source,args[2])
--		CancelEvent()
--	elseif (args[1] == "/removePatches") then
--		print("DEBUG: Remove all Patches");
--		TriggerClientEvent("RemovePatches",Source,args[2])
--		CancelEvent()
--	end
--end)
--
--function stringsplit(self, delimiter)
--	if delimiter == nil then
--		delimiter = "%s"
--	end
--	
--	local t={} ; i=1
--	for str in string.gmatch(self, "([^"..delimiter.."]+)") do
--		t[i] = str
--		i = i+1
--	end
--	
--	return t
--end

RegisterNetEvent("IPMC:HttpGet")

AddEventHandler("IPMC:HttpGet",function(url)
	PerformHttpRequest(url, function(err, text, headers)
		print(text);
		var = json.decode(text);
		print(var);
		-- send to IPMCDatabase
	end, 'GET', '', {["Content-Type"] = 'application/json'})
end)