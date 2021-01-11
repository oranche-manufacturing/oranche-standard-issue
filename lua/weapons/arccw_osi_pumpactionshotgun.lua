SWEP.Base= "arccw_base"
SWEP.UseHands= true
SWEP.Spawnable= true
SWEP.AdminOnly= false

SWEP.PrintName= "TS-12"
SWEP.Category= "ArcCW - OSI"
SWEP.Trivia_Class= "Pump Action Shotgun"
SWEP.Trivia_Desc= "An old Russian pump-action shotgun. Does what youd expect it to do, except better, because we made it."
SWEP.Trivia_Manufacturer= "European Branch"
SWEP.Trivia_Country= "Russia"
SWEP.Trivia_Calibre= "12 Gauge"
SWEP.Slot= 3

SWEP.ViewModel= "models/weapons/arccw_osi/pump action shotgun.mdl"
SWEP.ViewModelFOV= 75
SWEP.WorldModel= "models/weapons/arccw_osi/pump action shotgun.mdl"

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-6, 4, -4),
    ang = Angle(-10, 0, 180),
    scale = Vector(1.25, 1.25, 1.25),
}

SWEP.Damage= 13
SWEP.DamageMin= 5
SWEP.Range= 40 -- metres
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

SWEP.VisualRecoilMult = 2 -- throw the viewmodel how far back
SWEP.Recoil = 2 -- vertical recoil
SWEP.RecoilSide = 2 -- horizontal recoil (this is harder/more random to control!)

SWEP.Delay = 60 / 600 -- 60 / RPM
SWEP.Num = 8 -- shots per trigger pull
SWEP.ManualAction= true
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 100 -- 100 in the center

SWEP.AccuracyMOA = 50 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 100 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 200 -- dispersion penalty when in the air

SWEP.Primary.Ammo = "buckshot"

SWEP.ShootVol = 80 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_osi/pump action shotgun/pump fire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/usp/usp_01.wav"
SWEP.DistantShootSound = "weapons/arccw_osi/pump action shotgun/pump dist.wav"

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.500
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

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 7

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

SWEP.Attachments = {}
SWEP.AttachmentElements = {}
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
        SoundTable = {
						{s = "weapons/arccw_osi/pump action shotgun/back.wav", 	t = 0},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/pump action shotgun/forward.wav", 	t = 0.2},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 0.2},
					},
    },
    ["cycle_iron"] = {
        Source = "cycle_ads",
        Time = 0.4,
        SoundTable = {
						{s = "weapons/arccw_osi/pump action shotgun/back.wav", 	t = 0},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/pump action shotgun/forward.wav", 	t = 0.2},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 0.2},
					},
    },
    ["draw"] = {
        Source = "draw",
        Time = nil,
    },
    ["ready"] = {
        Source = "draw_first",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/pump action shotgun/back.wav", 	    t = 0.5},
						{s = "weapons/arccw_osi/pump action shotgun/forward.wav", 	t = 0.7},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 0.9},
					},
    },
    ["holster"] = {
        Source = "holster",
        Time = nil,
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
        SoundTable = {
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/pump action shotgun/back.wav", 	    t = 0.3},
						{s = "weapons/arccw_osi/pump action shotgun/forward.wav", 	t = 0.5},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 0.7},
					},
    },
    ["reload_1"] = {
        Source = "reload_1",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = shellinsertsound, 	                    t = 0.2},
					},
    },
    ["reload_2"] = {
        Source = "reload_2",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = shellinsertsound, 	                    t = 0.2},
						{s = shellinsertsound, 	                    t = 0.8},
					},
    },
    ["reload_3"] = {
        Source = "reload_3",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = shellinsertsound, 	                    t = 0.2},
						{s = shellinsertsound, 	                    t = 0.8},
						{s = shellinsertsound, 	                    t = 1.4},
					},
    },
    ["reload_4"] = {
        Source = "reload_4",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = shellinsertsound, 	                    t = 0.2},
						{s = shellinsertsound, 	                    t = 0.8},
						{s = shellinsertsound, 	                    t = 1.4},
						{s = shellinsertsound, 	                    t = 1.9},
					},
    },
    ["reload_5"] = {
        Source = "reload_5",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0},
						{s = shellinsertsound, 	                    t = 0.2},
						{s = shellinsertsound, 	                    t = 0.8},
						{s = shellinsertsound, 	                    t = 1.4},
						{s = shellinsertsound, 	                    t = 1.9},
						{s = shellinsertsound, 	                    t = 2.4},
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

