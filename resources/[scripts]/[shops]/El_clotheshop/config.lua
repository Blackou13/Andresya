Config = {}
Config.Locale = 'fr'

Config.Price = 15

Config.DrawDistance = 100.0
Config.MarkerSize   = {x = 1.5, y = 1.5, z = 1.0}
Config.MarkerColor  = {r = 102, g = 102, b = 204}
Config.MarkerType   = 27

Config.Zones = {}

Config.Shops = {
  {x=70.519,    y=-1399.876, z=29.383}, --#1
  {x=430.811,    y=-798.989, z=29.498}, --#2
  {x=-831.346,    y=-1072.535, z=11.335}, --#3
  {x=-1192.039,    y=-776.669, z=17.332}, --#4
  {x=119.939,    y=-217.215, z=54.557}, --#5
  {x=-166.369,    y=-311.230, z=39.733}, --#6
  {x=-714.294,    y=-145.338, z=37.415}, --#7
  {x=-1444.468,    y=-230.901, z=49.810}, --#8
  {x=-3175.868,    y=1015.812, z=20.863}, --#9
  {x=-1110.328,    y=2709.745, z=19.115}, --#10
  {x=622.151,    y=2759.058, z=42.088}, --#11
  {x=1189.504,    y=2715.535, z=38.230}, --#12
  {x=1698.197,    y=4830.648, z=42.070}, --#13
  {x=13.695,    y=6513.442, z=31.885}, --#14
}

for i=1, #Config.Shops, 1 do

	Config.Zones['Shop_' .. i] = {
	 	Pos   = Config.Shops[i],
	 	Size  = Config.MarkerSize,
	 	Color = Config.MarkerColor,
	 	Type  = Config.MarkerType
  }

end
