ESX               = nil


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local TeleportPublic = {

	--["Brinks"] = {
		--positionFrom = { ['x'] = 10.212, ['y'] = -667.823, ['z'] = 33.489, nom = "Descendre - Brinks"},
		--positionTo = { ['x'] = 0.956, ['y'] = -703.009, ['z'] = 16.221, nom = "Monter - Brinks"},
	--},
	
	["Journaliste"] = {
		positionFrom = { ['x'] = -902.24, ['y'] = -225.44, ['z'] = 40.02, nom = "Monter - WeazelNews"},
		positionTo = { ['x'] = -78.020, ['y'] = -833.639, ['z'] = 243.385, nom = "Descendre - WeazelNews"},
	},

	["Palace1"] = {
		positionFrom = { ['x'] = -430.18, ['y'] = 261.71, ['z'] = 83.00, nom = "Entrer - The Palace"},
		positionTo = { ['x'] = -1569.37, ['y'] = -3017.53, ['z'] = -74.40, nom = "Sortir - The Palace"},
	},

	["Palace2"] = {
		positionFrom = { ['x'] = -1582.18, ['y'] = -3018.41, ['z'] = -79.00, nom = "Entrer - Caisse"},
		positionTo = { ['x'] = -1572.99, ['y'] = -3014.77, ['z'] = -74.40, nom = "Sortir - The Palace"},
	},

	["Prison"] = {
		positionFrom = { ['x'] = 1027.66, ['y'] = -3100.94, ['z'] = -38.99, nom = "Sortir - Cour Prison"},
		positionTo = { ['x'] = 1688.65, ['y'] = 2528.84, ['z'] = 45.60, nom = "Entrer - Entrepôt Travail"},
	},
	
	
	["Hopital"] = {
		positionFrom = { ['x'] = 325.49, ['y'] = -598.69, ['z'] = 43.29, nom = "Monter - Toit"},
		positionTo = { ['x'] = 338.33, ['y'] = -584.30, ['z'] = 74.16, nom = "Descendre - Hopital"},
	},

	["Justice1"] = {
		positionFrom = { ['x'] = -143.7472, ['y'] = -574.5386, ['z'] = 32.4201, nom = "Salle Jugement"},
		positionTo = { ['x'] = -130.6951, ['y'] = -628.9931, ['z'] = 176.6864, nom = "Sous-Sol"},
	},

	["Justice2"] = {
		positionFrom = { ['x'] = -115.5963, ['y'] = -560.4030, ['z'] = 176.6766, nom = "Entrée Extérieur"},
		positionTo = { ['x'] = -125.0888, ['y'] = -638.2144, ['z'] = 40.4911, nom = "Salle de Délibération"},
	},

	["Justice3"] = {
		positionFrom = { ['x'] = -128.9550, ['y'] = -648.3284, ['z'] = 40.5008, nom = "Etude"},
		positionTo = { ['x'] = -175.556, ['y'] = -581.7746, ['z'] = 180.3726, nom = "Entrée extérieur"},
	},
	

	["Taxi"] = {
		positionFrom = { ['x'] = 894.87, ['y'] = -179.3807, ['z'] = 74.70, nom = "Entrer - Bureau Taxi"},
		positionTo = { ['x'] = -147.73, ['y'] = -962.516, ['z'] = 219.1265, nom = "Sortir - Bureau Taxi"},
	},

}

