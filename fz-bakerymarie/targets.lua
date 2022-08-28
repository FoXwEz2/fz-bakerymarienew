Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("bakerymarieCroissant", vector3(390.25369, -795.4208, 29.247968), 0.6, 2.0, {
        name = "bakerymarieCroissant",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-bakerymarie:client:almond_croissant",
            icon = "fas fa-temperature-high",
            label = "Get Almond Croissant",
            job = "bakerymarie",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})

    exports['qb-target']:AddBoxZone("Bagel", vector3(389.12878, -797.086, 29.278888), 0.6, 1.4, {
        name = "Bagel",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-bakerymarie:client:Bagel",
            icon = "fas fa-coffee",
            label = "Get Bagel",
            job = "bakerymarie",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})

    exports['qb-target']:AddBoxZone("bakerymarieDrinks", vector3(386.89132, -797.0352, 29.281032), 0.6, 1.4, {
        name = "bakerymarieDrinks",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-bakerymarie:client:MenuBebidas",
            icon = "fas fa-temperature-high",
            label = "Use Drinks",
            job = "bakerymarie",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})


    exports['qb-target']:AddBoxZone("bakerymarie-butter_croissant", vector3(390.56765, -797.0729, 29.267488), 0.6, 1.4, {
        name = "bakerymarie-butter_croissant",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-bakerymarie:client:butter_croissant",
            icon = "fas fa-temperature-high",
            label = "Get Butter Croissant",
            job = "bakerymarie",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})

    exports['qb-target']:AddBoxZone("bakerymarie-cannoli", vector3(387.84011, -793.0546, 29.109277), 1.6, 1.6, {
        name = "bakerymarie-cannoli",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-bakerymarie:client:cannoli",
            icon = "fas fa-temperature-high",
            label = "Get Chocolates",
            job = "bakerymarie",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})

    exports['qb-target']:AddBoxZone("bakerymarie-Pastry", vector3(389.95867, -793.1054, 29.202676), 1.6, 1.6, {
        name = "bakerymarie-Pastry",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-bakerymarie:client:cherry_crown_pastry",
            icon = "fas fa-temperature-high",
            label = "Get Cherry Crown Pastry",
            job = "bakerymarie",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})

    exports['qb-target']:AddBoxZone("bakerymarie-chocolate_twista", vector3(391.87426, -790.0474, 29.357429), 1.6, 1.6, {
        name = "bakerymarie-chocolate_twista",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-bakerymarie:client:chocolate_twista",
            icon = "fas fa-temperature-high",
            label = "Get Chocolate Twista",
            job = "bakerymarie",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})

    exports['qb-target']:AddBoxZone("bakerymarie-croissant", vector3(389.94451, -790.0239, 29.407644), 1.6, 1.6, {
        name = "bakerymarie-croissant",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-bakerymarie:client:croissant",
            icon = "fas fa-temperature-high",
            label = "Get croissant",
            job = "bakerymarie",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})

    exports['qb-target']:AddBoxZone("bakerymarie-Chocolat", vector3(388.02798, -790.0592, 29.474847), 1.6, 1.6, {
        name = "bakerymarie-Pastry",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-bakerymarie:client:pain_au_chocolat",
            icon = "fas fa-temperature-high",
            label = "Get Pain Au Chocolat",
            job = "bakerymarie",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})

    exports['qb-target']:AddBoxZone("bakerymarie-washbasin", vector3(841.21636, -123.7924, 79.774948), 1, 1, {
        name = "bakerymarie-washbasin",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-bakerymarie:client:washbasin",
            icon = "fas fa-hand-holding",
            label = "Wash Hands",
            job = "bakerymarie",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})
    exports['qb-target']:AddBoxZone("bakerymarie-washbasin2", vector3(382.53271, -792.1834, 29.267532), 1, 1, {
        name = "bakerymarie-washbasin2",
        heading = 340,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-bakerymarie:client:washbasin",
            icon = "fas fa-beer",
            label = "Washing Hands",
            job = "bakerymarie",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})

    exports['qb-target']:AddBoxZone("bakerymarie-storage", vector3(382.82702, -794.1727, 29.267524), 0.8, 0.8, {
        name = "bakerymarie-storage",
        heading = 250,
        debugpoly = false,
    }, {
        options = {
            {  
            event = "fz-bakerymarie:client:storge",
            icon = "fas fa-clipboard",
            label = "Storage",
            canInteract = function()
                if not onDuty then
                    return false
                else
                    return true
                end
            end,
        },
    },
    distance = 1.2
})


    exports['qb-target']:AddTargetModel(303280717, {
        options = {
            {  
                event = "fz-bakerymarie:client:invoicePlayer",
                icon = "fas fa-credit-card",
                label = "Charge Customer",
                job = "bakerymarie",
                canInteract = function()
                    if not onDuty then
                        return false
                    else
                        return true
                    end
                end,
            },
        },
        distance = 1.2
    })

    exports['qb-target']:AddTargetModel(-1524180747, {
        options = {
            {  
                event = "fz-bakerymarie:client:Clock",
                icon = "fas fa-clipboard",
                label = "Clock In/Out",
                job = "bakerymarie",
            },
        },
        distance = 1.2
    })

    exports['qb-target']:AddTargetModel(1421582485, {
        options = {
            {  
                event = "fz-bakerymarie:client:strawdaquiri",
                icon = "fas	fa-cookie",
                label = "Dount",
                job = "bakerymarie",
                canInteract = function()
                    if not onDuty then
                        return false
                    else
                        return true
                    end
                end,
            },
        },
        distance = 1.2
    })

end)
