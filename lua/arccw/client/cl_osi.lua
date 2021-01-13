
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