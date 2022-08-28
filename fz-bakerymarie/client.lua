local QBCore = exports['qb-core']:GetCoreObject()

--- Scenes and Things for Job -------------

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			if PlayerData.job.name == "bakerymarie" then
				TriggerServerEvent("QBCore:ToggleDuty")
			end
		end
	end)
end)

--// Duty \\--
RegisterNetEvent('fz-bakerymarie:On', function()
	onDuty = not onDuty
	TriggerServerEvent("QBCore:ToggleDuty")
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)


----------------------------------------------
------------------ Menus ---------------------

-- QB-MENU --

RegisterNetEvent('qb-menu:ViewLimeysMenu2', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| Bakery Marie Menu |",
            isMenuHeader = true, 
        },
        {
            
            header = "• Drinks",
            txt = "",
            params = {
                event = "qb-menu:ViewLimeysDrinks2"
            }
        },
        {
            
            header = "• Food",
            txt = "",
            params = {
                event = "qb-menu:Foodmenu2"
            }
        },
        {
            id = 7,
            header = "Close (ESC)",
            isMenuHeader = true,
        },
    })
end)

RegisterNetEvent('qb-menu:ViewLimeysDrinks2', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| Drinks Menu |",
            isMenuHeader = true, 
        },
        {
            header = "Water",
            txt = "",
            params = {
            }
        },
        {
            header = "Cola",
            txt = "",
            params = {
            }
        },
        {
            header = "Coffee",
            txt = "",
            params = {
            }
        },
        {
            id = 7,
            header = "Back",
            params = {
                event = "qb-menu:ViewLimeysMenu2"
            }
        },
    })
end)

RegisterNetEvent('qb-menu:Foodmenu2', function(data)
    exports['qb-menu']:openMenu({
        {
            
            header = "| Food Menu |",
            isMenuHeader = true, 
        },
        {
            header = "Almond Croissant",
            txt = "",
            params = {
            }
        },
        {
            header = "Bagel",
            txt = "",
            params = {
            }
        },
        {
            header = "Butter Broissant",
            txt = "",
            params = {
            }
        },
        {
            header = "Cannoli",
            txt = "",
            params = {
            }
        },
        {
            header = "Cherry Crown Pastry",
            txt = "",
            params = {
            }
        },
        {
            header = "Chocolate Twista",
            txt = "",
            params = {
            }
        },
        {
            header = "Croissant",
            txt = "",
            params = {
            }
        },
        {
            header = "Pain Au Chocolat",
            txt = "",
            params = {
            }
        },
        {
            id = 7,
            header = "Back",
            params = {
                event = "qb-menu:ViewLimeysMenu2"
            }
        },
    })
end)



RegisterNetEvent('fz-bakerymarie:client:Cakes', function()
    exports['qb-menu']:openMenu({
        {
            header = "Food",
            isMenuHeader = true,
        },
        {
            header = "Bacon and Eggs",
            txt = "",
            params = {
                event = "fz-bakerymarie:client:PegarCroasantOvo",
            }
        },
        {
            header = "LT Sandwich",
            txt = "",
            params = {
                event = "fz-bakerymarie:client:PegarMuffinChocolate",
            }
        },
        {
            header = "Cheese Burger",
            txt = "",
            params = {
                event = "fz-bakerymarie:client:PegarCupcakeBaunilha",
            }
        },
        {
            header = "Cheese Sandwich",
            txt = "",
            params = {
                event = "fz-bakerymarie:client:PegarCupcakeMorango",
            }
        },
        {
            header = "Eggs Sandwich",
            txt = "",
            params = {
                event = "fz-bakerymarie:client:PegarNutelaPancake",
            }
        },
        {
            header = "Grilled Wrap",
            txt = "",
            params = {
                event = "fz-bakerymarie:client:PegarPanquecaMel",
            }
        },
        {
            header = "Hamburger",
            txt = "",
            params = {
                event = "fz-bakerymarie:client:PegarCafe2",
            }
        },
        {
            header = "Close",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    })
end)
RegisterNetEvent('fz-bakerymarie:client:Clock', function()
    exports['qb-menu']:openMenu({
        {
            header = "Clock In/Out",
            txt = "Duty Optints",
            params = {
                event = "fz-bakerymarie:On",
            }
        },
        {
            header = "Close",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
    })
end)

RegisterNetEvent('fz-bakerymarie:client:MenuBebidas', function()
    exports['qb-menu']:openMenu({
        {
            header = "Drinks",
            isMenuHeader = true,
        },
        {
            header = "❌",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "Cola",
            txt = "",
            params = {
                event = "fz-bakerymarie:client:PegarCola",
            }
        },
        {
            header = "Water",
            txt = "",
            params = {
                event = "fz-bakerymarie:client:PegarAgua",
            }
        },
        {
            header = "Coffee",
            txt = "",
            params = {
                event = "fz-bakerymarie:client:PegarIceTeaLimao",
            }
        },
    })
end)

RegisterNetEvent('fz-bakerymarie:client:chocolate', function()
    exports['qb-menu']:openMenu({
        {
            header = "chocolates",
            isMenuHeader = true,
        },
        {
            header = "❌",
            txt = "",
            params = {
                event = "qb-menu:closeMenu",
            }
        },
        {
            header = "chocolates",
            txt = "",
            params = {
                event = "fz-bakerymarie:client:Chocolates",
            }
        },
        {
            header = "chocolate",
            txt = "",
            params = {
                event = "fz-bakerymarie:client:Chocolates2",
            }
        },
    })
end)

------------- Get food/drinks ----------


RegisterNetEvent('fz-bakerymarie:client:PegarCroasantOvo', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Bacon and Eggs...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "baconeggs", 1)
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:PegarMuffinChocolate', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get BLT Sandwich...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "bltsandwich", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:PegarCupcakeBaunilha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cheese Burger...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "cheeseburger", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:PegarCupcakeMorango', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cheese Sandwich...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "cheesesandwich", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:PegarNutelaPancake', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Eggs Sandwich...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "eggsandwich", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:PegarPanquecaMel', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Grilled Wrap...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "grilledwrap", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:PegarCafe2', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Hamburger...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "hamburger", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:PegarLatte', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A LATTE...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "bakerymarie-latte", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:PegarCappuccino', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A CAPPUCCINO...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "bakerymarie-cappuccino", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:PegarMocha', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'TAKING A MOCHA...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "bakerymarie-mocha", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:PegarCafe', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Coffee...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "coffee", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:almond_croissant', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"petting"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Almond Croissant...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "almond_croissant", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:Bagel', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Bagel...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "bagel", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:butter_croissant', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Butter Croissant...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "butter_croissant", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:cannoli', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cannoli...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "cannoli", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:cherry_crown_pastry', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cherry Crown Pastry...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "cherry_crown_pastry", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:chocolate_twista', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Chocolate Twista...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "chocolate_twista", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:croissant', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Croissant...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "croissant", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:pain_au_chocolat', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Pain Au Chocolat...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "pain_au_chocolat", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:PegarCola', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cola...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "ecola", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:PegarAgua', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Water...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "water_bottle", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:PegarIceTeaLimao', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Coffee...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "coffee", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)


RegisterNetEvent('fz-bakerymarie:client:Cola', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Cola...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "ecolalight", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:PegarSprunk', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Margarita...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "margarita", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:Pinacolada', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Pina Colada...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "pinacolada", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:Screwdriver', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Screwdriver...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "screwdriver", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:Sangria', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Sangria...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "sangria", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:StrawberryMargarita', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"handshake"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Strawberry Margarita...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "strawmargarita", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:strawdaquiri', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"warmth"})
    QBCore.Functions.Progressbar('abrir_vitrine', 'Get Dount...', 2700, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent('QBCore:Server:AddItem', "beandonut", 1)
	TriggerServerEvent('fz-bakerymarie:server:Tirar10dolars')
    end)
end)

