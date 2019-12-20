-- Script made by Havanna (http://steamcommunity.com/id/HavannaPC/)

AddEventHandler( "playerConnecting", function(name, setReason )
	local identifier = GetPlayerIdentifiers(source)[1]
	if not isWhiteListed(identifier) then
		setReason("Tu n'es pas whitelist, rend toi sur le discord pour plus d'infos.")
		print("(" .. identifier .. ") " .. name .. " tu as étais kick car tu n'es pas whitelist")
		CancelEvent()
    end
end)

-- Chat Command to add someone in WhiteList
TriggerEvent('es:addGroupCommand', 'wladd', "admin", function(source, args, user)
	if #args == 2 then
		if isWhiteListed(args[2]) then
			TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, args[2] .. " est déjà whitelist!")
		else
			addWhiteList(args[2])
			TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, args[2] .. " a été whitelist!")
		end
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Identifiant incorrect!")
	end
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Permissions insuffisante!")
end)

-- Chat Command to remove someone in WhiteList
TriggerEvent('es:addGroupCommand', 'wlremove', "admin", function(source, args, user)
	if #args == 2 then
		if isWhiteListed(args[2]) then
			removeWhiteList(args[2])
			TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, args[2] .. " n'est plus whitelist!")
		else
			TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, args[2] .. " n'est pas whitelist!")
		end
	else
		TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Identifiant incorrect!")
	end
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Permissions insuffisante!")
end)

function addWhiteList(identifier)
	MySQL.Sync.execute("INSERT INTO user_whitelist (`identifier`, `whitelisted`) VALUES (@identifier, @whitelisted)",{['@identifier'] = identifier, ['@whitelisted'] = 1})
end

function removeWhiteList(identifier)
	MySQL.Sync.execute("DELETE FROM user_whitelist WHERE identifier = @identifier", {['@identifier'] = identifier})
end

function isWhiteListed(identifier)
	local result = MySQL.Sync.fetchScalar("SELECT whitelisted FROM user_whitelist WHERE identifier = @username AND whitelisted = 1", {['@username'] = identifier})
	if result then
		return true
	end
	return false
end

-- Rcon command to add/remove someone in WhiteList
AddEventHandler('rconCommand', function(commandName, args)
	if commandName == 'wladd' then
		if #args ~= 1 then
			RconPrint("Usage: whitelistadd [identifier]\n")
			CancelEvent()
			return
		end
		if isWhiteListed(args[1]) then
			RconPrint(args[1] .. " est déjà whitelist !\n")
			CancelEvent()
		else
			addWhiteList(args[1])
			RconPrint(args[1] .. " a été whitelist !\n")
			CancelEvent()
		end
	elseif commandName == 'wlremove' then
		if #args ~= 1 then
			RconPrint("Usage: whitelistremove [identifier]\n")
			CancelEvent()
			return
		end
		if isWhiteListed(args[1]) then
			removeWhiteList(args[1])
			RconPrint(args[1] .. " n'est plus whitelist!\n")
			CancelEvent()
		else
			RconPrint(args[1] .. " n'est pas whitelist!\n")
			CancelEvent()
		end
	end
end)