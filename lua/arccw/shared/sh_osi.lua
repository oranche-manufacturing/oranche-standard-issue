
-- SHARED (server and client)

ArcCW.OSI = {}

-- 9mm, 45acp, 10mm, smgs
ArcCW.OSI.Shells_LowCal = {
    "weapons/arccw_osi/casings/9mm_1.wav",
    "weapons/arccw_osi/casings/9mm_2.wav",
    "weapons/arccw_osi/casings/9mm_3.wav",
    "weapons/arccw_osi/casings/9mm_4.wav",
    "weapons/arccw_osi/casings/9mm_5.wav",
    "weapons/arccw_osi/casings/9mm_6.wav",
}

-- .50ae, 5.56, 7.62, carbines, assault rifles, battle rifles
ArcCW.OSI.Shells_MedCal = {

}

-- 12.7, 50bmg, 79mm Grenade
ArcCW.OSI.Shells_HighCal = {

}

-- fun gun you jerk off
ArcCW.OSI.Shells_Buckshot = {

}








-- CLIENT (client)

if CLIENT then
    CreateClientConVar("arccw_osi_particlequality", 3, true, false, "Quality of the muzzle effect. 0 is off, 1 is minimum, 2 is medium, and 3 is maximum.")

    local inform = [[

    0 - 
    Completely disabled, no particles

    1 - 
    Minimum, muzzle flash and 1x the particles

    2 - 
    Medium, 2x the particles

    3 - 
    Full, 3x the particles with gasblur]]

    local OSIPanel = {
        { type = "h", text = "#arccw.clientcfg" },
        { type = "o", text = "Particle Quality", var = "arccw_osi_particlequality",
                choices = {[0] = "0 - Disabled", [1] = "1 - Minimum", [2] = "2 - Medium", [3] = "3 - Full"}},
        { type = "c", text = inform },
    }

    function ArcCW_Options_OSI(panel)
        ArcCW.GeneratePanelElements(panel, OSIPanel)
    end

    hook.Add("PopulateToolMenu", "ArcCW_Options_OSI", function()
        spawnmenu.AddToolMenuOption("Options", "ArcCW", "ArcCW_Options_OSI", "OSI", "", "", ArcCW_Options_OSI)
    end)
end

-- SERVER (server)

if SERVER then
end