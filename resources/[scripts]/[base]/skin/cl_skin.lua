ESX                  = nil
local FirstSpawn     = true
local LastSkin       = nil
local PlayerLoaded   = true
local cam 			     = nil
local isCameraActive = false
local zoomOffset	   = 0.0
local camOffset 	   = 0.0
local heading 		   = 90.0

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
    end


end)

function OpenMenu(submitCb, cancelCb, restrict)

	local playerPed = GetPlayerPed(-1)

	TriggerEvent('skinchanger:getSkin', function(skin)
		LastSkin = skin
	end)

	TriggerEvent('skinchanger:getData', function(components, maxVals)

		local elements    = {}
		local _components = {}

		-- Restrict menu
		if restrict == nil then
			for i=1, #components, 1 do
				_components[i] = components[i]
			end
		else
			for i=1, #components, 1 do

				local found = false

				for j=1, #restrict, 1 do
					if components[i].name == restrict[j] then
						found = true
					end
				end

				if found then
					table.insert(_components, components[i])
				end

			end
		end

		-- Insert elements
		for i=1, #_components, 1 do

			local value       = _components[i].value
			local componentId = _components[i].componentId

			if componentId == 0 then
				value = GetPedPropIndex(playerPed,  _components[i].componentId)
			end

			local data = {
				label     = _components[i].label,
				name      = _components[i].name,
				value     = value,
				min       = _components[i].min,
				textureof = _components[i].textureof,
				zoomOffset= _components[i].zoomOffset,
				camOffset = _components[i].camOffset,
				type      = 'slider'
			}

			for k,v in pairs(maxVals) do
				if k == _components[i].name then
					data.max = v
				end
			end

			table.insert(elements, data)

		end

	--	CreateSkinCam()
		zoomOffset = _components[1].zoomOffset
		camOffset = _components[1].camOffset

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'skin',
			{
				title = "Character",
				align = 'top-left',
				elements = elements
			},
			function(data, menu)

				TriggerEvent('skinchanger:getSkin', function(skin)
					LastSkin = skin
				end)

				submitCb(data, menu)
				DeleteSkinCam()
			end,
			function(data, menu)

				menu.close()

				DeleteSkinCam()

				TriggerEvent('skinchanger:loadSkin', LastSkin)

				if cancelCb ~= nil then
					cancelCb(data, menu)
				end

			end,
			function(data, menu)

				TriggerEvent('skinchanger:getSkin', function(skin)

					zoomOffset = data.current.zoomOffset
					camOffset = data.current.camOffset

					if skin[data.current.name] ~= data.current.value then

						-- Change skin element
						TriggerEvent('skinchanger:change', data.current.name, data.current.value)

						-- Update max values
						TriggerEvent('skinchanger:getData', function(components, maxVals)

							for i=1, #elements, 1 do

								local newData = {}
								
								newData.max = maxVals[elements[i].name]

								if elements[i].textureof ~= nil and data.current.name == elements[i].textureof then
									newData.value = 0
								end

								menu.update({name = elements[i].name}, newData)

							end

							menu.refresh()

						end)

					end

				end)

			end,
			function()
				DeleteSkinCam()
			end
		)

	end)

end

function CreateSkinCam()
	if not DoesCamExist(cam) then
		cam = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)
	end
	SetCamActive(cam, true)
	RenderScriptCams(true, true, 500, true, true)
	isCameraActive = true
	SetCamRot(cam, 0.0, 0.0, 270.0, true)
	SetEntityHeading(playerPed, 90.0)
end

