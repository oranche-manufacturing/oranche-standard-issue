att.PrintName = "18APC Slide"
att.Icon = Material("entities/osi_17p_slide_gold.png")
att.Description = "It's scientific fact that putting holes in your gun makes it better. It also, apparently, makes it full auto only. -C&N R&D"
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
