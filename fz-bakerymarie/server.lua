local QBCore = exports['qb-core']:GetCoreObject()

------------ Drink scenes and things -----------------

QBCore.Functions.CreateUseableItem("almond_croissant", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-bakerymarie:client:BeberCafe', source)
        Player.Functions.RemoveItem('almond_croissant', 1)
    end
end)


QBCore.Functions.CreateUseableItem("bagel", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-bakerymarie:client:BeberCafe', source)
        Player.Functions.RemoveItem('bagel', 1)
    end
end)

QBCore.Functions.CreateUseableItem("butter_croissant", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-bakerymarie:client:BeberCafe', source)
        Player.Functions.RemoveItem('butter_croissant', 1)
    end
end)

QBCore.Functions.CreateUseableItem("cannoli", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-bakerymarie:client:BeberCafe', source)
        Player.Functions.RemoveItem('cannoli', 1)
    end
end)

QBCore.Functions.CreateUseableItem("cherry_crown_pastry", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-bakerymarie:client:BeberCafe', source)
        Player.Functions.RemoveItem('cherry_crown_pastry', 1)
    end
end)

QBCore.Functions.CreateUseableItem("chocolate_twista", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-bakerymarie:client:BeberCafe', source)
        Player.Functions.RemoveItem('chocolate_twista', 1)
    end
end)

QBCore.Functions.CreateUseableItem("croissant", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-bakerymarie:client:BeberCafe', source)
        Player.Functions.RemoveItem('croissant', 1)
    end
end)

QBCore.Functions.CreateUseableItem("pain_au_chocolat", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-bakerymarie:client:BeberCafe2', source)
        Player.Functions.RemoveItem('pain_au_chocolat', 1)
    end
end)

QBCore.Functions.CreateUseableItem("coffee", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-bakerymarie:client:coffee', source)
        Player.Functions.RemoveItem('coffee', 1)
    end
end)

QBCore.Functions.CreateUseableItem("pinacolada", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-bakerymarie:client:BeberCafe', source)
        Player.Functions.RemoveItem('pinacolada', 1)
    end
end)

QBCore.Functions.CreateUseableItem("sangria", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-bakerymarie:client:BeberCafe', source)
        Player.Functions.RemoveItem('sangria', 1)
    end
end)

QBCore.Functions.CreateUseableItem("screwdriver", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-bakerymarie:client:BeberCafe', source)
        Player.Functions.RemoveItem('screwdriver', 1)
    end
end)

QBCore.Functions.CreateUseableItem("strawdaquiri", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-bakerymarie:client:BeberCafe', source)
        Player.Functions.RemoveItem('strawdaquiri', 1)
    end
end)

QBCore.Functions.CreateUseableItem("strawmargarita", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemBySlot(item.slot) ~= nil then
        TriggerClientEvent('fz-bakerymarie:client:BeberCafe', source)
        Player.Functions.RemoveItem('strawmargarita', 1)
    end
end)

----------------------------------
------- pass invoice ------------

RegisterServerEvent("fz-bakerymarie:server:FaturarPlayer", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'bakerymarie' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.execute('INSERT INTO phone_invoices (citizenid, amount, society, sender, sendercitizenid) VALUES (@citizenid, @amount, @society, @sender, @sendercitizenid)', {
                            ['@citizenid'] = billed.PlayerData.citizenid,
                            ['@amount'] = amount,
                            ['@society'] = biller.PlayerData.job.name,
                            ['@sender'] = biller.PlayerData.charinfo.firstname,
                            ['@sendercitizenid'] = biller.PlayerData.citizenid
                        })
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must be a number above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You can not bill yourself...', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'The player is not online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No access', 'error')
        end
end)

---------------------------------------------
---------- Take money -------------------

RegisterNetEvent('fz-bakerymarie:server:Tirar10dolars', function()
   local src = source
   local Player = QBCore.Functions.GetPlayer(src)
	
   Player.Functions.RemoveMoney('bank', 10)
end)
