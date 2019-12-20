resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

ui_page('html/index.html') 

files({
  'html/index.html',
  'html/script.js',
  'html/style.css',
	'html/img/burger.png',
	'html/img/bottle.png',
	'html/img/donuts.png',
	'html/img/biere.png',
	'html/img/absinthe.png',
	'html/img/champagne.png',
	'html/img/chips.png',
	'html/img/choco.png',
	'html/img/cocacola.png',
	'html/img/cafe.png',
	'html/img/cupcake.png',
	'html/img/tonic.png',
	'html/img/sprunk.png',
	'html/img/lait.png',
	'html/img/vin.png',
	'html/img/sandwich.png',
	'html/img/tequila.png',
	'html/img/vodka.png',
	'html/img/whisky.png',
	'html/img/phone.png',
	'html/img/sim.png',
	'html/img/cru.png',
	'html/img/jusraisin.png',
	'html/img/kit.png',
	'html/img/croq.png',
	'html/img/cig.png',

  'html/font/vibes.ttf',
  'html/img/box.png',
	'html/img/carticon.png',
})

client_scripts {
  'config.lua',
  'client/main.lua',
  '@es_extended/locale.lua',
  'locales/en.lua',
  'locales/fr.lua',	
  'locales/sv.lua',
}

server_scripts {
  'config.lua',
  'server/main.lua',
  '@mysql-async/lib/MySQL.lua'
}
