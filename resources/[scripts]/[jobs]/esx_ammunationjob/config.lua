Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 21
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 0, g = 255, b = 255 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = true
Config.MaxInService               = -1
Config.Locale = 'fr'

Config.AmmuStations = {

  Ammu = {

    Blip = {
      Pos     = { x = -16.4327, y = -1117.3068, z = 29.79 },
      Sprite  = 110,
      Display = 4,
      Scale   = 1.4,
      Colour  = 75,
    },

    AuthorizedWeapons = {

      { name = 'WEAPON_KNIFE',                     price = 4500 },
      { name = 'WEAPON_SWITCHBLADE',               price = 5000 },
      { name = 'WEAPON_BAT',                       price = 3500 },
      { name = 'WEAPON_KNUCKLE',                   price = 4000 },
      { name = 'WEAPON_FLASHLIGHT',                price = 100 },
      { name = 'WEAPON_HAMMER',                    price = 3500 }, 
      { name = 'WEAPON_PISTOL',                    price = 20000},
      { name = 'WEAPON_STUNGUN',                   price = 9500 },
      { name = 'WEAPON_MUSKET',                    price = 45000 },
      { name = 'WEAPON_MICROSMG',                  price = 90000 },
      { name = 'WEAPON_SMG',                       price = 120000 },
      { name = 'WEAPON_ASSAULTRIFLE',              price = 165000 },





    },

	  AuthorizedVehicles = {
		  { name = 'rumpo3',  label = 'Véhicule' },
	  },

    Armories = {
      { x = 23.07535, y = -1104.9525, z = 29.79 },
    },

    Cloakrooms = {
   --   { x = 1172.7686767575, y = 2636.0771484375, z = 36.78857421875},
    },
  
  
    Vehicles = {
      {
        Spawner    = { x = -6.8168, y = -1107.559, z = 28.95 },
        SpawnPoint = { x = -8.34, y = -1112.38, z = 28.5348 },
        Heading    = 150.36,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 113.30500793457, y = -3109.3337402344, z = 6.0060696601868 },
        SpawnPoint = { x = 112.94457244873, y = -3102.5942382813, z = 6.0050659179688 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = -1.362, y = -1112.877, z = 28.71 },
      
    },

    BossActions = {
      { x = 14.0587, y = -1106.31, z = 29.79 },
    },

  },

}