function DeleteSkinCam()
	isCameraActive = false
	SetCamActive(cam, false)
	RenderScriptCams(false, true, 500, true, true)
	cam = nil
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(20000)
		if isCameraActive then
			DisableControlAction(2, 30, true)
			DisableControlAction(2, 31, true)
			DisableControlAction(2, 32, true)
			DisableControlAction(2, 33, true)
			DisableControlAction(2, 34, true)
			DisableControlAction(2, 35, true)

			DisableControlAction(0, 25,   true) -- Input Aim
    		DisableControlAction(0, 24,   true) -- Input Attack

			local playerPed = GetPlayerPed(-1)
			local coords    = GetEntityCoords(playerPed)

			local angle = heading * math.pi / 180.0
			local theta = {
				x = math.cos(angle),
				y = math.sin(angle)
			}
			local pos = {
				x = coords.x + (zoomOffset * theta.x),
				y = coords.y + (zoomOffset * theta.y),
			}

			local angleToLook = heading - 140.0
			if angleToLook > 360 then
				angleToLook = angleToLook - 360
			elseif angleToLook < 0 then
				angleToLook = angleToLook + 360
			end
			angleToLook = angleToLook * math.pi / 180.0
			local thetaToLook = {
				x = math.cos(angleToLook),
				y = math.sin(angleToLook)
			}
			local posToLook = {
				x = coords.x + (zoomOffset * thetaToLook.x),
				y = coords.y + (zoomOffset * thetaToLook.y),
			}

		--	SetCamCoord(cam, pos.x, pos.y, coords.z + camOffset)
			--PointCamAtCoord(cam, posToLook.x, posToLook.y, coords.z + camOffset)
            
			SetTextComponentFormat("STRING")
			AddTextComponentString(_U('use_rotate_view'))
			DisplayHelpTextFromStringLabel(0, 0, 0, -1)
		end
	end
end)

Citizen.CreateThread(function()
	local angle = 90
	while true do
		Citizen.Wait(0)
		if isCameraActive then
			if IsControlPressed(0, 108) then
				angle = angle - 1
			elseif IsControlPressed(0, 109) then
				angle = angle + 1
			end
			if angle > 360 then
				angle = angle - 360
			elseif angle < 0 then
				angle = angle + 360
			end
			heading = angle + 0.0
		end
	end
end)

function OpenSaveableMenu66(submitCb, cancelCb, restrict)

	TriggerEvent('skinchanger:getSkin', function(skin)
		LastSkin = skin
	end)

	OpenMenu(function(data, menu)

		menu.close()

		DeletexSkinCam()

		TriggerEvent('skinchanger:getSkin', function(skin)

			TriggerServerEvent('esx_skin:save', skin)

			if submitCb ~= nil then
				submitCb(data, menu)
			end

		end)

	end, cancelCb, restrict)

end
AddEventHandler('playerSpawned', function()

    while ESX==nil do
        Citizen.Wait(0)
    end
    --print(FirstSpawn)
    Wait(4000)
    if FirstSpawn then

        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, _)
            

            --print(skin)
            if skin == nil then
               TriggerEvent("dqP:newskin")
            else
                TriggerEvent('skinchanger:loadSkin', skin)
            end

        end)

        FirstSpawn = false

    end

end)

RegisterNetEvent('dqP:ReadyGo')
AddEventHandler('dqP:ReadyGo', function()

    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, _)

        if skin == nil then
            TriggerEvent("dqP:newskin")
        else
            TriggerEvent('skinchanger:loadSkin', skin)
        end

    end)

end)
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(_)
    PlayerLoaded = true
    
    
end)

AddEventHandler('esx_skin:getLastSkin', function(cb)
	cb(LastSkin)
end)

AddEventHandler('esx_skin:setLastSkin', function(skin)
	LastSkin = skin
end)

RegisterNetEvent('esx_skin:openMenu')
AddEventHandler('esx_skin:openMenu', function(submitCb, cancelCb)
	OpenMenu(submitCb, cancelCb, nil)
end)

RegisterNetEvent('esx_skin:openRestrictedMenu')
AddEventHandler('esx_skin:openRestrictedMenu', function(submitCb, cancelCb, restrict)
	OpenMenu(submitCb, cancelCb, restrict)
end)

RegisterNetEvent('esx_skin:OpenSaveableMenu66')
AddEventHandler('esx_skin:OpenSaveableMenu66', function(submitCb, cancelCb)
	OpenSaveableMenu66(submitCb, cancelCb, nil)
end)

RegisterNetEvent('esx_skin:openSaveableRestrictedMenu')
AddEventHandler('esx_skin:openSaveableRestrictedMenu', function(submitCb, cancelCb, restrict)
	OpenSaveableMenu66(submitCb, cancelCb, restrict)
end)

RegisterNetEvent('esx_skin:requestSaveSkin')
AddEventHandler('esx_skin:requestSaveSkin', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
		TriggerServerEvent('esx_skin:responseSaveSkin', skin)
	end)
end)

Citizen.CreateThread(function()
	while true do

		Citizen.Wait(10000)

		local playerPed = GetPlayerPed(-1)

		if IsEntityDead(playerPed) then
			HasLoadedModel = false
		end

	end
end)





