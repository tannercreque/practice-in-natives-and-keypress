function alert(msg)
    SetTextComponentFormat("STRING")
    AddtextComponentString(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end

function notify(msg)
    SetNotificationTextEntry("STRING")
    AddtextComponentString(msg)
    DrawNotification(true,false)
end

function giveWeapon(hash)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(hash), 999, false, false)
end

function spawnCar(car)
    local car = GetHashKey(car)
    
    RequestModel(car)
    while not HasModelLoaded(car) do 
        RequestModel(car)
        Citizen.Wait(0)
    end

    local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1), false))
    local vehicle = CreateVehicle(car, x + 3, y + 3, z + 1, 0.0, true, false)
    SetEntityAsMissionEntity(vehicle,true, true)
end

function weaponComponent(weaponHash, component)
    if HasPedGotWeapon(GetPlayerPed(-1), GetHashKey(weaponHash), false) then
        GiveWeaponeComponentToPed(GetPlayerPed(-1), GetHashKey(weaponHash), GetHashKey(component))
    end
end