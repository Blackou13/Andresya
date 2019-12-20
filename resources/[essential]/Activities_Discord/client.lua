Citizen.CreateThread(function()
    while true do
        local id = GetPlayerServerId(PlayerId())
        Citizen.Wait(1000)
        players = {}
        for i = 0, 255 do
            if NetworkIsPlayerActive( i ) then
                table.insert( players, i )
            end
        end
        SetDiscordAppId(599031951852044288)
        SetDiscordRichPresenceAsset('large')
        SetDiscordRichPresenceAssetText("SunLand RP")
        SetDiscordRichPresenceAsset('logo')
        SetRichPresence("".. GetPlayerName(PlayerId()) .." [ID : "..id.."] - ".. #players .. "/32")
    end
end)