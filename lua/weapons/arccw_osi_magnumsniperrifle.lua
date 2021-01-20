SWEP.Base= "arccw_base"
SWEP.UseHands= true
SWEP.Spawnable= true
SWEP.AdminOnly= false

SWEP.PrintName= "MS-38"
SWEP.Category= "ArcCW - OSI"
SWEP.Trivia_Class= "Rifle"
SWEP.Trivia_Desc= "Breaking world records since sometime ago, this gun is guranteed to pack more bang than its worth into your target at any range, at any time.\n\n3x damage against vehicles.\nTODO: Move to AMR when we make one"
SWEP.Trivia_Manufacturer= "Longshot UK"
SWEP.Trivia_Country= "United Kingdom"
SWEP.Trivia_Calibre= ".338 Lapua Magnum"
SWEP.Slot= 2

SWEP.ViewModel= "models/weapons/arccw_osi/awm.mdl"
SWEP.ViewModelFOV= 75
SWEP.WorldModel= "models/weapons/arccw_osi/awm.mdl"

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-6, 4, -4),
    ang = Angle(-10, 0, 180),
    scale = Vector(1.25, 1.25, 1.25),
}

SWEP.Damage= 150
SWEP.DamageMin= 95
SWEP.RangeMin= 150 -- metres
SWEP.Range= 200 -- metres
SWEP.Penetration= 35 -- millimetres
SWEP.DamageType= DMG_BULLET + DMG_BLAST -- TODO: move to an anti-materiel weapon when we make one
SWEP.ShootEntity= nil

SWEP.Hook_BulletHit = function(wep, data) -- TODO: move to an anti-materiel weapon when we make one
    if CLIENT then return end

    if data.tr.Entity and data.tr.Entity:IsVehicle() then
        data.damage = data.damage * 3
    end
end

SWEP.MuzzleVelocity= 300
SWEP.CanFireUnderwater = false -- gloop gloop
SWEP.ChamberSize = 1 -- remember to not be an idiot (again, oranche?????)
SWEP.Primary.ClipSize = 5
-- cs+ style clip extenders
SWEP.ExtendedClipSize = 7
SWEP.ReducedClipSize = 3

SWEP.VisualRecoilMult = 2 -- throw the viewmodel how far back
SWEP.Recoil = 4 -- vertical recoil
SWEP.RecoilSide = 2 -- horizontal recoil (this is harder/more random to control!)

SWEP.Delay = 60 / 120 -- 60 / RPM
SWEP.Num = 1 -- shots per trigger pull
SWEP.ManualAction= true
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 100 -- 100 in the center

SWEP.AccuracyMOA = 0.05 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 800 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 150 -- dispersion penalty when in the air

SWEP.Primary.Ammo = "SniperPenetratedRound"

SWEP.ShootVol = 80 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_osi/heavy bolt action/fire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_osi/heavy bolt action/fire_supp.wav"
SWEP.DistantShootSound = "weapons/arccw_osi/heavy bolt action/fire_dist.wav"

SWEP.Override_ShellEffect = "osi_shelleject"
SWEP.MuzzleEffect = "osi_muzzleeffect_shotgun"
SWEP.GMMuzzleEffect = true -- Use Gmod muzzle effects rather than particle effects
SWEP.ShellModel = "models/weapons/arccw_osi/effects/rifle shell.mdl"
SWEP.ShellSounds = ArcCW.OSI.Shells_HighCal
SWEP.ShellScale = 1.1
SWEP.ShellEjectSpeedMin = 0.8
SWEP.ShellEjectSpeedMax = 1
SWEP.ShellPhysScale = 1.5
SWEP.ShellRotateAngle = Angle(0, 90, 0) -- call of doo doo

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "osi_tracer" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(255, 255, 255)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.35
SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.25

SWEP.BarrelLength = 10

SWEP.BulletBones = {}
SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-5.25, 0, 1.75),
    Ang = Angle(0, 0, 0),
    Magnification = 1.4,
    SwitchToSound = "",
    SwitchFromSound = "",
    CrosshairInSights = false,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.ActivePos = Vector(0, 2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-0, 2, 0)
SWEP.HolsterAng = Angle(-5, 10, 0)

