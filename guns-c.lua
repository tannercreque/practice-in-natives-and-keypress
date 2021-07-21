RegisterCommand("clear", function)
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    notify("~r~ Cleared all weapons")
end

Citizen.CreateThread(function()
-- The (character) _key corresponds to a value given by the FiveM docs, which point to a specific key on your keyboard
    local h_key = 74   
    local x_key = 73
    while true do 
        Citizen.Wait(1)
        if IsControlJustReleased(1, h_key) then
            print ("The key" .. h_key .. "was pressed")
            giveWeapon("weapon_pistol")
            giveWeapon("weapon_knife")
            alert("~b~ You have been given a pistol and a knife!")
        end
    end

end)