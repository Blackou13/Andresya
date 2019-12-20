function getIdentity(source)
	local identifier = GetPlayerIdentifiers(source)[1]
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height']
			
		}
	else
		return nil
	end
end

AddEventHandler('es:invalidCommandHandler', function(source, command_args, user)
	CancelEvent()
    TriggerClientEvent('chat:addMessage', source, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(115, 116, 119, 0.6); border-radius: 3px; margin-left: 0; margin-right: 0;"<i class="fas fa-exclamation-triangle"></i> ^3^*Commande invalide.^7 <br></div>',
        args = { }
    })
end, false)

AddEventHandler('chatMessage', function(source, name, message)
	if string.sub(message,1,string.len("/"))=="/" then
	else
		TriggerClientEvent("sendProximityMessage", -1, source, name, " " .. message)
	end
	CancelEvent()
end)

 RegisterCommand('tweet', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(6)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(28, 160, 242, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;"><i class="fab fa-twitter-square"></i> ^*@{0}:^r<br> {1}</div>',
        args = { fal, msg }
    })
end, false)


 RegisterCommand('darkweb', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(8)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(102, 0, 204, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;"><i class="fas fa-laptop"></i> ^*DarkWEB:^r<br> {1}</div>',
        args = { fal, msg }
    })
end, false)

 RegisterCommand('news', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(11)
    local name = getIdentity(source)
    fal = name.firstname .. " " .. name.lastname
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(16, 142, 0, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;"><i class="fas fa-bullhorn"></i> ^*{0} :<br> ^r{1}<br></div>',
        args = { fal, msg }
    })
end, false)

 RegisterCommand('ooc', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(5)
    local name = getIdentity(source)

    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(41, 41, 41, 0.7); border-radius: 3px; margin-left: 0; margin-right: 0;">{0}<i class="fas fa-globe-europe"></i> ^*{1}:^r<br> {2}</div>',
        args = { ''..source..' | ', playerName, msg }
    })
end, false)

 RegisterCommand('med', function(source, args, rawCommand)
    local name = getIdentity(source)
    local realName = name.firstname .. " " .. name.lastname
    TriggerClientEvent("sendProximityMessageMed", -1, source, realName, table.concat(args, " "))
end, false)

RegisterCommand('me', function(source, args, rawCommand)
    local name = getIdentity(source)
    local realName = name.firstname .. " " .. name.lastname
    TriggerClientEvent("sendProximityMessageMedd", -1, source, realName, table.concat(args, " "))
end, false)

RegisterCommand('do', function(source, args, rawCommand)
    local name = getIdentity(source)
    local realName = name.firstname .. " " .. name.lastname
    TriggerClientEvent("sendProximityMessageMeddd", -1, source, realName, table.concat(args, " "))
end, false)


function stringsplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end
