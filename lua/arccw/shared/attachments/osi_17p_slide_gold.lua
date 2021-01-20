att.PrintName = "18APC Slide"
att.Icon = Material("entities/attachments/osi_17p_goldslide.png")
att.Description = "The golden, vented slide. Makes you look like a mob boss and offers superior cooling for faster firing! Note: full auto only."
att.Desc_Pros = {
    "Full Auto"
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = "osi_17p_slide"

att.SortOrder = 12

att.Override_Firemodes = {
    {
        PrintName = "AUTOMATIC",
        Mode = 2,
        CustomBars = "-",
    },
    {
        PrintName = "SAFETY",
        Mode = 0,
        CustomBars = "_",
    }
}

att.Mult_Recoil = 1
att.Mult_RPM = 2

att.ActivateElements = {"goldslide"}
