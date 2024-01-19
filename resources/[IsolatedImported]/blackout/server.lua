local QBCore = exports['qb-core']:GetCoreObject()

local Cooldown = false

players = {}
entities = {}

-- Syncing Server Side Events

RegisterNetEvent('sd-blackout:server:blackoutsync', function()
    TriggerClientEvent('sd-blackout:client:blackoutsync', -1)
end)

RegisterNetEvent('sd-blackout:server:restoresync', function()
    TriggerClientEvent('sd-blackout:client:restoresync', -1)
end)

RegisterNetEvent('sd-blackout:server:lightsoff', function()
    TriggerClientEvent('sd-blackout:client:lightsoff', -1)
end)

RegisterNetEvent('sd-blackout:server:lightson', function()
    TriggerClientEvent('sd-blackout:client:lightson', -1)
end)


-- Starting Cooldown

RegisterServerEvent('sd-blackout:server:startr', function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)

        TriggerEvent('sd-blackout:server:coolout')
	end)

-- Item Check

QBCore.Functions.CreateCallback('sd-blackout:server:hasBomb', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local hasBombItem = Player.Functions.GetItemByName('c4_bomb')
 
	if hasBombItem ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

-- Remove Item

RegisterNetEvent('sd-blackout:server:removeC4bomb', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    Player.Functions.RemoveItem('c4_bomb', 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["c4_bomb"], "remove")
end)

-- Minimum Cop Callback

QBCore.Functions.CreateCallback('sd-blackout:server:getCops', function(source, cb)
    local amount = 0
    local players = QBCore.Functions.GetQBPlayers()
    for _, Player in pairs(players) do
        if Player.PlayerData.job.name == "police" and Player.PlayerData.job.onduty then
            amount = amount + 1
        end
    end
    cb(amount)
end)

-- Cooldown

RegisterServerEvent('sd-blackout:server:coolout', function()
    Cooldown = true
    local timer = Config.Cooldown * 1000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            Cooldown = false
        end
    end
end)

QBCore.Functions.CreateCallback("sd-blackout:server:coolc",function(source, cb)
    if Cooldown then
        cb(true)
    else
        cb(false) 
    end
end)
