ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

RegisterServerEvent('esx_gym:hireBmx')
AddEventHandler('esx_gym:hireBmx', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 50) then
		xPlayer.removeMoney(50)
			
		notification("Tu as loue un ~g~BMX")
	else
		notification("Tu as volé le vélo parce que tu n'avais pas assez de ~r~money")
	end	
end)

RegisterServerEvent('esx_gym:hireCruiser')
AddEventHandler('esx_gym:hireCruiser', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 50) then
		xPlayer.removeMoney(50)
			
		notification("Tu as loué un ~g~CRUISER")
	else
		notification("Tu as volé le vélo parce que tu n'avais pas assez de ~r~money")
	end	
end)

RegisterServerEvent('esx_gym:hireFixter')
AddEventHandler('esx_gym:hireFixter', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 50) then
		xPlayer.removeMoney(50)
			
		notification("Tu as loué un ~g~FIXTER")
	else
		notification("Tu as volé le vélo parce que tu n'avais pas assez de ~r~money")
	end	
end)

RegisterServerEvent('esx_gym:hireScorcher')
AddEventHandler('esx_gym:hireScorcher', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 50) then
		xPlayer.removeMoney(50)
			
		notification("Tu as loué un ~g~SCORCHER")
	else
		notification("Tu as volé le vélo parce que tu n'avais pas assez de ~r~money")
	end	
end)

RegisterServerEvent('esx_gym:checkChip')
AddEventHandler('esx_gym:checkChip', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local oneQuantity = xPlayer.getInventoryItem('gym_membership').count
	
	if oneQuantity > 0 then
		TriggerClientEvent('esx_gym:trueMembership', source) -- true
	else
		TriggerClientEvent('esx_gym:falseMembership', source) -- false
	end
end)


RegisterServerEvent('esx_gym:buyMembership')
AddEventHandler('esx_gym:buyMembership', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 500) then
		xPlayer.removeMoney(500)
		
		xPlayer.addInventoryItem('gym_membership', 1)		
		notification("Vous avez acheté un ~g~abonnement")
		
		TriggerClientEvent('esx_gym:trueMembership', source) -- true
	else
		notification("Vous n'avez pas assez ~r~money")
	end	
end)


RegisterServerEvent('esx_gym:buyProteinshake')
AddEventHandler('esx_gym:buyProteinshake', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 20) then
		xPlayer.removeMoney(20)
		
		xPlayer.addInventoryItem('protein_shake', 1)
		
		notification("Vous avez acheté des ~g~protéines")
	else
		notification("Vous n'avez pas assez de ~r~money")
	end	
end)

ESX.RegisterUsableItem('protein_shake', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('protein_shake', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 750000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, 'Vous avez bu des ~g~protéines')

end)

RegisterServerEvent('esx_gym:buyWater')
AddEventHandler('esx_gym:buyWater', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 5) then
		xPlayer.removeMoney(5)
		
		xPlayer.addInventoryItem('water', 1)
		
		notification("Vous venez d'acheter de l' ~g~eau")
	else
		notification("Vous n'avez de ~r~money")
	end		
end)

RegisterServerEvent('esx_gym:buySportlunch')
AddEventHandler('esx_gym:buySportlunch', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 50) then
		xPlayer.removeMoney(50)
		
		xPlayer.addInventoryItem('sportlunch', 1)
		
		notification("Vous venez d'acheter un ~g~déjeuner sportif")
	else
		notification("Vous n'avez pas assez de ~r~money")
	end		
end)

ESX.RegisterUsableItem('sportlunch', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sportlunch', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 800000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, 'Vous avez mangé un ~g~déjeuner sportif')

end)

RegisterServerEvent('esx_gym:buyPowerade')
AddEventHandler('esx_gym:buyPowerade', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	if(xPlayer.getMoney() >= 15) then
		xPlayer.removeMoney(15)
		
		xPlayer.addInventoryItem('powerade', 1)
		
		notification("Vous venez d'acheter une ~g~powerade")
	else
		notification("Vous n'avez pas assez de ~r~money")
	end		
end)

ESX.RegisterUsableItem('powerade', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('powerade', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 800000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, 'Vous avez bu une ~g~powerade')

end)

-- FUNCTIONS IN THE FUTURE (COMING SOON...)

--RegisterServerEvent('esx_gym:trainArms')
--AddEventHandler('esx_gym:trainArms', function()
	
--end)

--RegisterServerEvent('esx_gym:trainChins')
--AddEventHandler('esx_gym:trainArms', function()
	
--end)

--RegisterServerEvent('esx_gym:trainPushups')
--AddEventHandler('esx_gym:trainPushups', function()
	
--end)

--RegisterServerEvent('esx_gym:trainYoga')
--AddEventHandler('esx_gym:trainYoga', function()
	
--end)

--RegisterServerEvent('esx_gym:trainSitups')
--AddEventHandler('esx_gym:trainSitups', function()
	
--end)

function notification(text)
	TriggerClientEvent('esx:showNotification', source, text)
end
