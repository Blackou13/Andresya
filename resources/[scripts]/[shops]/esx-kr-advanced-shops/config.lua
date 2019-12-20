Config                            = {}
Config.DrawDistance               = 20.0
Config.Locale = 'fr'
Config.DeliveryTime = 3600 -- IN SECOUNDS DEFAULT (18000) IS 5 HOURS / 300 MINUTES
Config.TimeBetweenRobberies = 43200
Config.CutOnRobbery = 1 -- IN PERCENTAGE FROM THE TARGET SHOP
Config.RequiredPolices = 3 -- For the robbery
Config.SellValue = 1 -- This is the shops value divided by 2
Config.ChangeNamePrice = 500 -- In $ - how much you can change the shops name for

-- CONFIG ITEMS, DON'T FORGET TO ADD CORRECT NUMBER IN THE BRACKETS
Config.Items = {
  [1] = {label = "Bouteille d'eau",       item = "water",        price = 2},
  [2] = {label = "Hamburger",      item = "hamburger",       price = 5},
	[3] = {label = "Donuts",      item = "donut",       price = 3},
	[4] = {label = "Paquet de Chips",      item = "chips",       price = 2},
	[5] = {label = "Barre de Chocolat",      item = "chocolate",       price = 4},
	[6] = {label = "Canette de Coca-Cola",      item = "cocacola",       price = 5},
	[7] = {label = "Café",      item = "coffe",       price = 4},
	[8] = {label = "Cupcake",      item = "cupcake",       price = 3},
	[9] = {label = "Sprunk",      item = "sprunk",       price = 5},
	[10] = {label = "Lait",      item = "milk",       price = 4},
	[11] = {label = "Sandwich",      item = "sandwich",       price = 6},
  [12] = {label = "Téléphone",      item = "tel",       price = 100},
  [13] = {label = "Carte SIM",      item = "sim",       price = 25},
  [14] = {label = "Croquettes",      item = "croquettes",       price = 10},
  [14] = {label = "Jumelles",      item = "jumelles",       price = 75},
}

Config.Images = {
  [1] =  {item = "water",   src = "img/bottle.png"},
  [2] =  {item = "hamburger",   src = "img/burger.png"},
  [3] =  {item = "canette_biere",   src = "img/biere.png"},
  [4] =  {item = "absinthe",   src = "img/absinthe.png"},
  [5] =  {item = "champagne",   src = "img/champagne.png"},
  [6] =  {item = "chips",   src = "img/chips.png"},
  [7] =  {item = "chocolate",   src = "img/choco.png"},
  [8] =  {item = "cocacola",   src = "img/cocacola.png"},
  [9] =  {item = "coffe",   src = "img/cafe.png"},
  [10] = {item = "cupcake",   src = "img/cupcake.png"},
  [11] = {item = "gintonic",   src = "img/tonic.png"},
  [12] = {item = "sprunk",   src = "img/sprunk.png"},
  [13] = {item = "milk",   src = "img/lait.png"},
  [14] = {item = "vine",   src = "img/vin.png"},
  [15] = {item = "sandwich",   src = "img/sandwich.png"},
  [16] = {item = "tequila",   src = "img/tequila.png"},
  [17] = {item = "vodka",   src = "img/vodka.png"},
  [18] = {item = "whisky",   src = "img/whisky.png"},
  [19] = {item = "tel",   src = "img/phone.png"},
  [20] = {item = "sim",   src = "img/sim.png"},
  [21] = {item = "grand_cru",   src = "img/cru.png"},
  [22] = {item = "jus_raisin",   src = "img/jusraisin.png"},
  [23] = {item = "carokit",   src = "img/kit.png"},
  [24] = {item = "fixkit",   src = "img/kit.png"},
  [25] = {item = "croquettes",   src = "img/croq.png"},
  [26] = {item = "gitanes",   src = "img/cig.png"},
  [27] = {item = "malbora",   src = "img/cig.png"},
  [28] =  {item = "donut",   src = "img/donuts.png"},

  
}

