Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 25
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = true
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.AvocatStations = {

  AVOCAT = {

    Blip = {
      Pos     = { x = -820.109, y = 176.091, z = 71.616 },
      Sprite  = 515,
      Display = 4,
      Scale   = 1.2,
      Colour  = 75,
    },

    AuthorizedWeapons = {
      { name = '',          price = 0 },
    },

    AuthorizedVehicles = {
      { name = 'f620', label = 'Maserati' },
    },

    Cloakrooms = {
      { x = -811.77, y = 175.03, z = 76.74 },
    },


    Armories = {
      { x = -813.674, y = 178.664, z = 76.740 },
    },

    Vehicles = {
      {
        Spawner    = { x = -808.900, y = 187.196, z = 72.477 },
        SpawnPoint = { x = -826.645, y = 180.470, z = 71.476 },
        Heading    = 90.0,
      }
    },

    VehicleDeleters = {
      { x = -813.54, y = 160.007, z = 71.31 },
    },

    BossActions = {
      { x = -804.752, y = 169.182, z = 72.844 }
    },

  },

}
