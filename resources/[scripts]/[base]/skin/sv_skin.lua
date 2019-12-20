ESX = nil


TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)
RegisterServerEvent('esx_skin:save')
AddEventHandler('esx_skin:save', function(skin)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	MySQL.Async.execute(
		'UPDATE users SET `skin` = @skin WHERE identifier = @identifier',
		{
			['@skin']       = json.encode(skin),
			['@identifier'] = xPlayer.identifier
		}
	)

end)

RegisterServerEvent('esx_skin:responseSaveSkin')
AddEventHandler('esx_skin:responseSaveSkin', function(skin)

	local file = io.open('resources/[esx]/esx_skin/skins.txt', "a")
	
	file:write(json.encode(skin) .. "\n\n")
	file:flush()
	file:close()
	
end)

ESX.RegisterServerCallback('esx_skin:getPlayerSkin', function(source, cb)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer ~= nil then
	MySQL.Async.fetchAll(
		'SELECT * FROM users WHERE identifier = @identifier',
		{
			['@identifier'] = xPlayer.identifier
		},
		function(users)

			local user = users[1]
			local skin = nil
			
			local jobSkin = {
				skin_male   = xPlayer.job.skin_male,
				skin_female = xPlayer.job.skin_female
			}

			if user.skin ~= nil then
				skin = json.decode(user.skin)
			end
			--print(json.encode(skin))
			cb(skin, jobSkin)

		end
	)
end

end)

-- Commands
TriggerEvent('es:addGroupCommand', 'skin2', 'admin', function(source, _, _)
	local _source = source
	TriggerClientEvent("dqP:newskin",_source)
--	TriggerClientEvent('esx_skin:openSaveableMenu', _source)
end, function(source, _, _)
local _source = source
	TriggerClientEvent('chatMessage', _source, "SYSTEM", {255, 0, 0}, 'Insufficient permissions!')
end, {help = 'skin'})


TriggerEvent('es:addGroupCommand', 'skin4', 'admin', function(source, _, _)
	local _source = source
--	TriggerClientEvent("dqP:newskin",_source)
	TriggerClientEvent('esx_skin:OpenSaveableMenu66', _source)
end, function(source, _, _)
local _source = source
	TriggerClientEvent('chatMessage', _source, "SYSTEM", {255, 0, 0}, 'Insufficient permissions!')
end, {help = 'skin'})

TriggerEvent('es:addGroupCommand', 'saveskin', 'admin', function(source, _, _)
	local _source = source
	TriggerClientEvent('esx_skin:requestSaveSkin', _source)
end, function(source, _, _)
local _source = source
	TriggerClientEvent('chatMessage', _source, "SYSTEM", {255, 0, 0}, "Insufficient Permissions.")
end, {help = 'saveskin'})

TriggerEvent('es:addGroupCommand', 'label', 'admin', function(source, args, _)
	local _source = source
--	TriggerClientEvent("dqP:newskin",_source)

	TriggerClientEvent('dqP:printLabel', _source,args)
end, function(source, _, _)
local _source = source
	TriggerClientEvent('chatMessage', _source, "SYSTEM", {255, 0, 0}, 'Insufficient permissions!')
end, {help = 'skin'})


