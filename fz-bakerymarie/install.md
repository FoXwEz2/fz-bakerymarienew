I hope you have fun with this script and that it brings jobs and RP to your server

If you need support I now have a discord available, it helps me keep track of issues and give better support.

https://discord.gg/ZT33gygV


-------------------------------------------------------------------------------------------------

INSTALLATION

Add the item images to your inventory script

[qb] > qb-inventory > html > images

-------------------------------------------------------------------------------------------------

THESE GO IN YOUR SHARED.LUA IN nchub:

If you use my other scripts always double check there aren't duplicates

Under the QBShared.Items = {
	 --Fz-Bakerymarie
			-- Food
	['almond_croissant'] 				 	 = {['name'] = 'almond_croissant', 			  	  		['label'] = 'Almond Croissant', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'almond_croissant.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nice Croissant for your stomach'},
	['bagel'] 				 	 = {['name'] = 'bagel', 			  	  		['label'] = 'Bagel', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'bagel.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nice Croissant for your stomach'},
	['butter_croissant'] 				 	 = {['name'] = 'butter_croissant', 			  	  		['label'] = 'Butter Broissant', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'butter_croissant.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nice Croissant for your stomach'},
	['cannoli'] 				 	 = {['name'] = 'cannoli', 			  	  		['label'] = 'Cannoli ', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'cannoli.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nice Croissant for your stomach'},
	['cherry_crown_pastry'] 				 	 = {['name'] = 'cherry_crown_pastry', 			  	  		['label'] = 'Cherry Crown Pastry ', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'cherry_crown_pastry.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nice Croissant for your stomach'},
	['chocolate_twista'] 				 	 = {['name'] = 'chocolate_twista', 			  	  		['label'] = 'Chocolate Twista ', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'chocolate_twista.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nice Croissant for your stomach'},
	['croissant'] 				 	 = {['name'] = 'croissant', 			  	  		['label'] = 'Croissant ', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'croissant.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nice Croissant for your stomach'},
	['pain_au_chocolat'] 				 	 = {['name'] = 'pain_au_chocolat', 			  	  		['label'] = 'Pain Au Chocolat ', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'pain_au_chocolat.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Nice Croissant for your stomach'},

	--Soda
		["ecola"] 						= {["name"] = "ecola",  	    	 		["label"] = "eCola",		 			["weight"] = 100, 		["type"] = "item", 		["image"] = "ecola.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,   	["combinable"] = nil,   ["description"] = "", ['thirst'] = math.random(20, 30) },
		['water_bottle'] 				 = {['name'] = 'water_bottle', 			  	  	['label'] = 'Bottle of Water', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'water_bottle.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['coffee'] 				 		 = {['name'] = 'coffee', 			  	  		['label'] = 'Coffee', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'np_coffee.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pump 4 Caffeine'},

Under the QBShared.Jobs = {

	['bakerymarie'] = {
		label = 'Bakery Maire',
		defaultDuty = true,
		grades = {
            ['0'] = { name = 'Recruit', payment = 50 },
			['1'] = { name = 'Novice', payment = 75 },
			['2'] = { name = 'Experienced', payment = 100 },
			['3'] = { name = 'Advanced', payment = 125 },
			['4'] = { name = 'Manager', isboss = true, payment = 150 },
        },
	},


-------------------------------------------------------------------------------------------------

Custom emotes currently run through dpemotes, its the easier option and adds extra emotes for you to use :)
SOME OF THESE REQUIRE THE CONTRACT DLC

These go in your [standalone] > dpemotes > client > AnimationList.lua
At about line 1666, place these under DP.PropEmotes = {

	--qb-bakerymarie
   ["ecola"] = {"mp_player_intdrink", "loop_bottle", "E-cola", AnimationOptions =
   {    Prop = "prop_ecola_can", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
        EmoteMoving = true, EmoteLoop = true, }},
