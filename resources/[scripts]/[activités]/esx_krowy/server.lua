ESX 						   = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('wezmleko') 
AddEventHandler('wezmleko', function(ziemniak)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('mleko')

	if xItem.limit ~= -1 and (xItem.count + 1) > xItem.limit then
		TriggerClientEvent('esx:showNotification', source, ('~r~Vous avez déjà une limite'))
	else
		xPlayer.addInventoryItem(xItem.name, 1)
	end
end)
RegisterServerEvent('sprzedajmleko') 
AddEventHandler('sprzedajmleko', function()
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local jabka = xPlayer.getInventoryItem('mleko').count
    if jabka >= 1 then 

        local cena = 3
        TriggerClientEvent('freezeplayer12', _source)
        xPlayer.removeInventoryItem('mleko', ESX.Math.Round(jabka / 4))
        TriggerClientEvent('sprzedawanie:mleka', _source)
        Citizen.Wait(3000)
        xPlayer.removeInventoryItem('mleko', ESX.Math.Round(jabka / 4))
        TriggerClientEvent('sprzedawanie:mleka', _source)
        Citizen.Wait(3000)
        xPlayer.removeInventoryItem('mleko', ESX.Math.Round(jabka / 4))
        TriggerClientEvent('sprzedawanie:mleka', _source)
        Citizen.Wait(3000)
        local jabka2 = xPlayer.getInventoryItem('mleko').count
        xPlayer.removeInventoryItem('mleko', jabka2)
        TriggerClientEvent('sprzedawanie:mleka', _source)
        Citizen.Wait(3000)
        xPlayer.addMoney(jabka * cena)
        TriggerClientEvent('freezeplayer13', _source)
		TriggerClientEvent('esx:showNotification', _source, 'Je gagne~g~ '..ESX.Math.Round(jabka * cena)..'$~w~ en vendant '.. ESX.Math.Round(jabka) ..' ~y~lait')
    else
        TriggerClientEvent('esx:showNotification', _source, '~y~Vous n avez pas de lait')
    end
end)