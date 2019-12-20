
----------------ponizej nazwa modelu do zrespienia przez skrypt---------------------
local pojazd1  = '17m760i'
local pojazd2  = '2015s3'
local pojazd3  = '208'
local pojazd4  = '370z'
local pojazd5  = '488'
local pojazd6  = '66fastback'
local pojazd7  = '720s'
local pojazd8  = '911tbs'
local pojazd9  = 'a8lfsi'
local pojazd10 = ''
local pojazd11 = ''
local pojazd12 = 'bdivo'
local pojazd13 = 'bmws'
local pojazd14 = 'brabus850'
local pojazd15 = 'c63'
local pojazd16 = 'c7'
local pojazd17 = 'cayenne'
local pojazd18 = 'contgt13'
local pojazd19 = ''
local pojazd20 = 'gle63c'
local pojazd21 = 'gtrnismo17'
local pojazd22 = 'gx460'
local pojazd23 = 'hondacivictr'
local pojazd24 = 'i8'
local pojazd25 = 'levante'
local pojazd26 = 'm2f22'
local pojazd27 = 'mk7pandem'
local pojazd28 = 'polo2018'
local pojazd29 = 'pturismo'
local pojazd30 = 'r8v10'
local pojazd31 = 'raptor2017'
local pojazd32 = 'regera'


local czasWynajmu = 160    ---<<czas jazdy próbnej w sekundach
local cenaJazdy = 3500 --<<< Cene za jazde testową musisz zmienić tutaj i w server.lau
------------------------koordynaty na marker do jazdy probnej------------------------
local wypozyczX = -24.04
local wypozyczY = -1076.96
local wypozyczZ =  27.54
-----------------------miejsce gdzie cie zrespi po zaakceptowaniu jazdy-----------------
local outsideX = -12.13
local outsideY = -1102.93
local outsideZ = 26.67
local headingO = 157.00
-------------------------------------------------------------------------------------
local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)
----------------
local wypozyczone
---------------
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

function hintToDisplay(text)
	SetTextComponentFormat("STRING")
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, wypozyczX, wypozyczY, wypozyczZ)

			if dist <= 20.0 then
			DrawMarker(25, wypozyczX, wypozyczY, wypozyczZ-0.98, 0, 0, 0, 0, 0, 0, 1.301, 1.3001, 1.3001, 0, 205, 50, 200, 0, 1, 0, 0)
			else
			Citizen.Wait(1000)
			end

            if dist <= 1.5 then
				DrawText3D(wypozyczX, wypozyczY, wypozyczZ, "~g~[E]~w~ Essai routier")
				if IsControlJustPressed(0, Keys['E']) then 
				TriggerServerEvent("tostJazda:sprawdzforse", '0')
				Citizen.Wait(500)
				end			
            end
        
end
end)


RegisterNetEvent('tostJazda:wyborpojazdu')
AddEventHandler('tostJazda:wyborpojazdu', function()
ESX.UI.Menu.Open(
	'default', GetCurrentResourceName(), 'tost_menu',
	{
		title    = 'Essai automobile: <font color=green><b>'..cenaJazdy..'$</font>',
		align    = 'center',
		elements = {
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd1))..'</font>', value = 'pojazd1'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd2))..'</font>', value = 'pojazd2'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd3))..'</font>', value = 'pojazd3'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd4))..'</font>', value = 'pojazd4'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd5))..'</font>', value = 'pojazd5'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd6))..'</font>', value = 'pojazd6'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd7))..'</font>', value = 'pojazd7'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd8))..'</font>', value = 'pojazd8'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd9))..'</font>', value = 'pojazd9'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd10'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd11'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd12'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd13'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd14'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd15'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd16'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd17'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd18'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd19'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd20'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd21'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd22'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd23'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd24'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd25'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd26'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd27'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd28'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd29'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd30'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd31'},
			{label = '<font color=yellow>'..GetLabelText(GetDisplayNameFromVehicleModel(pojazd10))..'</font>',value = 'pojazd32'},
		}
	},
	function(data2, menu2)
	if data2.current.value == 'pojazd1' then
		RozpocznijWynajem(pojazd1)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd2' then
		RozpocznijWynajem(pojazd2)
		Citizen.Wait(250)
    elseif data2.current.value == 'pojazd3' then
		RozpocznijWynajem(pojazd3)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd4' then
		RozpocznijWynajem(pojazd4)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd5' then
		RozpocznijWynajem(pojazd5)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd6' then
		RozpocznijWynajem(pojazd6)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd7' then
		RozpocznijWynajem(pojazd7)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd8' then
		RozpocznijWynajem(pojazd8)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd9' then
		RozpocznijWynajem(pojazd9)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd10' then
		RozpocznijWynajem(pojazd10)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd11' then
		RozpocznijWynajem(pojazd11)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd12' then
		RozpocznijWynajem(pojazd12)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd13' then
		RozpocznijWynajem(pojazd13)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd14' then
		RozpocznijWynajem(pojazd14)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd15' then
		RozpocznijWynajem(pojazd15)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd16' then
		RozpocznijWynajem(pojazd16)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd17' then
		RozpocznijWynajem(pojazd17)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd18' then
		RozpocznijWynajem(pojazd18)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd19' then
		RozpocznijWynajem(pojazd19)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd20' then
		RozpocznijWynajem(pojazd20)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd21' then
		RozpocznijWynajem(pojazd21)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd22' then
		RozpocznijWynajem(pojazd22)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd23' then
		RozpocznijWynajem(pojazd23)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd24' then
		RozpocznijWynajem(pojazd24)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd25' then
		RozpocznijWynajem(pojazd25)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd26' then
		RozpocznijWynajem(pojazd26)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd27' then
		RozpocznijWynajem(pojazd27)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd28' then
		RozpocznijWynajem(pojazd28)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd29' then
		RozpocznijWynajem(pojazd29)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd30' then
		RozpocznijWynajem(pojazd30)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd31' then
		RozpocznijWynajem(pojazd31)
		Citizen.Wait(250)
	elseif data2.current.value == 'pojazd32' then
		RozpocznijWynajem(pojazd32)
		Citizen.Wait(250)
			end
		
	end,
	function(data2, menu2)
		menu2.close()
	
