local blips = {
    -- Example blip
    {title="Police Station", colour=3, id=60, coords=vector3(425.1, -979.5, 30.7)},
    {title="Hospital", colour=2, id=61, coords=vector3(357.43, -593.36, 28.79)},
    {title="Mechanic", colour=5, id=72, coords=vector3(-211.55, -1324.55, 30.9)},
    -- Add more blips here
    

}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        local blip = AddBlipForCoord(info.coords.x, info.coords.y, info.coords.z)
        SetBlipSprite(blip, info.id)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 0.9)
        SetBlipColour(blip, info.colour)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(blip)
    end
end)