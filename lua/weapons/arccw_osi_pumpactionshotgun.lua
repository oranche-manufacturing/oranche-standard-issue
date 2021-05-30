SWEP.Base= "arccw_base"
SWEP.UseHands= true
SWEP.Spawnable= true
SWEP.AdminOnly= false

SWEP.PrintName= "Racketeer"
SWEP.Category= "ArcCW - OSI"
SWEP.Trivia_Class= "Shotgun"
SWEP.Trivia_Desc= "We defined the word 'pump-action' with this model, and have been going at it since... sometime."
SWEP.Trivia_Manufacturer= "Sportfield Arms U.S.A"
SWEP.Trivia_Country= "U.S.A"
SWEP.Trivia_Calibre= "12 Gauge"
SWEP.Slot= 2

SWEP.ViewModel= "models/weapons/arccw_osi/pump action shotgun.mdl"
SWEP.ViewModelFOV= 75
SWEP.WorldModel= "models/weapons/arccw_osi/pump action shotgun worldmodel.mdl"
SWEP.MirrorWorldModel = "models/weapons/arccw_osi/pump action shotgun worldmodel.mdl"

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-6, 4, -4),
    ang = Angle(-10, 0, 180),
    scale = Vector(1.25, 1.25, 1.25),
}

SWEP.Damage= 15
SWEP.DamageMin= 5
SWEP.RangeMin= 10 -- metres
SWEP.Range= 25 -- metres
SWEP.Penetration= 4 -- millimetres
SWEP.DamageType= DMG_BULLET + DMG_BUCKSHOT
SWEP.ShootEntity= nil

SWEP.MuzzleVelocity= 300
SWEP.CanFireUnderwater = false -- gloop gloop
SWEP.ChamberSize = 0 -- remember to not be an idiot
SWEP.Primary.ClipSize = 5
-- cs+ style clip extenders
SWEP.ExtendedClipSize = 10
SWEP.ReducedClipSize = 5

SWEP.VisualRecoilMult = 1 -- throw the viewmodel how far back
SWEP.Recoil = 6 -- vertical recoil
SWEP.RecoilSide = 1 -- horizontal recoil (this is harder/more random to control!)

SWEP.Delay = 60 / 600 -- 60 / RPM
SWEP.Num = 8 -- shots per trigger pull
SWEP.ManualAction= true
SWEP.Firemodes = {
    {
        PrintName = "SEMI-AUTO",
        Mode = 1,
        CustomBars = "-",
    },
    {
        PrintName = "SAFETY",
        Mode = 0,
        CustomBars = "_",
    }
}

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 100 -- 100 in the center

SWEP.AccuracyMOA = 40 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 200 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 150 -- dispersion penalty when in the air

SWEP.Primary.Ammo = "buckshot"

SWEP.ShootVol = 80 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_osi/pump action shotgun/fire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_osi/pump action shotgun/fire_supp.wav"
SWEP.DistantShootSound = "weapons/arccw_osi/pump action shotgun/fire_dist.wav"

SWEP.Override_ShellEffect = "osi_shelleject"
SWEP.MuzzleEffect = "osi_muzzleeffect_shotgun"
SWEP.GMMuzzleEffect = true -- Use Gmod muzzle effects rather than particle effects
SWEP.ShellModel = "models/weapons/arccw_osi/effects/buckshot shell.mdl"
SWEP.ShellSounds = ArcCW.OSI.Shells_Buckshot
SWEP.ShellScale = 0.8
SWEP.ShellPhysScale = 1.5
SWEP.ShellRotateAngle = Angle(0, 90, 0) -- call of doo doo

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.CamAttachment = 3 -- if set, this attachment will control camera movement

--[[SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "osi_tracer" -- override tracer (hitscan) effect]]

SWEP.SightTime = 0.30
SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 10

SWEP.BulletBones = {}
SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.59, -2, 0.75),
    Ang = Angle(0.3, 0, 0),
    Magnification = 1.2,
    SwitchToSound = "",
    SwitchFromSound = "",
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "rpg"

SWEP.ActivePos = Vector(0, -2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-0, -2, 0)
SWEP.HolsterAng = Angle(-5, 10, 0)