local Components = {
    {label = 'Sexe',                   name = 'sex',           value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65}, --
    {label = 'Visage',                  name = 'face',          value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65}, --
    {label = 'Peau',                  name = 'skin',          value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65}, --
    {label = 'Rides',              name = 'age_1',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Epaisseur des rides',     name = 'age_2',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, 
    ----
    {label = 'Largeur du nez',     name = 'nose_width',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Hauteur du nez',     name = 'nose_peak_hight',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Longueur du nez',     name = 'nose_peak_lenght',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Hauteur de l\'os du nez',     name = 'nose_bone_high',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Pointe du nez',     name = 'nose_peak_lowering',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Torsion du nez',     name = 'nose_bone_twist',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --

    {label = 'Hauteur des sourcils',     name = 'EyeBrown_High',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Sourcils en avant',     name = 'EyeBrown_Forward',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Pomette hauteur',     name = 'Cheeks_Bone_High',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Pomette largeur',     name = 'Cheeks_Bone_Width',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Largeur des joues',     name = 'Cheeks_Width',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Ouverture des yeux',     name = 'Eyes_Openning',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --


    {label = 'Epaisseur des lèvres',     name = 'Lips_Thickness',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Largeur de mâchoire',     name = 'Jaw_Bone_Width',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Longueur de mâchoire',     name = 'Jaw_Bone_Back_Lenght',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Abaissement du menton',     name = 'Chimp_Bone_Lowering',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Longueur du menton',     name = 'Chimp_Bone_Lenght',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Largeur du menton',     name = 'Chimp_Bone_Width',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --

    {label = 'Trou de menton',     name = 'Chimp_Hole',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Epaisseur du cou',     name = 'Neck_Thikness',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --

    {label = 'Peau père',     name = 'dad_face',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Peau père',     name = 'mom_face',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --

    {label = 'Mélange couleur',     name = 'mixColor',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Mélange visage',     name = 'mixRess',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Imperfection 1',     name = 'blemish_1',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Imperfection 2',     name = 'blemish_2',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --

    {label = 'Couleur des yeux',     name = 'eyes_color',         value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --


    {label = 'Type de barbe',            name = 'beard_1',       value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Taille de la barbe',            name = 'beard_2',       value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Couleur barbe 1',         name = 'beard_3',       value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Couleur barbe 2',         name = 'beard_4',       value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Cheveux 1',                name = 'hair_1',        value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65}, --
    {label = 'Cheveux 2',                name = 'hair_2',        value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65}, --
    {label = 'Couleur cheveux 1',          name = 'hair_color_1',  value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65}, --
    {label = 'Couleur cheveux 2',          name = 'hair_color_2',  value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65}, --
    {label = 'Taille sourcils',          name = 'eyebrows_2',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Type de sourcils',          name = 'eyebrows_1',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Couleur sourcils 1',       name = 'eyebrows_3',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Couleur sourcils 2',       name = 'eyebrows_4',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Type de maquillage',           name = 'makeup_1',      value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Epaisseur de maquillage',      name = 'makeup_2',      value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Couleur maquillage 1',        name = 'makeup_3',      value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Couleur maquillage 2',        name = 'makeup_4',      value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Type de rouge à lèvres',         name = 'lipstick_1',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Epaisseur du rouge à lèvres',    name = 'lipstick_2',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Couleur RAL 1',      name = 'lipstick_3',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Couleur RAL 2',      name = 'lipstick_4',    value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Accessoires d\'oreilles',       name = 'ears_1',        value = -1, min = -1, zoomOffset = 0.4,   camOffset = 0.65}, --
    {label = 'Couleur d\'accessoires', name = 'ears_2',        value = 0,  min = 0,  zoomOffset = 0.4,   camOffset = 0.65, textureof = 'ears_1'}, --
    {label = 'Tshirt',              name = 'tshirt_1',      value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15}, --
    {label = 'Couleur Tshirt',              name = 'tshirt_2',      value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15, textureof = 'tshirt_1'}, --
    {label = 'Torse',               name = 'torso_1',       value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15}, --
    {label = 'Couleur torse',               name = 'torso_2',       value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15, textureof = 'torso_1'}, --
    {label = 'Calque 1',              name = 'decals_1',      value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15}, --
    {label = 'Calque 2',              name = 'decals_2',      value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15, textureof = 'decals_1'}, --
    {label = 'Bras',                  name = 'arms',          value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15}, --
    {label = 'Pantalon',               name = 'pants_1',       value = 0,  min = 0,  zoomOffset = 0.8,   camOffset = -0.5}, --
    {label = 'Couleur pantalon',               name = 'pants_2',       value = 0,  min = 0,  zoomOffset = 0.8,   camOffset = -0.5, textureof = 'pants_1'}, --
    {label = 'Chaussures',               name = 'shoes_1',       value = 0,  min = 0,  zoomOffset = 0.8,   camOffset = -0.8},
    {label = 'Couleur chaussures',               name = 'shoes_2',       value = 0,  min = 0,  zoomOffset = 0.8,   camOffset = -0.8, textureof = 'shoes_1'},
    {label = 'Masque',                name = 'mask_1',        value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65}, --
    {label = 'Couleur masque',                name = 'mask_2',        value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65, textureof = 'mask_1'}, --
    {label = 'Gilet pare-balles',              name = 'bproof_1',      value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15}, --
    {label = 'Couleur GPB',              name = 'bproof_2',      value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15, textureof = 'bproof_1'}, --
    {label = 'Chaîne 1',               name = 'chain_1',       value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65}, --
    {label = 'Couleur Chaîne',               name = 'chain_2',       value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65, textureof = 'chain_1'}, --
    {label = 'Casque',              name = 'helmet_1',      value = -1, min = -1, zoomOffset = 0.6,   camOffset = 0.65, componentId = 0 }, --
    {label = 'Couleur casque',              name = 'helmet_2',      value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65, textureof = 'helmet_1'}, --
    {label = 'Lunettes',             name = 'glasses_1',     value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65}, --
    {label = 'Couleur lunettes',             name = 'glasses_2',     value = 0,  min = 0,  zoomOffset = 0.6,   camOffset = 0.65, textureof = 'glasses_1'}, --
    {label = 'Sac',                   name = 'bags_1',        value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15},
    {label = 'Couleur sac',             name = 'bags_2',        value = 0,  min = 0,  zoomOffset = 0.75,  camOffset = 0.15, textureof = 'bags_1'}
}

local LastSex     = -1
local LoadSkin    = nil
local LoadClothes = nil
local Character   = {}

for i=1, #Components, 1 do
    Character[Components[i].name] = Components[i].value
end

function LoadDefaultModel(loadMale, cb)

    local playerPed = GetPlayerPed(-1)
    local characterModel

    if loadMale then
        characterModel = GetHashKey('mp_m_freemode_01')
    else
        characterModel = GetHashKey('mp_f_freemode_01');
    end

    RequestModel(characterModel)

    Citizen.CreateThread(function()

            while not HasModelLoaded(characterModel) do
                RequestModel(characterModel)
                Citizen.Wait(0)
            end

            if IsModelInCdimage(characterModel) and IsModelValid(characterModel) then
                SetPlayerModel(PlayerId(), characterModel)
                SetPedDefaultComponentVariation(playerPed)
            end

            SetModelAsNoLongerNeeded(characterModel)

            if cb ~= nil then
                cb()
            end

            TriggerEvent('skinchanger:modelLoaded')

    end)

end

function GetMaxVals()

    local playerPed = GetPlayerPed(-1)

    local data = {
        sex           = 1,
        face          = 45,
        skin          = 45,
        age_1         = GetNumHeadOverlayValues(3)-1,
        age_2         = 10,
        nose_width    = 10,
        beard_1       = GetNumHeadOverlayValues(1)-1,
        beard_2       = 10,
        blemish_1       = 100,
        blemish_2     = 100,
        eyes_color      = 100,
        beard_3       = GetNumHairColors()-1,
        beard_4       = GetNumHairColors()-1,
        hair_1        = GetNumberOfPedDrawableVariations(playerPed, 2) - 1,
        hair_2        = GetNumberOfPedTextureVariations(playerPed, 2, Character['hair_1']) - 1,
        hair_color_1  = GetNumHairColors()-1,
        hair_color_2  = GetNumHairColors()-1,
        eyebrows_1    = GetNumHeadOverlayValues(2)-1,
        eyebrows_2    = 10,
        eyebrows_3    = GetNumHairColors()-1,
        eyebrows_4    = GetNumHairColors()-1,
        makeup_1      = GetNumHeadOverlayValues(4)-1,
        makeup_2      = 10,


        complexion_1      = 100,
        complexion_2      = 100,
        makeup_3      = GetNumHairColors()-1,
        makeup_4      = GetNumHairColors()-1,
        dad_face      = 50,
        mom_face      = 50,
        mixColor        = 50,
        mixRess         = 50,
        lipstick_1    = GetNumHeadOverlayValues(8)-1,
        lipstick_2    = 10,
        lipstick_3    = GetNumHairColors()-1,
        lipstick_4    = GetNumHairColors()-1,
        ears_1        = GetNumberOfPedPropDrawableVariations  (playerPed, 1) - 1,
        ears_2        = GetNumberOfPedPropTextureVariations   (playerPed, 1, Character['ears_1'] - 1),
        tshirt_1      = GetNumberOfPedDrawableVariations      (playerPed, 8) - 1,
        tshirt_2      = GetNumberOfPedTextureVariations       (playerPed, 8, Character['tshirt_1']) - 1,
        torso_1       = GetNumberOfPedDrawableVariations      (playerPed, 11) - 1,
        torso_2       = GetNumberOfPedTextureVariations       (playerPed, 11, Character['torso_1']) - 1,
        decals_1      = GetNumberOfPedDrawableVariations      (playerPed, 10) - 1,
        decals_2      = GetNumberOfPedTextureVariations       (playerPed, 10, Character['decals_1']) - 1,
        arms          = GetNumberOfPedDrawableVariations      (playerPed, 3) - 1,
        pants_1       = GetNumberOfPedDrawableVariations      (playerPed, 4) - 1,
        pants_2       = GetNumberOfPedTextureVariations       (playerPed, 4, Character['pants_1']) - 1,
        shoes_1       = GetNumberOfPedDrawableVariations      (playerPed, 6) - 1,
        shoes_2       = GetNumberOfPedTextureVariations       (playerPed, 6, Character['shoes_1']) - 1,
        mask_1        = GetNumberOfPedDrawableVariations      (playerPed, 1) - 1,
        mask_2        = GetNumberOfPedTextureVariations       (playerPed, 1, Character['mask_1']) - 1,
        bproof_1      = GetNumberOfPedDrawableVariations      (playerPed, 9) - 1,
        bproof_2      = GetNumberOfPedTextureVariations       (playerPed, 9, Character['bproof_1']) - 1,
        chain_1       = GetNumberOfPedDrawableVariations      (playerPed, 7) - 1,
        chain_2       = GetNumberOfPedTextureVariations       (playerPed, 7, Character['chain_1']) - 1,
        bags_1        = GetNumberOfPedDrawableVariations      (playerPed, 5) - 1,
        bags_2        = GetNumberOfPedTextureVariations       (playerPed, 5, Character['bags_1']) - 1,
        helmet_1      = GetNumberOfPedPropDrawableVariations  (playerPed, 0) - 1,
        helmet_2      = GetNumberOfPedPropTextureVariations   (playerPed, 0, Character['helmet_1']) - 1,
        glasses_1     = GetNumberOfPedPropDrawableVariations  (playerPed, 1) - 1,
        glasses_2     = GetNumberOfPedPropTextureVariations   (playerPed, 1, Character['glasses_1'] - 1),
    }

    return data

end

function ApplySkin(skin, clothes)

    local playerPed = GetPlayerPed(-1)

    for k,v in pairs(skin) do
        Character[k] = v
    end

    if clothes ~= nil then

        for k,v in pairs(clothes) do
            if
                k ~= 'sex'          and
                k ~= 'face'         and
                k ~= 'skin'         and
                k ~= 'age_1'        and
                k ~= 'age_2'        and
                k ~= 'nose_width'   and 
                k ~= 'beard_1'      and
                k ~= 'beard_2'      and
                k ~= 'beard_3'      and
                k ~= 'beard_4'      and
                k ~= 'hair_1'       and
                k ~= 'hair_2'       and
                k ~= 'hair_color_1' and
                k ~= 'hair_color_2' and
                k ~= 'eyebrows_1'   and
                k ~= 'eyebrows_2'   and
                k ~= 'eyebrows_3'   and
                k ~= 'eyebrows_4'   and
                k ~= 'makeup_1'     and
                k ~= 'makeup_2'     and
                k ~= 'makeup_3'     and
                k ~= 'makeup_4'     and
                k ~= 'lipstick_1'   and
                k ~= 'lipstick_2'   and
                k ~= 'lipstick_3'   and
                k ~= 'lipstick_4'
            then
                Character[k] = v
            end
        end

    end

    SetPedHeadBlendData(playerPed, Character["mom_face"], Character["dad_face"], 0,Character["mom_face"], Character["dad_face"], 0, Character["mixRess"], Character["mixColor"], 0, false)

    SetPedFaceFeature       (playerPed, 0, Character['nose_width'])
    SetPedFaceFeature       (playerPed, 1, Character['nose_peak_hight'])
    SetPedFaceFeature       (playerPed, 2, Character['nose_peak_lenght'])
    SetPedFaceFeature       (playerPed, 3, Character['nose_bone_high'])
    SetPedFaceFeature       (playerPed, 4, Character['nose_peak_lowering'])
    SetPedFaceFeature       (playerPed, 5, Character['nose_bone_twist'])
    SetPedFaceFeature       (playerPed, 6, Character['EyeBrown_High'])
    SetPedFaceFeature       (playerPed, 7, Character['EyeBrown_Forward'])
    SetPedFaceFeature       (playerPed, 8, Character['Cheeks_Bone_High'])
    SetPedFaceFeature       (playerPed, 9, Character['Cheeks_Bone_Width'])
    SetPedFaceFeature       (playerPed, 10, Character['Cheeks_Width'])
    SetPedFaceFeature       (playerPed, 11, Character['Eyes_Openning'])
    
    SetPedFaceFeature       (playerPed, 12, Character['Lips_Thickness'])
    SetPedFaceFeature       (playerPed, 13, Character['Jaw_Bone_Width'])


    SetPedFaceFeature       (playerPed, 14, Character['Jaw_Bone_Back_Lenght'])

    SetPedFaceFeature       (playerPed, 15, Character['Chimp_Bone_Lowering'])
    SetPedFaceFeature       (playerPed, 16, Character['Chimp_Bone_Lenght'])
    SetPedFaceFeature       (playerPed, 17, Character['Chimp_Bone_Width'])
    SetPedFaceFeature       (playerPed, 18, Character['Chimp_Hole'])
    SetPedFaceFeature       (playerPed, 19, Character['Neck_Thikness'])

  
    SetPedEyeColor(playerPed, Character["eyes_color"])

    SetPedHairColor         (playerPed,       Character['hair_color_1'],   Character['hair_color_2'])           -- Hair Color
    SetPedHeadOverlay       (playerPed, 3,    Character['age_1'],         (Character['age_2']) + 0.0)      -- Age + opacity
    SetPedHeadOverlay       (playerPed, 1,    Character['beard_1'],       (Character['beard_2']) + 0.0)    -- Beard + opacity
    SetPedHeadOverlay       (playerPed, 2,    Character['eyebrows_1'],    (Character['eyebrows_2']) + 0.0) -- Eyebrows + opacity
    SetPedHeadOverlay       (playerPed, 4,    Character['makeup_1'],      (Character['makeup_2']) + 0.0)   -- Makeup + opacity
    SetPedHeadOverlay       (playerPed, 8,    Character['lipstick_1'],    (Character['lipstick_2']) + 0.0) -- Lipstick + opacity
    SetPedComponentVariation(playerPed, 2,    Character['hair_1'],         Character['hair_2'], 2)              -- Hair
    SetPedHeadOverlayColor  (playerPed, 1, 1, Character['beard_3'],        Character['beard_4'])                -- Beard Color
    SetPedHeadOverlayColor  (playerPed, 2, 1, Character['eyebrows_3'],     Character['eyebrows_4'])             -- Eyebrows Color
    SetPedHeadOverlayColor  (playerPed, 4, 1, Character['makeup_3'],       Character['makeup_4'])               -- Makeup Color
    SetPedHeadOverlayColor  (playerPed, 8, 1, Character['lipstick_3'],     Character['lipstick_4'])             -- Lipstick Color

    if Character['ears_1'] == -1 then
        ClearPedProp(playerPed, 2)
    else
        SetPedPropIndex(playerPed, 2, Character['ears_1'], Character['ears_2'], 2)  -- Ears Accessories
    end
    SetPedHeadOverlay(playerPed, 6, Character['complexion_1'],Character['complexion_2'])
    SetPedHeadOverlay(playerPed, 0, Character['blemish_1'], Character['blemish_2'])
    SetPedComponentVariation(playerPed, 8,  Character['tshirt_1'],  Character['tshirt_2'], 2)     -- Tshirt
    SetPedComponentVariation(playerPed, 11, Character['torso_1'],   Character['torso_2'], 2)      -- torso parts
    SetPedComponentVariation(playerPed, 3,  Character['arms'], 0, 2)                              -- torso
    SetPedComponentVariation(playerPed, 10, Character['decals_1'],  Character['decals_2'], 2)     -- decals
    SetPedComponentVariation(playerPed, 4,  Character['pants_1'],   Character['pants_2'], 2)      -- pants
    SetPedComponentVariation(playerPed, 6,  Character['shoes_1'],   Character['shoes_2'], 2)      -- shoes
    SetPedComponentVariation(playerPed, 1,  Character['mask_1'],    Character['mask_2'], 2)       -- mask
    SetPedComponentVariation(playerPed, 9,  Character['bproof_1'],  Character['bproof_2'], 2)     -- bulletproof
    SetPedComponentVariation(playerPed, 7,  Character['chain_1'],   Character['chain_2'], 2)      -- chain
    SetPedComponentVariation(playerPed, 5,  Character['bags_1'],    Character['bags_2'], 2)       -- Bag

    if Character['helmet_1'] == -1 then
        ClearPedProp(playerPed, 0)
    else
        SetPedPropIndex(playerPed, 0, Character['helmet_1'], Character['helmet_2'], 2)  -- Helmet
    end

    SetPedPropIndex(playerPed, 1, Character['glasses_1'], Character['glasses_2'], 2)  -- Glasses

end

AddEventHandler('skinchanger:loadDefaultModel', function(loadMale, cb)
    LoadDefaultModel(loadMale, cb)
end)

AddEventHandler('skinchanger:getData', function(cb)

        local components = json.decode(json.encode(Components))

        for k,v in pairs(Character) do
            for i=1, #components, 1 do
                if k == components[i].name then
                    components[i].value = v
                    --components[i].zoomOffset = Components[i].zoomOffset
                    --components[i].camOffset = Components[i].camOffset
                end
            end
        end

        cb(components, GetMaxVals())
end)

AddEventHandler('skinchanger:change', function(key, val)

        Character[key] = val

        if key == 'sex' then
            TriggerEvent('skinchanger:loadSkin', Character)
        else
            ApplySkin(Character)
        end

end)

AddEventHandler('skinchanger:getSkin', function(cb)
    cb(Character)
end)

AddEventHandler('skinchanger:modelLoaded', function()

        ClearPedProp(GetPlayerPed(-1), 0)

        if LoadSkin ~= nil then

            ApplySkin(LoadSkin)
            LoadSkin = nil

        end

        if LoadClothes ~= nil then

            ApplySkin(LoadClothes.playerSkin, LoadClothes.clothesSkin)
            LoadClothes = nil

        end

end)

RegisterNetEvent('skinchanger:loadSkin')
AddEventHandler('skinchanger:loadSkin', function(skin, cb)
        --("és")
        if skin['sex'] ~= LastSex then

            LoadSkin = skin

            if skin['sex'] == 0 then
                TriggerEvent('skinchanger:loadDefaultModel', true, nil)
            else
                TriggerEvent('skinchanger:loadDefaultModel', false, nil)
            end

        else

            ApplySkin(skin)

            if cb ~= nil then
                cb()
            end

        end

        LastSex = skin['sex']

end)

RegisterNetEvent('skinchanger:loadClothes')
AddEventHandler('skinchanger:loadClothes', function(playerSkin, clothesSkin)

        if playerSkin['sex'] ~= LastSex then

            LoadClothes = {
                playerSkin  = playerSkin,
                clothesSkin = clothesSkin
            }

            if playerSkin['sex'] == 0 then
                TriggerEvent('skinchanger:loadDefaultModel', true)
            else
                TriggerEvent('skinchanger:loadDefaultModel', false)
            end

        else
            ApplySkin(playerSkin, clothesSkin)
        end

        LastSex = playerSkin['sex']

end)
  
