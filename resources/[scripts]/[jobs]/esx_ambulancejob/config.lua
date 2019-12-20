Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 253, g = 29, b = 32 }
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.ReviveReward               = 300  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = true -- disable if you're using fivem-ipl or other IPL loaders
Config.Locale                     = 'fr'

local second = 1000
local minute = 60 * second

-- How much time before auto respawn at hospital
Config.RespawnDelayAfterRPDeath   = 15 * minute

Config.EnablePlayerManagement       = true
Config.EnableSocietyOwnedVehicles   = false

Config.RemoveWeaponsAfterRPDeath    = true
Config.RemoveCashAfterRPDeath       = false
Config.RemoveItemsAfterRPDeath      = false

-- Will display a timer that shows RespawnDelayAfterRPDeath as a countdown
Config.ShowDeathTimer               = true

-- Will allow respawn after half of RespawnDelayAfterRPDeath has elapsed.
Config.EarlyRespawn                 = true
-- The player will be fined for respawning early (on bank account)
Config.EarlyRespawnFine                  = true
Config.EarlyRespawnFineAmount            = 250

Config.Blip = {
	Pos     = { x = 284.84, y = -587.85, z = 43.37 },
	Sprite  = 61,
	Display = 4,
	Scale   = 1.2,
	Colour  = 2,
}

Config.HelicopterSpawner = {
	SpawnPoint = { x = 313.33, y = -1465.2, z = 45.5 },
	Heading    = 0.0
}

-- https://wiki.fivem.net/wiki/Vehicles
Config.AuthorizedVehicles = {

	{
		model = 'ambulance',
		label = 'Ambulance'
	},
	{
		model = 'dodgeEMS',
		label = 'Dodge'
	},
	{
		model = 'romero',
		label = 'Corbillard'
	},
	{
		model = 'qrv',
		label = '4x4'
	}

}

Config.Zones = {

	--HospitalInteriorEntering1 = { -- Main entrance
		--Pos	= { x = 294.2, y = -1448.60, z = 29.0 },
		--Type = 1
	--},

	HospitalInteriorInside1 = {
		Pos	= { x = 352.53, y = -591.83, z = 43.31 },
		Type = -1
	},

	--HospitalInteriorOutside1 = {
		--Pos	= { x = 295.8, y = -1446.5, z = 28.9 },
		--Type = -1
	--},

	--HospitalInteriorExit1 = {
		--Pos	= { x = 275.7, y = -1361.5, z = 23.5 },
		--Type = 1
	--},

	--HospitalInteriorEntering2 = { -- Lift go to the roof
		--Pos	= { x = 247.1, y = -1371.4, z = 23.5 },
		--Type = 1
	--},

	--HospitalInteriorInside2 = { -- Roof outlet
		--Pos	= { x = 333.1,	y = -1434.9, z = 45.5 },
		--Type = -1
	--},

	--HospitalInteriorOutside2 = { -- Lift back from roof
		--Pos	= { x = 249.1,	y = -1369.6, z = 23.5 },
		--Type = -1
	--},

	--HospitalInteriorExit2 = { -- Roof entrance
		--Pos	= { x = 335.5, y = -1432.0, z = 45.5 },
		--Type = 1
	--},

	AmbulanceActions = { -- Cloakroom
		Pos	= { x = 334.94, y = -575.28, z = 43.32 },
		Type = 1
	},

	VehicleSpawner = {
		Pos	= { x = 296.35, y = -590.94, z = 43.27 },
		Type = 26
	},

	VehicleSpawnPoint = {
		Pos	= { x = 285.24, y = -612.03, z = 43.35 },
		Type = -1
	},

	VehicleDeleter = {
		Pos	= { x = 293.83, y = -606.55, z = 43.33 },
		Type = 30
	},

	Pharmacy = {
		Pos	= { x = 326.24, y = -575.48, z = 43.31 },
		Type = 2
	},

	--ParkingDoorGoOutInside = {
		--Pos	= { x = 234.56, y = -1373.77, z = 20.97 },
		--Type = 1
	--},

	--ParkingDoorGoOutOutside = {
		--Pos	= { x = 320.98, y = -1478.62, z = 28.81 },
		--Type = -1
	--},

	--ParkingDoorGoInInside = {
		--Pos	= { x = 238.64, y = -1368.48, z = 23.53 },
		--Type = -1
	--},

	--ParkingDoorGoInOutside = {
		--Pos	= { x = 317.97, y = -1476.13, z = 28.97 },
		--Type = 1
	--},

	--StairsGoTopTop = {
		--Pos	= { x = 251.91, y = -1363.3, z = 38.53 },
		--Type = -1
	--},

	--StairsGoTopBottom = {
		--Pos	= { x = 237.45, y = -1373.89, z = 26.30 },
		--Type = -1
	--},

	--StairsGoBottomTop = {
		--Pos	= { x = 256.58, y = -1357.7, z = 37.30 },
		--Type = -1
	--},

	--StairsGoBottomBottom = {
		--Pos	= { x = 235.45, y = -1372.89, z = 26.30 },
		--Type = -1
	--}

}
