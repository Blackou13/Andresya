Config                            = {}
Config.DrawDistance               = 100.0

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement      = true
Config.EnableHelicopters          = false
Config.EnableMoneyWash            = false
Config.MaxInService               = -1
Config.Locale = 'fr'

Config.MissCraft                  = 10 -- %


Config.AuthorizedVehicles = {
    { name = 'patriot2',  label = 'Limousine Luxe' },
}

Config.Blips = {
    
    Blip = {
      Pos     = { x = -430.40, y = 261.49, z = 83.00 },
      Sprite  = 93,
      Display = 4,
      Scale   = 1.2,
      Colour  = 27,
    },

}

Config.Zones = {

    Cloakrooms = {
        Pos   = { x = -1581.46, y = -3006.39, z = -76.00 },
        Size  = { x = 1.2, y = 1.2, z = 0.1 },
        Color = { r = 255, g = 187, b = 255 },
        Type  = 3,
    },

    Vaults = {
        Pos   = { x = 0, y = 0, z = 0 },
        Size  = { x = 1.2, y = 1.2, z = 0.1 },
        Color = { r = 30, g = 144, b = 255 },
        Type  = 3,
    },

    Fridge = {
        Pos   = { x = -1582.97, y = -3013.21, z = -76.00 },
        Size  = { x = 1.2, y = 1.2, z = 0.1 },
        Color = { r = 248, g = 248, b = 255 },
        Type  = 3,
    },

    Vehicles = {
       Pos          = { x = -428.85, y = 294.33, z = 83.22 },
       SpawnPoint   = { x = -434.13, y = 301.47, z = 83.22 },
       Size         = { x = 1.8, y = 1.8, z = 1.0 },
       Color        = { r = 255, g = 255, b = 0 },
       Type         = 3,
       Heading      = 86.83,
    },

    VehicleDeleters = {
       Pos   = { x = -434.13, y = 301.47, z = 83.22 },
       Size  = { x = 3.0, y = 3.0, z = 0.2 },
       Color = { r = 238, g = 0, b = 0 },
       Type  = 3,
    },

--[[
    Helicopters = {
        Pos          = { x = 137.177, y = -1278.757, z = 28.371 },
        SpawnPoint   = { x = 138.436, y = -1263.095, z = 28.626 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Type         = 23,
        Heading      = 207.43,
    },

    HelicopterDeleters = {
        Pos   = { x = 133.203, y = -1265.573, z = 28.396 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
        Type  = 1,
    },
]]--

    BossActions = {
        Pos   = { x = -1617.41, y = -3013.34, z = -75.20 },
        Size  = { x = 1.2, y = 1.2, z = 0.1 },
        Color = { r = 0, g = 100, b = 0 },
        Type  = 3,
    },

-----------------------
-------- SHOPS --------

    Flacons = {
        Pos   = { x = -1576.71, y = -3016.61, z = -79.00},
        Size  = { x = 1.2, y = 1.2, z = 0.1 },
        Color = { r = 238, g = 0, b = 0 },
        Type  = 3,
        Items = {
           { name = 'champagne',  label = 'Bouteille de Champagne',  price = 15 },
            { name = 'absinthe',    label = 'Bouteille d\'Absinthe',  price = 10 },
            { name = 'tequila',    label = 'Bouteille de Tequila',  price = 8 },
            { name = 'gintonic',  label = 'Gin Tonic',  price = 10 },
            { name = 'vodka',   label = 'Bouteille de Vodka',  price = 13 },
            { name = 'whisky', label = 'Bouteille de Whisky',  price = 14 }
        },
    },

    NoAlcool = {
        Pos   = { x = -1578.89, y = -3018.06, z = -79.00 },
        Size  = { x = 1.2, y = 1.2, z = 0.1 },
        Color = { r = 238, g = 110, b = 0 },
        Type  = 3,
        Items = {
            { name = 'water',        label = _U('water'),     price = 3 }
        },
    },

    Apero = {
        Pos   = {x = -1576.62, y = -3018.50, z = -79.00},
        Size  = { x = 1.2, y = 1.2, z = 0.1 },
        Color = { r = 142, g = 125, b = 76 },
        Type  = 3,
        Items = {
            { name = 'chips', label = 'Paquet de Chips',  price = 3 }
        },
    },

    --Ice = {
        --Pos   = {x = -1374.305, y = -628.153, z = 29.819},
        --Size  = { x = 1.2, y = 1.2, z = 0.1 },
        --Color = { r = 255, g = 255, b = 255 },
        --Type  = 3,
        --Items = {
            --{ name = 'ice',     label = _U('ice'),      price = 1 },
            --{ name = 'menthe',  label = _U('menthe'),   price = 2 }
        --},
   -- },

}


-----------------------
----- TELEPORTERS -----

Config.TeleportZones = {
  --EnterBuilding = {
    --Pos       = { x = -430.18, y = 261.71, z = 83.00 },
    --Size      = { x = 1.2, y = 1.2, z = 0.1 },
    --Color     = { r = 128, g = 128, b = 128 },
    --Marker    = 3,
    --Hint      = _U('e_to_enter_1'),
    --Teleport  = { x = -1604.664, y = -3012.583, z = -78.000 }
 --},

  --ExitBuilding = {
  -- Pos       = { x = 992.368, y = -3098.18, z = -39.9958 },
  -- Size      = { x = 1.2, y = 1.2, z = 0.1 },
  -- Color     = { r = 128, g = 128, b = 128 },
   --Marker    = 3,
  -- Hint      = _U('e_to_exit_1'),
  -- Teleport  = { x = -1385.59, y = -606.885, z = 29.319574356079},
  --},

  --Entercomptoir = {
  --  Pos       = { x = -1392.07, y = -598.22, z = 29.3196 },
  --  Size      = { x = 1.2, y = 1.2, z = 0.1 },
   -- Color     = { r = 128, g = 128, b = 128 },
  --  Marker    = 3,
    --Hint      = _U('e_to_enter_2'),
    --Teleport  = { x = -1391.054, y = -601.015, z = 29.319 },
  --},

 -- Exitcomptoir = {
  --  Pos       = { x = -1391.054, y = -601.015, z = 29.319 },
   -- Size      = { x = 1.2, y = 1.2, z = 0.1 },
   -- Color     = { r = 128, g = 128, b = 128 },
   -- Marker    = 3,
   -- Hint      = _U('e_to_exit_2'),
   -- Teleport  = { x = -1392.07, y = -598.22, z = 29.3196 },
 -- },

  --EnterVIP = {
    --Pos       = { x = -1381.7054443359, y = -632.19689941406, z = 29.81957244873 },
    --Size      = { x = 1.2, y = 1.2, z = 0.1 },
    --Color     = { r = 128, g = 128, b = 128 },
    --Marker    = 3,
    --Hint      = _U('e_to_enter_3'),
    --Teleport  = { x = -1379.71875, y = -631.39099121094, z = 29.81957244873 },
  --},

  --ExitVIP = {
    --Pos       = { x = -1379.71875, y = -631.39099121094, z = 29.81957244873 },
    --Size      = { x = 1.2, y = 1.2, z = 0.1 },
    --Color     = { r = 128, g = 128, b = 128 },
    --Marker    = 3,
    --Hint      = _U('e_to_exit_3'),
    --Teleport  = { x = -1381.7054443359, y = -631.39099121094, z = 29.81957244873 },
  --},

--[[
  EnterHeliport = {
    Pos       = { x = 126.843, y = -729.012, z = 241.201 },
    Size      = { x = 2.0, y = 2.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Hint      = _U('e_to_enter_2),
    Teleport  = { x = -65.944, y = -818.589, z =  320.801 }
  },

  ExitHeliport = {
    Pos       = { x = -67.236, y = -821.702, z = 320.401 },
    Size      = { x = 2.0, y = 2.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Hint      = _U('e_to_exit_2'),
    Teleport  = { x = 124.164, y = -728.231, z = 241.801 },
  },
]]--
}
