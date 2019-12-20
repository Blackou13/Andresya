--Written by Tościk#9715 do not reupload.




-------------------------------------------------------------------
local CenaJazdy = 3500   --<< cena za zaakceptowanie jazdy testowej
-------------------------------------------------------------------
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)
RegisterServerEvent('tostJazda:sprawdzforse')
AddEventHandler('tostJazda:sprawdzforse', function(opcja)

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local accountMoney = 0
	accountMoney = xPlayer.getAccount('bank').money
	
	if accountMoney < CenaJazdy then
		TriggerClientEvent('esx:showNotification', source, '~y~Vous avez besoin de ~g~'..CenaJazdy..'$ ~y~pour faire un essai.')
	else
	
		if opcja == '0' then
		TriggerClientEvent("tostJazda:wyborpojazdu", source)
		end
		
		if opcja == '1' then
		xPlayer.removeAccountMoney('bank', CenaJazdy)
		Wait(500)
		end
	end

end)
