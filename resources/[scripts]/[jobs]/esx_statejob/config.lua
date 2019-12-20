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

Config.StateStations = {

  State = {

    Blip = {
      Pos     = { x = 203.72, y = -923.21, z = 30.70 },
      Sprite  = 419,
      Display = 4,
      Scale   = 1.4,
      Colour  = 0,
    },

    AuthorizedWeapons = {

      { name = 'WEAPON_KNIFE',                     price = 0 },





    },

	  AuthorizedVehicles = {
		  { name = 'baller3',  label = '4x4' },
      { name = 'stretch',  label = 'Limousine' },
	  },

    Armories = {
      { x = 225.34, y = -911.69, z = 36.79 },
    },

    Cloakrooms = {
   --   { x = 1172.7686767575, y = 2636.0771484375, z = 36.78857421875},
    },
  
  
    Vehicles = {
      {
        Spawner    = { x = 200.79, y = -930.60, z = 30.68 },
        SpawnPoint = { x = 197.49, y = -932.70, z = 30.68 },
        Heading    = 129.65,
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
      { x = 201.95, y = -943.81, z = 30.68 },
      
    },

    BossActions = {
      { x = 219.29, y = -899.48, z = 36.78 },
    },

  },

}