local TeleportSecret = {

	--["WeedEntrepot"] = {
	--positionFrom = { ['x'] = 1967.047, ['y'] = 4634.307, ['z'] = 41.101, nom = "Entrer - Entrepôt de Weed"},
	--positionTo = { ['x'] = 1066.015, ['y'] = -3183.379, ['z'] = -39.163, nom = "Sortir - Entrepôt de Weed"},
	--}, 

	--["BratvaHouse"] = {
	--	positionFrom = { ['x'] = 1394.731, ['y'] = 1141.807, ['z'] = 114.617, nom = "Entrer - Villa de la Bratva"},
	--	positionTo = { ['x'] = 1396.925, ['y'] = 1141.705, ['z'] = 114.333, nom = "Sortir - Villa de la Bratva"},
	--},

	--["CocaineEntrepot"] = {
	--positionFrom = { ['x'] = -277.701, ['y'] = 2205.501, ['z'] = 130.399, nom = "Entrer - Entrepôt de Cocaïne"},
	--positionTo = { ['x'] = 1088.595, ['y'] = -3188.080, ['z'] = -38.993, nom = "Sortir - Entrepôt de Cocaïne"},
	--},

	--["CrewHouse"] = {
	--	positionFrom = { ['x'] = 1013.822, ['y'] = 2905.565, ['z'] = 41.486, nom = "Entrer - Bunker"},
	--	positionTo = { ['x'] = 1009.643, ['y'] = 2905.961, ['z'] = 34.720, nom = "Sortir - Bunker"},
	--},

	--["CashEntrepot"] = {
		--positionFrom = { ['x'] = 1114.4803, ['y'] = -2273.5061, ['z'] = 30.1654, nom = "Entrer - Fabrique d'Argent"},
		--positionTo = { ['x'] = 1138.164, ['y'] = -3198.714, ['z'] = -39.665, nom = "Sortir - Fabrique d'Argent"},
	--}
	
}

local TeleportMamas = {

	--["MamasOffice"] = {
		--positionFrom = { ['x'] = -1386.109, ['y'] = -627.435, ['z'] = 30.819, nom = "Entrer - Bureau du Bahama Mamas"},
		--positionTo = { ['x'] = -1392.74, ['y'] = -480.18, ['z'] = 72.14, nom = "Sortir - Bureau du Bahama Mamas"},
	--}

}

local TeleportBlackRiders = {

	--["BlackRiders"] = {
		--positionFrom = { ['x'] = 707.92, ['y'] = -1107.22, ['z'] = 23.312, nom = "Entrer - Garage des Black Riders"},
		--positionTo = { ['x'] = 1110.293, ['y'] = -3166.644, ['z'] = -37.918, nom = "Sortir - Garage des Black Riders"},
	--}

}

local TeleportVehicule = {

	--["Garage"] = {
		--positionFrom = { ['x'] = 195.749, ['y'] = -1497.772, ['z'] = 29.141, ['heading'] = 46.89, nom = "Entrer - Garage Véhicule"},
		--positionTo = { ['x'] = 971.022, ['y'] = -2990.074, ['z'] = -39.646, ['heading'] = 188.56, nom = "Sortir - Garage Véhicule"},
	--}

}


Drawing = setmetatable({}, Drawing)
Drawing.__index = Drawing