Config.Zones = {

  ShopCenter = {
    Pos   = {x = 215.43,   y = -907.66,  z = 36.78, number = 'center'},
  },
  Shop1 = {
    Pos   = {x = 373.875,   y = 325.896,  z = 102.566, number = 1},
  },
  Shop2 = {
    Pos = {x = 2557.458,  y = 382.282,  z = 107.622, number = 2},
  },
  Shop3 = {
    Pos = {x = -3038.939, y = 585.954,  z = 6.908, number = 3},
  },
  Shop4 = {
    Pos = {x = -1487.553, y = -379.107,  z = 39.163, number = 4},
  },
  Shop5 = {
    Pos = {x = 1392.562,  y = 3604.684,  z = 33.980, number = 5},
  },
  Shop6 = {
    Pos = {x = -2968.243, y = 390.910,   z = 14.043, number = 6},
  },
  Shop7 = {
    Pos = {x = 2678.916,  y = 3280.671, z = 54.241, number = 7},
  },
  Shop8 = {
    Pos = {x = -48.519,   y = -1757.514, z = 28.421, number = 8},
  },
  Shop9 = {
    Pos = {x = 1163.373,  y = -323.801,  z = 68.205, number = 9},
  },
  Shop10 = {
    Pos = {x = -707.501,  y = -914.260,  z = 18.215, number = 10},
  },
  Shop11 = {
    Pos = {x = -1820.523, y = 792.518,   z = 137.118, number = 11},
  },
  Shop12 = {
    Pos = {x = 1698.388,  y = 4924.404,  z = 41.063, number = 12},
  },
  Shop13 = {
    Pos = {x = 1961.464,  y = 3740.672, z = 31.343, number = 13},
  },
  Shop14 = {
    Pos = {x = 1135.808,  y = -982.281,  z = 45.415, number = 14},
  },
  Shop15 = {
    Pos = {x = 25.88,   y = -1347.1, z = 28.5, number = 15},
  },
  Shop16 = {
    Pos = {x = -1393.409, y = -606.624,  z = 29.319, number = 16},
  },
  Shop17 = {
    Pos = {x = 547.431,   y = 2671.710, z = 41.156, number = 17},
  },
  Shop18 = {
    Pos = {x = -3241.927, y = 1001.462, z = 11.830, number = 18},
  },
  Shop19 = {
    Pos = {x = 1166.024,  y = 2708.930,  z = 37.157, number = 19},
  },
  Shop20 = {
    Pos = {x = 1729.216,  y = 6414.131, z = 34.037, number = 20}
  },
  Robbery1 = {
    Pos   = {x = 379.19, y = 332.08, z = 102.57, number = 101, red = true},
  },
  Robbery2 = {
    Pos   = {x = 2550.15, y = 385.37, z = 107.62, number = 102, red = true},
  },
  Robbery3 = {
    Pos   = {x = -3047.08, y = 586.37, z = 6.91, number = 103, red = true},
  },
  Robbery4 = {
    Pos   = {x = -1480.09, y = -373.35, z = 38.16, number = 104, red = true},
  },
  Robbery5 = {
    Pos   = {x = 1396.21, y = 3611.28, z = 33.98, number = 105, red = true},
  },
  Robbery6 = {
    Pos   = {x = -2959.15, y = 388.54, z = 13.04, number = 106, red = true},
  },
  Robbery7 = {
    Pos   = {x = 2673.59, y = 3286.2, z = 54.24, number = 107, red = true},
  },
  Robbery8 = {
    Pos   = {x = -43.7, y = -1750.58, z = 28.42, number = 108, red = true},
  },
  Robbery9 = {
    Pos   = {x = 1161.15, y = -315.73, z = 68.21, number = 109, red = true},
  },
  Robbery10 = {
    Pos   = {x = -708.29, y = -905.99, z = 18.22, number = 110, red = true},
  },
  Robbery11 = {
    Pos   = {x = -1827.32, y = 798.78, z = 137.16, number = 111, red = true},
  },
  Robbery12 = {
    Pos   = {x = 1705.41, y = 4920.56, z = 41.06, number = 112, red = true},
  },
  Robbery13 = {
    Pos   = { x = 1959.04, y = 3747.93, z = 31.34, number = 113, red = true},
  },
  Robbery14 = {
    Pos   = {x = 1126.83, y = -982.6, z = 44.42, number = 114, red = true},
  },
  Robbery15 = {
    Pos   = {x = 28.48, y = -1339.94, z = 28.5, number = 115, red = true},
  },
  Robbery16 = {
    Pos   = {x = -1384.41, y = -628.71, z = 29.82, number = 116, red = true},
  },
  Robbery17 = {
    Pos   = {x = 546.86, y = 2663.71, z = 41.16, number = 117, red = true},
  },
  Robbery18= {
    Pos   = {x = -3249.3, y = 1004.54, z = 11.83, number = 118, red = true},
  },
  Robbery19 = {
    Pos   = {x = 1166.89, y = 2718.14, z = 36.16, number = 119, red = true},
  },
  Robbery20= {
    Pos   = {x = 1734.88, y = 6419.83, z = 34.04, number = 120, red = true},
  },
}