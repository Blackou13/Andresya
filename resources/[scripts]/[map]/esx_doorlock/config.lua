Config = {}
Config.Locale = 'fr'

Config.DoorList = {

	--
	-- Mission Row First Floor
	--

	-- Entrance Doors
	{
		textCoords = vector3(434.7, -982.0, 31.5),
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_ph_door01',
				objYaw = -90.0,
				objCoords = vector3(434.7, -980.6, 30.8)
			},

			{
				objName = 'v_ilev_ph_door002',
				objYaw = -90.0,
				objCoords = vector3(434.7, -983.2, 30.8)
			}
		}
	},

	-- To locker room & roof
	{
		objName = 'v_ilev_ph_gendoor004',
		objYaw = 90.0,
		objCoords  = vector3(449.6, -986.4, 30.6),
		textCoords = vector3(450.1, -986.3, 31.7),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Rooftop
	{
		objName = 'v_ilev_gtdoor02',
		objYaw = 90.0,
		objCoords  = vector3(464.3, -984.6, 43.8),
		textCoords = vector3(464.3, -984.0, 44.8),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Hallway to roof
	{
		objName = 'v_ilev_arm_secdoor',
		objYaw = 90.0,
		objCoords  = vector3(461.2, -985.3, 30.8),
		textCoords = vector3(461.5, -986.0, 31.5),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Armory
	{
		objName = 'v_ilev_arm_secdoor',
		objYaw = -90.0,
		objCoords  = vector3(452.6, -982.7, 30.6),
		textCoords = vector3(453.0, -982.6, 31.7),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Captain Office
	{
		objName = 'v_ilev_ph_gendoor002',
		objYaw = -180.0,
		objCoords  = vector3(447.2, -980.6, 30.6),
		textCoords = vector3(447.2, -980.0, 31.7),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- To downstairs (double doors)
	{
		textCoords = vector3(444.6, -989.4, 31.7),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4,
		doors = {
			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 180.0,
				objCoords = vector3(443.9, -989.0, 30.6)
			},

			{
				objName = 'v_ilev_ph_gendoor005',
				objYaw = 0.0,
				objCoords = vector3(445.3, -988.7, 30.6)
			}
		}
	},

	--
	-- Mission Row Cells
	--

	-- Main Cells
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 0.0,
		objCoords  = vector3(463.8, -992.6, 24.9),
		textCoords = vector3(463.3, -992.6, 25.1),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 1
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = -90.0,
		objCoords  = vector3(462.3, -993.6, 24.9),
		textCoords = vector3(461.8, -993.3, 25.0),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 2
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 90.0,
		objCoords  = vector3(462.3, -998.1, 24.9),
		textCoords = vector3(461.8, -998.8, 25.0),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- Cell 3
	{
		objName = 'v_ilev_ph_cellgate',
		objYaw = 90.0,
		objCoords  = vector3(462.7, -1001.9, 24.9),
		textCoords = vector3(461.8, -1002.4, 25.0),
		authorizedJobs = { 'police' },
		locked = true
	},

	-- To Back
	{
		objName = 'v_ilev_gtdoor',
		objYaw = 0.0,
		objCoords  = vector3(463.4, -1003.5, 25.0),
		textCoords = vector3(464.0, -1003.5, 25.5),
		authorizedJobs = { 'police' },
		locked = true
	},

	--
	-- Mission Row Back
	--

	-- Back (double doors)
	{
		textCoords = vector3(468.6, -1014.4, 27.1),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 4,
		doors = {
			{
				objName = 'v_ilev_rc_door2',
				objYaw = 0.0,
				objCoords  = vector3(467.3, -1014.4, 26.5)
			},

			{
				objName = 'v_ilev_rc_door2',
				objYaw = 180.0,
				objCoords  = vector3(469.9, -1014.4, 26.5)
			}
		}
	},

	-- Back Gate
	{
		objName = 'hei_prop_station_gate',
		objYaw = 90.0,
		objCoords  = vector3(488.8, -1017.2, 27.1),
		textCoords = vector3(488.8, -1020.2, 30.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		size = 1
	},

	--
	-- Sandy Shores
	--

	-- Entrance
	{
		objName = 'v_ilev_shrfdoor',
		objYaw = 30.0,
		objCoords  = vector3(1855.1, 3683.5, 34.2),
		textCoords = vector3(1855.1, 3683.5, 35.0),
		authorizedJobs = { 'police' },
		locked = false
	},

	--
	-- Paleto Bay
	--

	-- Entrance (double doors)
	{
		textCoords = vector3(-443.5, 6016.3, 32.0),
		authorizedJobs = { 'police' },
		locked = false,
		distance = 2.5,
		doors = {
			{
				objName = 'v_ilev_shrf2door',
				objYaw = -45.0,
				objCoords  = vector3(-443.1, 6015.6, 31.7),
			},

			{
				objName = 'v_ilev_shrf2door',
				objYaw = 135.0,
				objCoords  = vector3(-443.9, 6016.6, 31.7)
			}
		}
	},

	--
	-- Bolingbroke Penitentiary
	--

	-- Entrance (Two big gates)
	{
		objName = 'prop_gate_prison_01',
		objCoords  = vector3(1844.9, 2604.8, 44.6),
		textCoords = vector3(1844.9, 2608.5, 48.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		size = 1
	},

	{
		objName = 'prop_gate_prison_01',
		objCoords  = vector3(1818.5, 2604.8, 44.6),
		textCoords = vector3(1818.5, 2608.4, 48.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='v_ilev_ph_cellgate',
		objCoords = vector3(440.85, -986.23, 26.67),
		textCoords = vector3(440.85, -986.23, 26.67),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='v_ilev_ph_cellgate',
		objCoords = vector3(440.99, -982.52, 26.67),
		textCoords = vector3(440.99, -982.52, 26.67),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='v_ilev_ph_gendoor006',
		objCoords = vector3(459.27, -982.52, 26.67),
		textCoords = vector3(459.27, -982.52, 26.67),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='v_ilev_ph_cellgate',
		objCoords = vector3(466.30, -998.48, 24.87),
		textCoords = vector3(466.30, -998.48, 24.87),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='v_ilev_ph_cellgate',
		objCoords = vector3(465.77, -1002.16, 24.91),
		textCoords = vector3(465.77, -1002.16, 24.91),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 1,
		size = 1
	},


	-- Unicorn door
	{
		objName='prop_strip_door_01',
		objCoords = vector3(127.9552, -1298.503, 29.41962),
		textCoords = vector3(127.9552, -1298.503, 30.41962),
		authorizedJobs = { 'unicorn' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='prop_magenta_door',
		objCoords = vector3(96.09197, -1284.854, 29.43878),
		textCoords = vector3(96.09197, -1284.854, 30.43878),
		authorizedJobs = { 'unicorn' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='v_ilev_door_orangesolid',
		objCoords = vector3(113.68, -1296.73, 29.26),
		textCoords = vector3(113.68, -1296.73, 29.26),
		authorizedJobs = { 'unicorn' },
		locked = true,
		distance = 3,
		size = 1
	},

		-- Ammunation door
	{
		objName='v_ilev_gc_door03',
		objCoords = vector3(18.572, -1115.495, 29.94694),
		textCoords = vector3(18.572, -1115.495, 29.94694),
		authorizedJobs = { 'ammu' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='v_ilev_gc_door04',
		objCoords = vector3(16.12787, -1114.606, 29.94694),
		textCoords = vector3(16.12787, -1114.606, 29.94694),
		authorizedJobs = { 'ammu' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='v_ilev_gc_door01',
		objCoords = vector3(826.61, -2160.40, 29.61),
		textCoords = vector3(826.61, -2160.40, 29.61),
		authorizedJobs = { 'ammu', 'police' },
		locked = true,
		distance = 3,
		size = 1
	},


		-- Mairie


	{
		objName='prop_michael_door',
		objCoords = vector3(218.26, -912.33, 36.78),
		textCoords = vector3(218.26, -912.33, 36.78),
		authorizedJobs = { 'state' },
		locked = true,
		distance = 3,
		size = 1
	},

	{
		objName='prop_michael_door',
		objCoords = vector3(220.17, -913.18, 36.78),
		textCoords = vector3(220.17, -913.18, 36.78),
		authorizedJobs = { 'state' },
		locked = true,
		distance = 3,
		size = 1
	},

	{
		objName='hei_prop_heist_cutscene_doorc_l',
		objCoords = vector3(206.75, -933.20, 30.69),
		textCoords = vector3(206.75, -933.20, 30.69),
		authorizedJobs = { 'state' },
		locked = true,
		distance = 3,
		size = 1
	},

	{
		objName='hei_prop_heist_cutscene_doorc_l',
		objCoords = vector3(205.93, -932.60, 30.69),
		textCoords = vector3(205.93, -932.60, 30.69),
		authorizedJobs = { 'state' },
		locked = true,
		distance = 3,
		size = 1
	},

	{
		objName='hei_prop_heist_cutscene_doorc_l',
		objCoords = vector3(209.05, -928.08, 30.69),
		textCoords =vector3(209.05, -928.08, 30.69),
		authorizedJobs = { 'state' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='hei_prop_heist_cutscene_doorc_l',
		objCoords = vector3(210.23, -929.00, 30.69),
		textCoords =vector3(209.05, -928.08, 30.69),
		authorizedJobs = { 'state' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='v_ilev_arm_secdoor',
		objCoords = vector3(201.80, -914.24, 30.69),
		textCoords = vector3(201.80, -914.24, 30.69),
		authorizedJobs = { 'state' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='v_ilev_arm_secdoor',
		objCoords = vector3(221.15, -888.09, 36.65),
		textCoords = vector3(221.15, -888.09, 36.65),
		authorizedJobs = { 'state' },
		locked = true,
		distance = 3,
		size = 1
	},


	-- Hopital
	{
		objName='v_ilev_fib_door3',
		objCoords = vector3(323.83, -586.37, 43.28),
		textCoords = vector3(323.83, -586.37, 43.28),
		authorizedJobs = { 'ambulance' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='v_ilev_cor_firedoorwide',
		objCoords = vector3(337.50, -578.19, 43.33),
		textCoords = vector3(337.50, -578.19, 43.33),
		authorizedJobs = { 'ambulance' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='v_ilev_fib_door3',
		objCoords = vector3(342.25, -587.00, 43.31),
		textCoords = vector3(342.25, -587.00, 43.31),
		authorizedJobs = { 'ambulance' },
		locked = true,
		distance = 3,
		size = 1
	},

	-- Security
	{
		objName='prop_fnclink_09gate1',
		objCoords = vector3(-469.14, -765.86, 46.95),
		textCoords = vector3(-469.14, -765.86, 46.95),
		authorizedJobs = { 'security' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='sm_14_mp_door_l',
		objCoords = vector3(-470.35, -725.57, 48.62),
		textCoords = vector3(-470.35, -725.57, 48.62),
		authorizedJobs = { 'security' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='sm_14_mp_door_l',
		objCoords = vector3(-470.43, -725.12, 48.60),
		textCoords = vector3(-470.43, -725.12, 48.60),
		authorizedJobs = { 'security' },
		locked = true,
		distance = 3,
		size = 1
	},

-- Journaliste

	{
		objName='v_ilev_fb_doorshortr',
		objCoords = vector3(-1046.04, -229.98, 39.01),
		textCoords = vector3(-1046.04, -229.98, 39.01),
		authorizedJobs = { 'journaliste' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='v_ilev_fb_doorshortl',
		objCoords = vector3(-1045.41, -231.17, 39.01),
		textCoords = vector3(-1045.41, -231.17, 39.01),
		authorizedJobs = { 'journaliste' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='v_ilev_fb_door01',
		objCoords = vector3(-1082.86, -259.86, 37.79),
		textCoords = vector3(-1082.86, -259.86, 37.79),
		authorizedJobs = { 'journaliste' },
		locked = true,
		distance = 3,
		size = 1
	},
	{
		objName='v_ilev_fb_door02',
		objCoords = vector3(-1081.94, -259.46, 37.79),
		textCoords = vector3(-1081.94, -259.46, 37.79),
		authorizedJobs = { 'journaliste' },
		locked = true,
		distance = 3,
		size = 1
	},

	{
		objName='sm_14_mp_door_l',
		objCoords = vector3(-430.16, 258.60, 83.00),
		textCoords = vector3(-430.16, 258.60, 83.00),
		authorizedJobs = { 'bahama' },
		locked = true,
		distance = 3,
		size = 1
	},
	--
	-- Addons
	--

	--[[
	-- Entrance Gate (Mission Row mod) https://www.gta5-mods.com/maps/mission-row-pd-ymap-fivem-v1
	{
		objName = 'prop_gate_airport_01',
		objCoords  = vector3(420.1, -1017.3, 28.0),
		textCoords = vector3(420.1, -1021.0, 32.0),
		authorizedJobs = { 'police' },
		locked = true,
		distance = 14,
		size = 2
	}
	--]]
}