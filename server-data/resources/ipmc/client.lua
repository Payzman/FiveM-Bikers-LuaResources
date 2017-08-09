RegisterNetEvent("SetPatch");

AddEventHandler("SetPatch",function(patchname)
	-- Code
	local player_id = PlayerPedId()
	local collection = "ipmc_overlays"
	local hash_collection = GetHashKey("ipmc_overlays")
	local hash_patch = GetHashKey(patchname)
	-- DEBUG START
	Citizen.Trace("Applying patch")
	Citizen.Trace("\tPlayer ID = "..player_id)
	Citizen.Trace("\tCollection = "..collection)
	Citizen.Trace("\t\tHash = "..hash_collection)
	Citizen.Trace("\tPatch Name = "..patchname)
	Citizen.Trace("\t\tHash = "..hash_patch)
	-- DEBUG END
	ApplyPedOverlay(player_id,hash_collection,hash_patch)
	-- Examples:
	--ApplyPedOverlay(PlayerPedId(),GetHashKey("new_overlays"),GetHashKey("violla_bage_M"))
	--ApplyPedOverlay(PlayerPedId(),GetHashKey("new_overlays"),GetHashKey("new_tattoo_01_M"))
	
	-- Maybe add some kind of "Overlay not found" message...?
end)

RegisterNetEvent("RemovePatches")

AddEventHandler("RemovePatches",function()
	Citizen.Trace("Removing Patches...");
	ClearPedDecorations(PlayerPedId())
end)