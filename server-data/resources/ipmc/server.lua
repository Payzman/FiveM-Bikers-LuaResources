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

RegisterNetEvent("httpGet")

AddEventHandler("httpGet",function(Source)
	print("Something happening here")
	PerformHttpRequest("http://google.com", function(err, text, headers)
		print("Does actually work!")
	end, 'GET', '', {["Content-Type"] = 'application/json'})
end)