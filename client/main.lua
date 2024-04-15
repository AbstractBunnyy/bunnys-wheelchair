local QBCore = exports['qb-core']:GetCoreObject()
local wheelChair = nil

RegisterNetEvent('wheelchair')
AddEventHandler('wheelchair', function()
    if not DoesEntityExist(wheelChair) then
        local wheelChairModel = 'iak_wheelchair'
        RequestModel(wheelChairModel)
        while not HasModelLoaded(wheelChairModel) do
            Citizen.Wait(0)
        end
        wheelChair = CreateVehicle(wheelChairModel, GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId()), true, false)
        SetVehicleOnGroundProperly(wheelChair)
        SetVehicleNumberPlateText(wheelChair, "PILLBOX".. math.random(9))
        SetPedIntoVehicle(PlayerPedId(), wheelChair, -1)
        SetModelAsNoLongerNeeded(wheelChairModel)
        local wheelChairPlate = GetVehicleNumberPlateText(wheelChair)
        TriggerEvent("vehiclekeys:client:SetOwner", wheelChairPlate)
        SetVehicleEngineOn(wheelChair, true, true)
        exports['LegacyFuel']:SetFuel(wheelChair, 100)
    elseif DoesEntityExist(wheelChair) and #(GetEntityCoords(wheelChair) - GetEntityCoords(PlayerPedId())) < 3.0 and GetPedInVehicleSeat(wheelChair,-1) == 0 then
        DeleteVehicle(wheelChair)
        wheelChair = nil
    else
        QBCore.Functions.Notify("Too far from the chair or someone is sitting on it")
    end
end)
