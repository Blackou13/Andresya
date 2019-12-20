--[[ 
                 Menu Location
]]

function OpenLocationMenu()
    local elems = {
        {label = 'Choisir un vélo', value = 'choose_bike'}
}

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'menuPerso',{
	css = 'vehicle',
        title = 'Location',
        align = 'top-left',
        elements = elems
    },
    function(data, menu)
        if data.current.value == 'choose_bike' then 
            ChooseBike()
        end
    end,
    function(data, menu)
        menu.close()
    end)
end

--[[
    Fonction achat
]]

function SpawnBmx()
    TriggerServerEvent('buyBmx')
    ESX.ShowAdvancedNotification("Location de vélo", "Votre véhicule est en ~b~route~s~", "", "CHAR_BIKESITE", 1)
    Citizen.Wait(5000)
    spawnCar("bmx")
    ESX.ShowAdvancedNotification("Location de vélo", "Voilà votre ~b~véhicule~s~", "", "CHAR_BIKESITE", 1)
end

function SpawnCruiser()
    TriggerServerEvent('buyCruiser')
    ESX.ShowAdvancedNotification("Location de vélo", "Votre véhicule est en ~b~route~s~", "", "CHAR_BIKESITE", 1)
    Citizen.Wait(5000)
    spawnCar("cruiser")
    ESX.ShowAdvancedNotification("Location de vélo", "Voilà votre ~b~véhicule~s~", "", "CHAR_BIKESITE", 1)
end

function SpawnFixter()
    TriggerServerEvent('buyFixter')
    ESX.ShowAdvancedNotification("Location de vélo", "Votre véhicule est en ~b~route~s~", "", "CHAR_BIKESITE", 1)
    Citizen.Wait(5000)
    spawnCar("fixter")
    ESX.ShowAdvancedNotification("Location de vélo", "Voilà votre ~b~véhicule~s~", "", "CHAR_BIKESITE", 1)
end

--[[
    Fonction de spawn 
]]
function spawnCar(car)
    local car = GetHashKey(car)

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(0)
    end

    local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, -888.59, -147.22, 37.52, 0.0, true, false)
    SetEntityAsMissionEntity(vehicle, true, true)
end

--[[
    Menu choix de vélo
]]

function ChooseBike()
        local elems = {
            {label = 'BMX [10$]', value = 'bmx'},
            {label = 'Cruiser [20$]', value = 'cruiser'},
            {label = 'Fixter [30$]', value = 'fixter'}
        }
    
        ESX.UI.Menu.CloseAll()
    
        ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'menuPerso',{
            title = 'Location',
            align = 'top-left',
            elements = elems
        },
        function(data, menu)
            if data.current.value == 'bmx' then 
                SpawnBmx()
            end
            if data.current.value == 'cruiser' then 
                SpawnCruiser()
            end
            if data.current.value == 'fixter' then 
                SpawnFixter()
            end
    end,
    function(data, menu)
        menu.close()
    end)
end 

--[[
    Blips
]]

local blips = {
    {title="Location Vélo", colour=5, id=226, x = -897.16, y = -152.06, z = 36.53}
}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.9)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)

--[[
    Marker and help text
]]

local location = {
    {x = -897.16, y = -152.06, z = 36.53}
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(location) do
            DrawMarker(27, location[k].x, location[k].y, location[k].z, 0, 0, 0, 0, 0, 0, 2.001, 2.0001, 0.5001, 255, 236, 0, 500, 0, 0, 0, 0)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        for k in pairs(location) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, location[k].x, location[k].y, location[k].z)

            if dist <= 1.2 then
                ESX.ShowHelpNotification("~INPUT_TALK~ pour louer un ~b~vélo~s~")
				if IsControlJustPressed(1,51) then 
					OpenLocationMenu()
				end
            end
        end
    end
end)