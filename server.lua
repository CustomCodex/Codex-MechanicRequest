ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Register the command for requesting repair
RegisterCommand('114', function(source, args, rawCommand)
    local xPlayer = ESX.GetPlayerFromId(source)
    local message = table.concat(args, " ")
    
    if not message or message == "" then
        TriggerClientEvent('esx:showNotification', source, 'You must provide a message with your request!')
        return
    end
    
    -- Check if the player is in a vehicle
    local vehicle = GetVehiclePedIsIn(GetPlayerPed(source), false)
    if not vehicle or vehicle == 0 then
        TriggerClientEvent('esx:showNotification', source, 'You must be in a vehicle to request repair!')
        return
    end
    
    -- Send the request to online mechanics
    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_mechanic', function(account)
        if account then
            local mechanics = {}
            for _, playerId in ipairs(GetPlayers()) do
                local xPlayer = ESX.GetPlayerFromId(playerId)
                if xPlayer and xPlayer.job.name == 'mechanic' then
                    table.insert(mechanics, playerId)
                end
            end

            if #mechanics > 0 then
                local playerCoords = GetEntityCoords(GetPlayerPed(source))
                for _, mechanicId in ipairs(mechanics) do
                    TriggerClientEvent('Codex-MechanicRequest:receiveRequest', mechanicId, source, message, playerCoords)
                end
                TriggerClientEvent('esx:showNotification', source, 'Your repair request has been sent!')
            else
                TriggerClientEvent('esx:showNotification', source, 'No mechanics are currently online.')
            end
        end
    end)
end, false)

-- Listen for mechanic requests from clients
RegisterNetEvent('Codex-MechanicRequest:acceptRequest')
AddEventHandler('Codex-MechanicRequest:acceptRequest', function(targetPlayerId)
    local xPlayer = ESX.GetPlayerFromId(source)
    local targetPlayer = ESX.GetPlayerFromId(targetPlayerId)
    
    if xPlayer and targetPlayer then
        local targetCoords = GetEntityCoords(GetPlayerPed(targetPlayerId))
        TriggerClientEvent('Codex-MechanicRequest:showMarker', xPlayer.source, targetCoords)
        TriggerClientEvent('esx:showNotification', xPlayer.source, 'Repair request accepted. Check your map for details.')
        TriggerClientEvent('esx:showNotification', targetPlayer.source, 'Your repair request has been accepted.')
    end
end)
