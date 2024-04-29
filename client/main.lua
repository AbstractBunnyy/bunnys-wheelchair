local QBCore = exports['qb-core']:GetCoreObject()
local wheelChair = nil

-- Load Config
local Config = nil
Citizen.CreateThread(function()
    Config = LoadConfig()
end)

function LoadConfig()
    local config = nil
    local configFile = LoadResourceFile(GetCurrentResourceName(), 'config.lua')
    if configFile then
        config = load(configFile)()
    else
        print("^1[ERROR]^7: Could not load config file!")
    end
    return config
end

RegisterNetEvent('wheelchair')
AddEventHandler('wheelchair', function()
    if not DoesEntityExist(wheelChair) then
        RequestModel(Config.WheelchairModel)
        while not HasModelLoaded(Config.WheelchairModel) do
            Citizen.Wait(0)
        end
        wheelChair = CreateVehicle(Config.WheelchairModel, GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), true, false)
        SetVehicleOnGroundProperly(wheelChair)
        SetVehicleNumberPlateText(wheelChair, "PILLBOX" .. math.random(9))
        SetPedIntoVehicle(PlayerPedId(), wheelChair, -1)
        SetModelAsNoLongerNeeded(Config.WheelchairModel)
        local wheelChairPlate = GetVehicleNumberPlateText(wheelChair)
        TriggerEvent("vehiclekeys:client:SetOwner", wheelChairPlate)
        SetVehicleEngineOn(wheelChair, true, true)
        exports[Config.FuelExportName]:SetFuel(wheelChair, 100)
    elseif DoesEntityExist(wheelChair) and #(GetEntityCoords(wheelChair) - GetEntityCoords(PlayerPedId())) < 3.0 and GetPedInVehicleSeat(wheelChair, -1) == 0 then
        DeleteVehicle(wheelChair)
        wheelChair = nil
    else
        TriggerEvent('chatMessage', '^1[ERROR]', {255, 0, 0}, "Too far from the chair or someone is sitting on it")
    end
end)
