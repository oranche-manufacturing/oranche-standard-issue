att.PrintName = "Pistol optic"
att.Icon = Material("entities/acwatt_optic_docter.png")
att.Description = "Name me"

att.SortOrder = 0

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {"osi_optic_lp"}

att.Model = "models/weapons/arccw_osi/attachments/optic pistol.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 7, -0.579),
        Ang = Angle(0, -0.1, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/osi_dot.png", "mips smooth")
att.HolosightSize = 0.25
att.HolosightBone = "holosight"

att.Colorable = true