SWEP.SprintPos = Vector(0, -2, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(5, -2, -2)
SWEP.CustomizeAng = Angle(15, 30, 10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 0

-- written by 8z
SWEP.ShotgunReload = true
SWEP.Hook_SelectInsertAnimation = function(wep, data)
    local insertAmt = math.min(wep.Primary.ClipSize + wep:GetChamberSize() - wep:Clip1(), wep:GetOwner():GetAmmoCount(wep.Primary.Ammo), 5)
    local anim = "reload_" .. insertAmt

    return {count = insertAmt, anim = anim, empty = false}
end

-- don't pump after a reload
SWEP.Hook_PreReload = function(wep)
    wep:SetNeedCycle(false)
end

local shellinsertsound = { "weapons/arccw_osi/pump action shotgun/shotshell_insert1.wav", "weapons/arccw_osi/pump action shotgun/shotshell_insert2.wav", "weapons/arccw_osi/pump action shotgun/shotshell_insert3.wav", "weapons/arccw_osi/pump action shotgun/shotshell_insert4.wav" }

SWEP.Attachments = {
    {
        PrintName= "Optic",
        Slot= {"osi_optic_hp","osi_optic_lp"},
        Bone= "j_gun",
        Offset= {
            vpos = Vector(2, -0.14, 2.5),
            vang = Angle(0, 0, 0),
        },  
        InstalledEles = {"rail"},
    },
    {
        PrintName= "Muzzle",
        Slot= {"osi_suppressor","osi_device"},
        Bone= "j_gun",
        Offset= {
            vpos = Vector(22.3, -0.14, 1.3),
            vang = Angle(0, 0, 0),
        },	
    },
}
SWEP.AttachmentElements = {
    ["rail"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw_osi/attachments/compatibility rail.mdl",
                Bone = "j_gun",
                Scale = Vector(1.4, 1.6, 1),
                Offset = {
                    pos = Vector(4, -0.14, 1.9),
                    ang = Angle(0, 0, 0)
                },
                ModelSkin = 0,
            }
        },
    },

}
SWEP.Animations = {
	["idle"] = {
        Source = "idle",
        Time = nil,
    },
    ["fire"] = {
        Source = "fire",
        Time = 0.3,
        MinProgress = 0.3, -- time until pump
    },
	["fire_iron"] = {
        Source = "fire_ads",
        Time = 0.3,
        MinProgress = 0.3, -- time until pump
    },
    ["cycle"] = {
        Source = "cycle",
        Time = 0.4,
        ShellEjectAt = 0.1,
        SoundTable = {
						{s = "weapons/arccw_osi/pump action shotgun/back.wav", 	t = 0},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/pump action shotgun/forward.wav", 	t = 0.12},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 0.2},
					},
    },
    ["cycle_iron"] = {
        Source = "cycle_ads",
        Time = 0.4,
        ShellEjectAt = 0.1,
        SoundTable = {
						{s = "weapons/arccw_osi/pump action shotgun/back.wav", 	t = 0},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/pump action shotgun/forward.wav", 	t = 0.12},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 0.2},
					},
    },
    ["draw"] = {
        Source = "draw",
        SoundTable = {
						{s = "weapons/arccw_osi/pump action shotgun/raise.wav",     t = 0},
					},
        Time = nil,
    },
    ["ready"] = {
        Source = "draw_first",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/pump action shotgun/back.wav", 	    t = 0.5},
						{s = "weapons/arccw_osi/pump action shotgun/forward.wav", 	t = 0.65},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 0.9},
					},
    },
    ["holster"] = {
        Source = "holster",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/pump action shotgun/lower.wav",     t = 0},
					},
    },
    ["sgreload_start"] = {
        Source = "reload_start",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
					},
    },
    ["sgreload_finish"] = {
        Source = "reload_end",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = nil,
        ShellEjectAt = 0,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/pump action shotgun/back.wav", 	    t = 0.3},
						{s = "weapons/arccw_osi/pump action shotgun/forward.wav", 	t = 0.45},
						{s = "weapons/arccw_osi/shoulder.wav", 	                    t = 0.7},
					},
    },
    ["reload_1"] = {
        Source = "reload_1",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = shellinsertsound, 	                    t = 0.12},
					},
    },
    ["reload_2"] = {
        Source = "reload_2",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = shellinsertsound, 	                    t = 0.12},
						{s = shellinsertsound, 	                    t = 0.675},
					},
    },
    ["reload_3"] = {
        Source = "reload_3",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = shellinsertsound, 	                    t = 0.12},
						{s = shellinsertsound, 	                    t = 0.675},
						{s = shellinsertsound, 	                    t = 1.2},
					},
    },
    ["reload_4"] = {
        Source = "reload_4",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = shellinsertsound, 	                    t = 0.12},
						{s = shellinsertsound, 	                    t = 0.675},
						{s = shellinsertsound, 	                    t = 1.2},
						{s = shellinsertsound, 	                    t = 1.675},
					},
    },
    ["reload_5"] = {
        Source = "reload_5",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = shellinsertsound, 	                    t = 0.12},
						{s = shellinsertsound, 	                    t = 0.675},
						{s = shellinsertsound, 	                    t = 1.2},
						{s = shellinsertsound, 	                    t = 1.675},
						{s = shellinsertsound, 	                    t = 2.2},
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

