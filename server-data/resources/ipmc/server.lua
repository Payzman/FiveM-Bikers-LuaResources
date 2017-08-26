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

RegisterNetEvent("Server:HttpGet")

AddEventHandler("Server:HttpGet",function(url,reason)
	PerformHttpRequest(url, function(err, text, headers)
		--print(text);
		var = json.decode(text);
		--print(var);
		-- send to IPMCDatabase
		TriggerEvent("Server:HttpResponse",var,reason)
	end, 'GET', '', {["Content-Type"] = 'application/json'})
end)

RegisterNetEvent("Server:HttpPut")

AddEventHandler("Server:HttpPut",function(url, data, reason)
	encoded = json.encode(data);
	PerformHttpRequest(url, function(err, text, headers)
		--print(text);
		var = json.decode(text);
		--print(var);
		-- send to IPMCDatabase
		TriggerEvent("Server:HttpResponse",var,reason)
	end, 'PUT', encoded, {["Content-Type"] = 'application/json'})
end)

-- This one should handle the same event as in hardcap just triggering another event on my C# script.
RegisterNetEvent('hardcap:playerActivated')
AddEventHandler('hardcap:playerActivated', function()
    TriggerEvent('Server:playerConnected',source)
end)