SWEP.SprintPos = Vector(0, 2, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(5, -2, -2)
SWEP.CustomizeAng = Angle(15, 30, 10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 7


SWEP.Attachments = {
    {
        PrintName= "Muzzle",
        Slot= {"osi_suppressor","osi_device"},
        Bone= "j_gun",
        Offset= {
            vpos = Vector(29.6, 0, 1.75),
            vang = Angle(0, 0, 0),
        },	
    },
}
SWEP.AttachmentElements = {}
SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = nil,
    },
    ["fire"] = {
        Source = "fire",
        Time = 0.4,
        MinProgress = 0.4, -- time until pump
        SoundTable = {
                        {s = "weapons/arccw_osi/cloth3.wav", 	                    t = 0.3},
                    },
    },
    ["fire_iron"] = {
        Source = "fire_ads",
        Time = 0.4,
        MinProgress = 0.4, -- time until pump
        SoundTable = {
                        {s = "weapons/arccw_osi/cloth3.wav", 	                    t = 0.3},
                    },
    },
    ["cycle"] = {
        Source = "cycle",
        Time = 1.2,
        MinProgress = 0.7,
        ShellEjectAt = 0.33,
        SoundTable = {
                        {s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
                        {s = "weapons/arccw_osi/heavy bolt action/bolt_up.wav", 	t = 0.1},
                        {s = "weapons/arccw_osi/heavy bolt action/bolt_back.wav", 	t = 0.16},
                        {s = "weapons/arccw_osi/heavy bolt action/bolt_forward.wav", t = 0.45},
                        {s = "weapons/arccw_osi/heavy bolt action/bolt_down.wav", 	t = 0.6},
                        {s = "weapons/arccw_osi/cloth3.wav", 	                    t = 0.8},
                    },
    },
    ["cycle_iron"] = {
        Source = "cycle_ads",
        Time = 1.2,
        MinProgress = 0.7,
        ShellEjectAt = 0.35,
        SoundTable = {
                        {s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
                        {s = "weapons/arccw_osi/heavy bolt action/bolt_up.wav", 	t = 0.1},
                        {s = "weapons/arccw_osi/heavy bolt action/bolt_back.wav", 	t = 0.16},
                        {s = "weapons/arccw_osi/heavy bolt action/bolt_forward.wav", t = 0.45},
                        {s = "weapons/arccw_osi/heavy bolt action/bolt_down.wav", 	t = 0.6},
                        {s = "weapons/arccw_osi/cloth3.wav", 	                    t = 0.8},
                    },
    },
    ["draw"] = {
        Source = "pullout",
        Time = nil,
        SoundTable = {
                        {s = "weapons/arccw_osi/heavy bolt action/draw.wav",	t = 0},
                        {s = "weapons/arccw_osi/cloth3.wav",	t = 0.2},
                        {s = "weapons/arccw_osi/heavy bolt action/settle.wav",	t = 0.75},
        },
    },
    ["holster"] = {
        Source = "putaway",
        Time = nil,
                        {s = "weapons/arccw_osi/heavy bolt action/holster.wav",	t = 0},
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = nil,
        MinProgress = 2.1,
        SoundTable = {
                        {s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
                        {s = "weapons/arccw_osi/heavy bolt action/magout.wav", 	t = 0.75},
                        {s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0.67},
                        {s = "weapons/arccw_osi/heavy bolt action/magin.wav", 	t = 1.85},
                        {s = "weapons/arccw_osi/cloth3.wav", 	                    t = 2.4},
                    },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = nil,
        MinProgress = 2.6,
        SoundTable = {
                        {s = "weapons/arccw_osi/heavy bolt action/bolt_up.wav", 	t = 0.15},
                        {s = "weapons/arccw_osi/heavy bolt action/bolt_back_empty.wav", 	t = 0.23},
                        {s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0.1},
                        {s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0.4},
                        {s = "weapons/arccw_osi/heavy bolt action/magout.wav", 	t = 1.25},
                        {s = "weapons/arccw_osi/cloth1.wav", 	                    t = 1.5},
                        {s = "weapons/arccw_osi/heavy bolt action/magin.wav", 	t = 2.35},
                        {s = "weapons/arccw_osi/heavy bolt action/bolt_forward.wav", 	t = 3.2},
                        {s = "weapons/arccw_osi/heavy bolt action/bolt_down.wav", 	t = 3.35},
                        {s = "weapons/arccw_osi/cloth3.wav", 	                    t = 3.8},
                    },
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = nil,
    },
    ["idle_sprint"] = {
        Source = "sprint_loop",
        Time = nil,
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = nil,
    },
}
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