function Drawing.draw3DText(x,y,z,textInput,fontId,scaleX,scaleY,r, g, b, a)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*20
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov

    SetTextScale(scaleX*scale, scaleY*scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextColour(r, g, b, a)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x,y,z+2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2)
		local pos = GetEntityCoords(GetPlayerPed(-1), true)
		
		for k, j in pairs(TeleportPublic) do
		
			if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 10.0)then
				DrawMarker(27, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1.0, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.0001, 0, 155, 255, 160, 0, 0, 0,0)
				if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 3.0)then
					Drawing.draw3DText(j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1.5, j.positionFrom.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 2.0)then
						DisplayHelpText('~INPUT_CONTEXT~ Pour ~b~'.. j.positionFrom.nom)
						if IsControlJustPressed(1, 38) then
							DoScreenFadeOut(1000)
							Citizen.Wait(2000)
							SetEntityCoords(GetPlayerPed(-1), j.positionTo.x, j.positionTo.y, j.positionTo.z - 1)
							DoScreenFadeIn(1000)
						end
					end
				end
			end
			
			if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 10.0)then
				DrawMarker(27, j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.0, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.0001, 0, 155, 255, 160, 0, 0, 0,0)
				if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 5.0)then
					Drawing.draw3DText(j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.5, j.positionTo.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 2.0)then
						DisplayHelpText('~INPUT_CONTEXT~ Pour ~b~'.. j.positionTo.nom)
						if IsControlJustPressed(1, 38) then
							DoScreenFadeOut(1000)
							Citizen.Wait(2000)
							SetEntityCoords(GetPlayerPed(-1), j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1)
							DoScreenFadeIn(1000)
						end
					end
				end
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2)
		local pos = GetEntityCoords(GetPlayerPed(-1), true)
		
		for k, j in pairs(TeleportSecret) do
		
			if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 10.0)then
				--DrawMarker(1, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 255, 255, 255,255, 0, 0, 0,0)
				--DrawMarker(3, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.0001, 0, 155, 255, 160, 0, 0, 0,0)
				--if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 5.0)then
					--Drawing.draw3DText(j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.5, j.positionTo.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 2.0)then
						DisplayHelpText('~INPUT_CONTEXT~ Pour ~b~'.. j.positionFrom.nom)
						if IsControlJustPressed(1, 38) then
							DoScreenFadeOut(1000)
							Citizen.Wait(2000)
							SetEntityCoords(GetPlayerPed(-1), j.positionTo.x, j.positionTo.y, j.positionTo.z - 1)
							DoScreenFadeIn(1000)
						end
					end
				--end
			end
			
			if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 10.0)then
				--DrawMarker(1, j.positionTo.x, j.positionTo.y, j.positionTo.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 255, 255, 255,255, 0, 0, 0,0)
				--DrawMarker(3, j.positionTo.x, j.positionTo.y, j.positionTo.z, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.0001, 0, 155, 255, 160, 0, 0, 0,0)
				--if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 5.0)then
					--Drawing.draw3DText(j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.5, j.positionTo.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 2.0)then
						DisplayHelpText('~INPUT_CONTEXT~ Pour ~b~'.. j.positionTo.nom)
						if IsControlJustPressed(1, 38) then
							DoScreenFadeOut(1000)
							Citizen.Wait(2000)
							SetEntityCoords(GetPlayerPed(-1), j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1)
							DoScreenFadeIn(1000)
						end
					end
				--end
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local coords = GetEntityCoords(GetPlayerPed(-1), true)
		for k, j in pairs(TeleportMamas) do
		
			if(Vdist(coords.x, coords.y, coords.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 10.0) then
				DrawMarker(27, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 0.99, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 0, 155, 255, 165, 0, 0, 0,0)
				if(Vdist(coords.x, coords.y, coords.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 5.0)then
					Drawing.draw3DText(j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1.5, j.positionFrom.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(coords.x, coords.y, coords.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 1.0) then
						DisplayHelpText('~INPUT_CONTEXT~ Pour ~b~'.. j.positionFrom.nom)
						if IsControlJustPressed(1, 38) then
							DoScreenFadeOut(250)
							positionFromMamas()
							Citizen.Wait(1000)
							SetEntityCoords(GetPlayerPed(-1), j.positionTo.x, j.positionTo.y, j.positionTo.z - 1)

							DoScreenFadeIn(250)
						end
					end
				end
			end
			
			if(Vdist(coords.x, coords.y, coords.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 10.0) then
				DrawMarker(27, j.positionTo.x, j.positionTo.y, j.positionTo.z - 0.99, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, .801, 0, 155, 255, 165, 0, 0, 0,0)
				if(Vdist(coords.x, coords.y, coords.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 5.0)then
					Drawing.draw3DText(j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.5, j.positionTo.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(coords.x, coords.y, coords.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 1.0) then
						DisplayHelpText('~INPUT_CONTEXT~ Pour ~b~'.. j.positionTo.nom)
						if IsControlJustPressed(1, 38) then
							DoScreenFadeOut(250)
							Citizen.Wait(1000)
							SetEntityCoords(GetPlayerPed(-1), j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1)
							positionToMamas()
							DoScreenFadeIn(250)
						end
					end
				end
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local coords = GetEntityCoords(GetPlayerPed(-1), true)
		for k, j in pairs(TeleportBlackRiders) do
		
			if(Vdist(coords.x, coords.y, coords.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 1.0) then
				DisplayHelpText('~INPUT_CONTEXT~ Pour ~b~'.. j.positionFrom.nom)
					if IsControlJustPressed(1, 38) then
						DoScreenFadeOut(250)
						positionFromBlackRiders()
						Citizen.Wait(1000)
						SetEntityCoords(GetPlayerPed(-1), j.positionTo.x, j.positionTo.y, j.positionTo.z - 1)
						DoScreenFadeIn(250)
					end
			end
			
			if(Vdist(coords.x, coords.y, coords.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 1.0) then
				DisplayHelpText('~INPUT_CONTEXT~ Pour ~b~'.. j.positionTo.nom)
					if IsControlJustPressed(1, 38) then
						DoScreenFadeOut(250)
						Citizen.Wait(1000)
						SetEntityCoords(GetPlayerPed(-1), j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1)
						positionToBlackRiders()
						DoScreenFadeIn(250)
					end
			end
		end
	end
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local playerPed = GetPlayerPed(-1)
		local coords = GetEntityCoords(GetPlayerPed(-1), true)
		local vehicle = GetVehiclePedIsIn(playerPed,  false)
		local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)
		for k, j in pairs(TeleportVehicule) do
		
			if(Vdist(coords.x, coords.y, coords.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 20.0) then
				DrawMarker(0, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 0.99, 0, 0, 0, 0, 0, 0, 3.0, 3.0, 0.5, 0, 165, 255, 165, 0, 0, 0,0)
				if(Vdist(coords.x, coords.y, coords.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 5.0)then
					Drawing.draw3DText(j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1.5, j.positionFrom.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(coords.x, coords.y, coords.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 1.0) then
						DisplayHelpText('~INPUT_CONTEXT~ Pour ~b~'.. j.positionFrom.nom)
						if IsControlJustPressed(1, 38) and IsPedInAnyVehicle(playerPed,  true) then
							local spawnCoords  = {
								x = j.positionTo.x,
								y = j.positionTo.y,
								z = j.positionTo.z
							}

							DoScreenFadeOut(250)
							Citizen.Wait(1000)
							positionFromMecano()

							ESX.Game.DeleteVehicle(vehicle)
							ESX.Game.Teleport(playerPed, spawnCoords, function()
								ESX.Game.SpawnLocalVehicle(vehicleProps.model, spawnCoords, j.positionTo.heading, function(vehicle)
									TaskWarpPedIntoVehicle(playerPed,  vehicle,  -1)
									ESX.Game.SetVehicleProperties(vehicle, vehicleProps)
								end)
							end)

							DoScreenFadeIn(250)

						elseif IsControlJustPressed(1, 38) and not IsPedInAnyVehicle(playerPed,  true) then

							DoScreenFadeOut(250)
							Citizen.Wait(1000)
							positionFromMecano()
							SetEntityCoords(GetPlayerPed(-1), j.positionTo.x, j.positionTo.y, j.positionTo.z - 1)
							DoScreenFadeIn(250)

						end
					end
				end
			end
			
			if(Vdist(coords.x, coords.y, coords.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 20.0) then
				DrawMarker(0, j.positionTo.x, j.positionTo.y, j.positionTo.z - 0.99, 0, 0, 0, 0, 0, 0, 3.0, 3.0, 0.5, 0, 165, 255, 165, 0, 0, 0,0)
				if(Vdist(coords.x, coords.y, coords.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 5.0)then
					Drawing.draw3DText(j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.5, j.positionTo.nom, 1, 0.2, 0.1, 255, 255, 255, 215)
					if(Vdist(coords.x, coords.y, coords.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 1.0) then
						DisplayHelpText('~INPUT_CONTEXT~ Pour ~b~'.. j.positionTo.nom)
						if IsControlJustPressed(1, 38) and IsPedInAnyVehicle(playerPed,  true) then
							local spawnCoords  = {
								x = j.positionFrom.x,
								y = j.positionFrom.y,
								z = j.positionFrom.z
							}

							DoScreenFadeOut(250)
							Citizen.Wait(1000)
							positionToMecano()

							ESX.Game.DeleteVehicle(vehicle)
							ESX.Game.Teleport(playerPed, spawnCoords, function()
								ESX.Game.SpawnLocalVehicle(vehicleProps.model, spawnCoords, j.positionFrom.heading, function(vehicle)
									TaskWarpPedIntoVehicle(playerPed,  vehicle,  -1)
									ESX.Game.SetVehicleProperties(vehicle, vehicleProps)
								end)
							end)

							DoScreenFadeIn(250)

						elseif IsControlJustPressed(1, 38) and not IsPedInAnyVehicle(playerPed,  true) then

							DoScreenFadeOut(250)
							Citizen.Wait(1000)
							positionToMecano()
							SetEntityCoords(GetPlayerPed(-1), j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1)
							DoScreenFadeIn(250)

						end
					end
				end
			end
		end
	end
end)