ESX = nil
local wzial = false
local delete = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(100)
	end

	ESX.PlayerData = ESX.GetPlayerData()
	Blips()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	Blips()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
	wpracy = false
	Blips()
end)

function Blips()
if Config.Blip then
if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == "ambulance" then
        if Config.EMS then
            --    local EMS = AddBlipForCoord(Config.PosEMS.x, Config.PosEMS.y, Config.PosEMS.z)
                SetBlipSprite(EMS, 43)
                SetBlipScale  (EMS, 1.0)
                SetBlipColour(EMS, 2)
                SetBlipAsShortRange(EMS, true)
                BeginTextCommandSetBlipName("STRING")
                AddTextComponentString("Helicoptère médical")
                EndTextCommandSetBlipName(EMS)
end
end
if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == "police" then
        if Config.EMS then
      --  local LSPD = AddBlipForCoord(Config.PosLSPD.x, Config.PosLSPD.y, Config.PosLSPD.z)
        SetBlipSprite(LSPD, 43)
        SetBlipScale  (LSPD, 1.0)
        SetBlipColour(LSPD, 3)
        SetBlipAsShortRange(LSPD, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Helicoptère police")
        EndTextCommandSetBlipName(LSPD)
        end
end
end
end

Citizen.CreateThread(function()
        while true do
                Citizen.Wait(7)
if wzial then
Citizen.Wait(Config.Delay * 60000)
wzial = false
end
end
end)

Citizen.CreateThread(function()
        while true do
                Citizen.Wait(7)
                local ped = PlayerPedId()
                local pos = GetEntityCoords(ped)
                local delay = Config.Delay

        if Config.LSPD then
        if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == "police" then
                if GetDistanceBetweenCoords(pos, Config.PosLSPD.x, Config.PosLSPD.y, Config.PosLSPD.z,  true) < 20 then
                        DrawMarker(Config.MarkerType, Config.PosLSPD.x, Config.PosLSPD.y, Config.PosLSPD.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
                        ESX.Game.Utils.DrawText3D({ x = Config.PosLSPD.x, y = Config.PosLSPD.y, z = Config.PosLSPD.z + 1 }, '~h~~b~[E] ~w~Prendre un hélicoptère', 0.8)
                end
                if GetDistanceBetweenCoords(pos, Config.PosLSPD.x, Config.PosLSPD.y, Config.PosLSPD.z,  true) < 3 then
                        if IsControlJustReleased(0, Config.Przycisk) then
                                if not wzial then
                                ESX.ShowNotification("~g~L'hélicoptère sera bientôt disponible ..")
                                Citizen.Wait(Config.Czas * 1000)
                                DoScreenFadeOut(500)
                                Citizen.Wait(500)
                                ESX.Game.SpawnVehicle(Config.Helikopter, { x = Config.HeliLSPD.x, y = Config.HeliLSPD.y, z = Config.HeliLSPD.z }, Config.HeliLSPD.h, function(heliLSPD)
                                        TaskWarpPedIntoVehicle(GetPlayerPed(-1), heliLSPD, -1)
wzial = true
delete = true
                                end)
Citizen.Wait(500)
                                DoScreenFadeIn(500)
else
ESX.ShowNotification("Vous avez déjà pris un hélicoptère. Tu dois attendre ~r~" .. delay .. " ~w~minutes")
end

                        end
                end
                end
        end
end
end)

Citizen.CreateThread(function()
        while true do
                Citizen.Wait(7)
                local ped = PlayerPedId()
                local pos = GetEntityCoords(ped)
                local delay = Config.Delay

        if Config.EMS then
        if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.name == "ambulance" then
                if GetDistanceBetweenCoords(pos, Config.PosEMS.x, Config.PosEMS.y, Config.PosEMS.z,  true) < 20 then
                        DrawMarker(Config.MarkerType, Config.PosEMS.x, Config.PosEMS.y, Config.PosEMS.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
                        ESX.Game.Utils.DrawText3D({ x = Config.PosEMS.x, y = Config.PosEMS.y, z = Config.PosEMS.z + 1 }, '~h~~b~[E] ~w~Prendre un hélicoptère', 0.8)
                end
                if GetDistanceBetweenCoords(pos, Config.PosEMS.x, Config.PosEMS.y, Config.PosEMS.z,  true) < 3 then
                        if IsControlJustReleased(0, Config.Przycisk) then
                                if not wzial then
                                ESX.ShowNotification("~g~L'hélicoptère sera bientôt disponible ..")
                                Citizen.Wait(Config.Czas * 1000)
                                DoScreenFadeOut(500)
                                Citizen.Wait(500)
                                ESX.Game.SpawnVehicle(Config.Helikopter, { x = Config.HeliEMS.x, y = Config.HeliEMS.y, z = Config.HeliEMS.z }, Config.HeliEMS.h, function(heliEMS)
                                        TaskWarpPedIntoVehicle(GetPlayerPed(-1), heliEMS, -1)
wzial = true
delete = true
                                end)
Citizen.Wait(500)
                                DoScreenFadeIn(500)
else
ESX.ShowNotification("Vous avez déjà pris un hélicoptère. Tu dois attendre ~r~" .. delay .. " ~w~minutes")
end

                        end
                end
                end
        end
end
end)

Citizen.CreateThread(function()
        while true do
                Citizen.Wait(7)
                local ped = PlayerPedId()
              local pos = GetEntityCoords(ped)

if delete then
DrawMarker(34, Config.DeleterEMS.x, Config.DeleterEMS.y, Config.DeleterEMS.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 2.5, 2.5, 2.5, 255, 0, 0, 100, false, true, 2, false, false, false, false)
if GetDistanceBetweenCoords(pos, Config.DeleterEMS.x, Config.DeleterEMS.y, Config.DeleterEMS.z,  true) < 3 then
if IsControlJustReleased(0, Config.Przycisk) then
ESX.Game.DeleteVehicle(GetVehiclePedIsIn(ped, false))
ESX.ShowNotification("~r~Vous avez remorqué un hélicoptère")
delete = false
end
end
end
end
end)

Citizen.CreateThread(function()
        while true do
                Citizen.Wait(7)
                local ped = PlayerPedId()
              local pos = GetEntityCoords(ped)

if delete then
DrawMarker(34, Config.DeleterLSPD.x, Config.DeleterLSPD.y, Config.DeleterLSPD.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 2.5, 2.5, 2.5, 255, 0, 0, 100, false, true, 2, false, false, false, false)
if GetDistanceBetweenCoords(pos, Config.DeleterLSPD.x, Config.DeleterLSPD.y, Config.DeleterLSPD.z,  true) < 3 then
if IsControlJustReleased(0, Config.Przycisk) then
ESX.Game.DeleteVehicle(GetVehiclePedIsIn(ped, false))
ESX.ShowNotification("~r~Vous avez remorqué un hélicoptère")
delete = false
end
end
end
end
end)