end)
end)

function Notyfikacja(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString("")
	Citizen.InvokeNative(0x1E6611149DB3DB6B, "CHAR_CARSITE", "CHAR_CARSITE", true, 1, "", text, 0.55)
	DrawNotification_4(false, true)
end

function RozpocznijWynajem(pojazd)
	czasWynajmu = 160
	PlaySoundFrontend(-1, "Player_Enter_Line", "GTAO_FM_Cross_The_Line_Soundset", 0)
	ESX.UI.Menu.CloseAll()
	DoScreenFadeOut(300)
	Citizen.Wait(500)
	local auto = pojazd
	RequestModel(GetHashKey(auto))
	while not HasModelLoaded(GetHashKey(auto)) do
	Citizen.Wait(0)
	end
	TriggerServerEvent("tostJazda:sprawdzforse", '1')
	Notyfikacja('Payer ~g~'..cenaJazdy..'$ ~w~pour essayer.')
	wypozyczone = CreateVehicle(GetHashKey(auto), outsideX, outsideY, outsideZ, headingO,  996.786, 25.1887, false, false)
	SetEntityAsMissionEntity(wypozyczone)
    SetVehicleLivery(wypozyczone, 0)
    TaskWarpPedIntoVehicle(GetPlayerPed(-1), wypozyczone, - 1)
    SetVehicleNumberPlateText(wypozyczone, "TEST")
    SetVehicleColours(wypozyczone, 111,111)
	SetPedCanBeKnockedOffVehicle(GetPlayerPed(-1),1)
	SetPedCanRagdoll(GetPlayerPed(-1),false)
	Citizen.Wait(500)
	DoScreenFadeIn(300)
	Notyfikacja('Après le laps de temps, vous retournerez au salon.')
	local start = true
	
	while start do
	Citizen.Wait(0)
	DisableControlAction(0, 75, true)  
	DisableControlAction(27, 75, true)
	DisableControlAction(0, 70, true)
	DisableControlAction(0, 69, true)
	local pedCoords = GetEntityCoords(GetPlayerPed(-1))
	czasWynajmu = czasWynajmu -0.015
	DrawText3D(pedCoords.x, pedCoords.y, pedCoords.z+1.3, "~y~Temps restant : ~r~"..math.floor(czasWynajmu)..'~y~ secondes.')
		if czasWynajmu <= 0 then
		start = false
		end
	end
	SetPedCanRagdoll(GetPlayerPed(-1),true)
	SetPedCanBeKnockedOffVehicle(GetPlayerPed(-1),0)
	PlaySoundFrontend(-1, "Mission_Pass_Notify", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 1)
	Notyfikacja('L\'essai est terminé..')
	DoScreenFadeOut(300)
	Citizen.Wait(500)
	DeleteEntity(wypozyczone)
	FreezeEntityPosition(GetPlayerPed(-1), true)
	SetEntityCoordsNoOffset(GetPlayerPed(-1), wypozyczX+1, wypozyczY, wypozyczZ, 0, 0, 1)
	Citizen.Wait(500)
	FreezeEntityPosition(GetPlayerPed(-1), false)
	DoScreenFadeIn(300)
	
end
--
function DrawText3D(x, y, z, text)
    local onScreen,_x,_y=World3dToScreen2d(x, y, z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.45, 0.45)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 90)
end
