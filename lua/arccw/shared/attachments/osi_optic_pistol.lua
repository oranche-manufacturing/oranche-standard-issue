att.PrintName = "LP C&N Dotty"
att.Icon = Material("entities/osi_optic_pistol.png")
att.Description = "Magically places a dot over where bullets go. All rights reserved."

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
        Pos = Vector(0, 7, -0.619),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/osi_dot.png")
att.HolosightFlare = Material("holosights/osi_dot_flare.png")
att.HolosightSize = .25
att.HolosightBone = "holosight"

att.Colorable = true