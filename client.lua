ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local repairBlip = nil

-- Show repair request marker on the map
RegisterNetEvent('Codex-MechanicRequest:showMarker')
AddEventHandler('Codex-MechanicRequest:showMarker', function(targetCoords)
    if repairBlip then
        RemoveBlip(repairBlip)
    end
    
    -- Create a new blip
    repairBlip = AddBlipForCoord(targetCoords.x, targetCoords.y, targetCoords.z)
    SetBlipSprite(repairBlip, 402) -- Sprite ID for repair tool icon
    SetBlipColour(repairBlip, 1) -- Color for the blip
    SetBlipScale(repairBlip, 1.0)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Wegenwacht Hulp')
    EndTextCommandSetBlipName(repairBlip)

    -- Optionally, you can set the blip to blink or add more details
    SetBlipAsShortRange(repairBlip, true)
    SetBlipFlashInterval(repairBlip, 1000) -- Flash interval in milliseconds
end)

-- Receive repair request
RegisterNetEvent('Codex-MechanicRequest:receiveRequest')
AddEventHandler('Codex-MechanicRequest:receiveRequest', function(sourceId, message, playerCoords)
    -- Show notification
    TriggerEvent('esx:showNotification', 'Repair request from Player ' .. sourceId .. ': ' .. message)

    -- Create or update the repair blip on the map
    if repairBlip then
        RemoveBlip(repairBlip)
    end
    
    repairBlip = AddBlipForCoord(playerCoords.x, playerCoords.y, playerCoords.z)
    SetBlipSprite(repairBlip, 402) -- Sprite ID for repair tool icon
    SetBlipColour(repairBlip, 1) -- Color for the blip
    SetBlipScale(repairBlip, 1.0)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString('Wegenwacht Hulp')
    EndTextCommandSetBlipName(repairBlip)

    -- Optionally, you can set the blip to blink or add more details
    SetBlipAsShortRange(repairBlip, true)
    SetBlipFlashInterval(repairBlip, 1000) -- Flash interval in milliseconds
end)
