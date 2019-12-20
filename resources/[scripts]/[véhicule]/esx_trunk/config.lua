Config	=	{}

Config.CheckOwnership = false -- If true, Only owner of vehicle can store items in trunk.
Config.AllowPolice = true -- If true, police will be able to search players' trunks.

Config.Locale   = 'fr'

 -- Limit, unit can be whatever you want. Originally grams (as average people can hold 25kg)
Config.Limit = 25000

-- Default weight for an item:
	-- weight == 0 : The item do not affect character inventory weight
	-- weight > 0 : The item cost place on inventory
	-- weight < 0 : The item add place on inventory. Smart people will love it.
Config.DefaultWeight = 1000

Config.localWeight = {

    malt = 1000,
    canette_biere = 1000,
    ble = 1000,
    farine = 1000,
    fish = 250,
    wood = 1000,
    cutted_wood = 1000,
    packaged_plank = 1000,
    alive_chicken = 1000,
    slaughtered_chicken = 1000,
    packaged_chicken = 1000,
    wool = 500,
    fabric = 500,
    clothe = 500,
    bandage = 500,
    medikit = 1000,
    absinthe = 1000,
    bread = 250,
    champagne = 500,
    chips = 250,
    chocolate = 250,
    cocacola = 250,
    coffe = 250,
    cupcake = 250,
    donut = 250,
    gintonic = 500,
    hamburger = 500,
    milk = 250,
    sandwich = 500,
    sprunk = 500,
    tequila = 500,
    vodka = 500,
    water = 250,
    whisky = 500,
    raisin = 500, 
    jus_raisin = 500,
    vine = 500,
    grand_cru = 500,
    tabacblond = 500,
    tabacblondsec = 500,
    tabacbrun = 500,
    tabacbrunsec = 500,
    splif = 500,
    gitanes = 500,
    malbora = 500, 
    weed = 500,
    weed_pooch = 500, 
    coke = 500,
    coke_pooch = 500,
    meth = 500,
    meth_pooch = 500,
    opium = 500,
    opium_pooch = 500,

}

Config.VehicleLimit = {
    [0] = 30000, --Compact
    [1] = 40000, --Sedan
    [2] = 200000, --SUV
    [3] = 40000, --Coupes
    [4] = 40000, --Muscle
    [5] = 25000, --Sports Classics
    [6] = 40000, --Sports
    [7] = 5000, --Super
    [8] = 0, --Motorcycles
    [9] = 200000, --Off-road
    [10] = 800000, --Industrial
    [11] = 100000, --Utility
    [12] = 300000, --Vans
    [13] = 0, --Cycles
    [14] = 100000, --Boats
    [15] = 0, --Helicopters
    [16] = 0, --Planes
    [17] = 40000, --Service
    [18] = 350000, --Emergency
    [19] = 0, --Military
    [20] = 350000, --Commercial
    [21] = 0, --Trains

}

Config.VehicleModel = {

    brickade    = 1500000, --Commercial
    rallytruck  = 1500000, --Commercial
    armarello  = 1000000, --Commercial
    hauler  = 1000000, --Commercial
    ramvan  = 1000000, --Commercial
    phantom  = 800000, --Commercial
    phantomhd  = 800000, --Commercial
    vnl780  = 800000, --Commercial
    guardian    = 350000, --Vans

}

Config.VehiclePlate = {
	taxi        = "TAXI",
	cop         = "LSPD",
	ambulance   = "EMS0",
	mecano	    = "MECA",
}
