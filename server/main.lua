local function DeleteAllVehicles()
    for _, v in pairs(GetAllVehicles()) do
        if (not IsPedAPlayer(GetPedInVehicleSeat(v, -1))) then 
            DeleteEntity(v)
        end
    end
end

if Config.QBCore then
    local QBCore = exports['qb-core']:GetCoreObject()

    QBCore.Commands.Add('dvall', 'Delete all vehicles', {}, false, function()
        DeleteAllVehicles()
    end, 'admin')

else

    RegisterCommand('dvall', function()
        DeleteAllVehicles()
    end, true)
    
end