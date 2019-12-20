Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.SecurityStations = {

  Security = {

    Blip = {
      Pos     = { x = -467.90, y = -727.36, z = 48.5999 },
      Sprite  = 439,
      Display = 4,
      Scale   = 1.2,
      Colour  = 46,
    },

    AuthorizedWeapons = {
     -- { name = 'WEAPON_COMBATPISTOL',     price = 4000 },
     -- { name = 'WEAPON_ASSAULTSMG',       price = 15000 },
      --{ name = 'WEAPON_ASSAULTRIFLE',     price = 25000 },
      --{ name = 'WEAPON_PUMPSHOTGUN',      price = 9000 },
     -- { name = 'WEAPON_STUNGUN',          price = 250 },
    --  { name = 'WEAPON_FLASHLIGHT',       price = 50 },
    --  { name = 'WEAPON_FIREEXTINGUISHER', price = 50 },
    --  { name = 'WEAPON_FLAREGUN',         price = 3000 },
      --{ name = 'GADGET_PARACHUTE',        price = 2000 },
    --  { name = 'WEAPON_SNIPERRIFLE',      price = 50000 },
   --   { name = 'WEAPON_FIREWORK',         price = 5000 },
     -- { name = 'WEAPON_BZGAS',            price = 8000 },
     -- { name = 'WEAPON_SMOKEGRENADE',     price = 8000 },
     -- { name = 'WEAPON_APPISTOL',         price = 12000 },
   --   { name = 'WEAPON_CARBINERIFLE',     price = 25000 },
  --    { name = 'WEAPON_HEAVYSNIPER',      price = 100000 },
     -- { name = 'WEAPON_FLARE',            price = 8000 },
   --   { name = 'WEAPON_SWITCHBLADE',      price = 500 },
	 -- { name = 'WEAPON_REVOLVER',         price = 6000 },
	--  { name = 'WEAPON_POOLCUE',          price = 100 },
	 -- { name = 'WEAPON_GUSENBERG',        price = 17500 },
	  
    },

	  AuthorizedVehicles = {
		  { name = 'rr14',  label = '4x4' },
      { name = 'nissantitan17',  label = 'PickUp' },
	  },

    Cloakrooms = {
      { x = -3158.438, y = 1161.323, z = 22.2002 },
    },

    Armories = {
      { x = -461.93, y = -742.37, z = 54.61 },
    },

    Vehicles = {
      {
        Spawner    = { x = -456.97, y = -753.93, z = 45.01 },
        SpawnPoint = { x = -448.68, y = -755.89, z = 45.01 },
        Heading    = 354.14,
      }
    },
	
	Helicopters = {
      {
        Spawner    = { x = 20.312, y = 535.667, z = 173.627 },
        SpawnPoint = { x = 3.40, y = 525.56, z = 177.919 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = -445.28, y = -767.46, z = 45.01 },
      { x = -445.28, y = -767.46, z = 45.01 },
    },

    BossActions = {
      { x = -456.65, y = -724.92, z = 54.63 }
    },

  },

}