----------------------------------------------
----------- Eat scenes and things -------------

RegisterNetEvent('fz-bakerymarie:client:BeberCafe', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"egobar"})
    QBCore.Functions.Progressbar('beber_cafe', 'Eating...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(30, 40))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:BeberCafe2', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('beber_cafe', 'Eating...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(30, 40))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:coffee', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"coffee"})
    QBCore.Functions.Progressbar('beber_cafe', 'Drinking Coffee...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('hud:server:RelieveStress', math.random(10, 30))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:ComerBolo', function() 
    TriggerEvent('animations:client:EmoteCommandStart', {"donut"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING CAKE...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "hunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + math.random(40, 70))
        TriggerServerEvent('hud:server:SetWaterStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:ComerPanquecas', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"sandwich"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING PANCAKE...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent("QBCore:Server:SetMetaData", "water", QBCore.Functions.GetPlayerData().metadata["water"] + math.random(40, 70))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

RegisterNetEvent('fz-bakerymarie:client:BeberRefrigerantes', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"cup"})
    QBCore.Functions.Progressbar('beber_cafe', 'EATING PANCAKE...', 2700, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerServerEvent('hud:server:RelieveStress', math.random(10, 30))
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

------------------------------------------------
----------- washbasin -------------------------

RegisterNetEvent('fz-bakerymarie:client:washbasin', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"uncuff"})
    QBCore.Functions.Progressbar('name_here', 'Washing Hands...', 2700, false, true, { -- Name | Label | Time | useWhileDead | canCancel
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    end)
end)

-----------------------------------------------
------------- Trays ----------------------

RegisterNetEvent('fz-bakerymarie:client:tray1', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traybakerymarie1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traybakerymarie1", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('fz-bakerymarie:client:tray2', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traybakerymarie2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traybakerymarie2", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('fz-bakerymarie:client:tray3', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traybakerymarie3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traybakerymarie3", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('fz-bakerymarie:client:tray4', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traybakerymarie4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traybakerymarie4", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('fz-bakerymarie:client:tray5', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Traybakerymarie5")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Traybakerymarie5", {
        maxweight = Config.TrayWeight,
        slots = Config.TraySlots,
    })
end)

RegisterNetEvent('fz-bakerymarie:client:storge', function()
    TriggerEvent("inventory:client:SetCurrentStash", "Storage")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Storage", {
        maxweight = 2000000,
        slots = 42,
    })
end)

for k, v in pairs(Config.Locations) do
    if Config.Locations[k].zoneEnable then
        blip = AddBlipForCoord(Config.Locations[k].blip)
        SetBlipAsShortRange(blip, true)
        SetBlipSprite(blip, 106)
        SetBlipColour(blip, Config.Locations[k].blipcolor)
        SetBlipScale(blip, 0.6)
        SetBlipDisplay(blip, 6)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString("Bakery Marie")
        EndTextCommandSetBlipName(blip)
    end
end

----------------------------------------------
-------- pass invoices ----------------------

RegisterNetEvent("fz-bakerymarie:client:invoicePlayer", function()
    local dialog = exports['qb-input']:ShowInput({
        header = "Bill",
        submitText = "Bill Player",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'id',
                text = 'paypal id'
            },
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = '$ amount!'
            }
        }
    })
    if dialog then
        if not dialog.id or not dialog.amount then return end
        TriggerServerEvent("fz-bakerymarie:server:invoicePlayer", dialog.id, dialog.amount)
    end
end)
