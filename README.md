 qb-core/shared/items.lua
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


--qb-core/shared/job.lua

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

For Help Join Discord https://discord.gg/ZT33gygV
