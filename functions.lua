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