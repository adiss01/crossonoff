local cross = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if IsControlJustPressed(0, 166) then 
            if cross then
                exports['mythic_notify']:SendAlert('inform', 'cross açıldı')
                cross = false
            elseif not cross then 
                exports['mythic_notify']:SendAlert('inform', 'cross kapandı')
                cross = true
            end
        end
        if cross then 
            HideHudComponentThisFrame(14)
        elseif not cross then 
            local ped = PlayerPedId()
            local weapon = GetSelectedPedWeapon(ped)
    
            if weapon == GetHashKey("WEAPON_") then       
                ShowHudComponentThisFrame(14)
            end
        end
    end
end)


-- discord: ^adişş 🔥#5555
-- ve ortak: RY#4444
