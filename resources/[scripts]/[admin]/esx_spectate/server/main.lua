ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('es:addGroupCommand', 'spec', "mod", function(source, args, user)
	TriggerClientEvent('esx_spectate:spectate', source, target)
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Permissions Insuffisantes")
end)

ESX.RegisterServerCallback('esx_spectate:getPlayerData', function(source, cb, id)
	local xPlayer = ESX.GetPlayerFromId(id)
	cb(xPlayer)
end)

RegisterServerEvent('esx_spectate:kick')
AddEventHandler('esx_spectate:kick', function(target, msg)
	DropPlayer(target, msg)
end)