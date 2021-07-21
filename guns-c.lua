RegisterCommand("clear", function)
    RemoveAllPedWeapons(GetPlayerPed(-1), true)
    notify("~r~ Cleared all weapons")
end

local cars = {
    "adder"
    "comet"
    "cheetah"
    "zentorno"
    "faggio"
}
RegisterCommand("car", function()

    local car = (cars[math.random(#cars)])
    spawnCar(car)
    notify("~g~You just spawned a random car from your list of cars!~h~~b~" .. car)

end)

RegisterCommand("die", function()
    SetEntityHealth(PlayerPedId(), 0)
    notify("~r~ Wasted!")
end)

Citizen.CreateThread(function()
-- The (character) _key corresponds to a value given by the FiveM docs, which point to a specific key on your keyboard
    local h_key = 74   
    local x_key = 73
    while true do 
        Citizen.Wait(1)
        if IsControlJustReleased(1, h_key) then
            print ("The key" .. h_key .. "was pressed")
            giveWeapon("weapon_pistol")
            giveWeapon("weapon_pumpshotgun")
                weaponComponent("weapon_pumpshotgun", "COMPONENT_AT_SR_SUPP")
                weaponComponent("weapon_pumpshotgun", "COMPONENT_AT_AR_FLSH")
            giveWeapon("weapon_knife")
            alert("~b~ You have been given weapons!")
        end
    end

end)