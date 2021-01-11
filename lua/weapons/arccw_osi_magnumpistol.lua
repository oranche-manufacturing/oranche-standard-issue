SWEP.Base= "arccw_base"
SWEP.UseHands= true
SWEP.Spawnable= true
SWEP.AdminOnly= false

SWEP.PrintName= "Casull Automag"
SWEP.Category= "ArcCW - OSI"
SWEP.Trivia_Class= "Magnum Pistol"
SWEP.Trivia_Desc= "Do you want to assert your dominance over someone else in the most unnecessary way possible? Look no further."
SWEP.Trivia_Manufacturer= "South American Branch"
SWEP.Trivia_Country= "Brazil"
SWEP.Trivia_Calibre= ".454 Casull"
SWEP.Slot= 1

SWEP.ViewModel= "models/weapons/arccw_osi/heavy pistol.mdl"
SWEP.ViewModelFOV= 75
SWEP.WorldModel= "models/weapons/arccw_osi/heavy pistol.mdl"

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-11, 4, -3),
    ang = Angle(-10, 0, 180),
    scale = Vector(1.25, 1.25, 1.25),
}

SWEP.Damage= 40
SWEP.DamageMin= 24
SWEP.Range= 35 -- metres
SWEP.Penetration= 6 -- millimetres
SWEP.DamageType= DMG_BULLET
SWEP.ShootEntity= nil

SWEP.MuzzleVelocity= 300
SWEP.CanFireUnderwater = false -- gloop gloop
SWEP.ChamberSize = 1 -- remember to not be an idiot
SWEP.Primary.ClipSize = 9
-- cs+ style clip extenders
SWEP.ExtendedClipSize = 12
SWEP.ReducedClipSize = 7

SWEP.VisualRecoilMult = 2 -- throw the viewmodel how far back
SWEP.Recoil = 3 -- vertical recoil
SWEP.RecoilSide = 1 -- horizontal recoil (this is harder/more random to control!)

SWEP.Delay = 60 / 210 -- 60 / RPM
SWEP.Num = 1 -- shots per trigger pull
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 100 -- 100 in the center

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 200 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air

SWEP.Primary.Ammo = "357"

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_osi/heavy pistol/magnumfire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/usp/usp_01.wav"
SWEP.DistantShootSound = "weapons/arccw_osi/heavy pistol/magnumdist.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol_deagle"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.300
SWEP.SpeedMult = 0.90
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 10

SWEP.BulletBones = {}
SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.878, -2, 1.919),
    Ang = Angle(-1.428, 0, 0.361),
    Magnification = 1.0,
    SwitchToSound = "",
    SwitchFromSound = "",
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0, 0, 0)
SWEP.HolsterAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, 1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 7

SWEP.Attachments = {}
SWEP.AttachmentElements = {}
SWEP.Animations = {
	["idle"] = {
        Source = "idle",
        Time = nil,
    },
	["idle_empty"] = {
        Source = "idle_empty",
        Time = nil,
    },
    ["fire"] = {
        Source = "fire",
        Time = nil,
    },
    ["fire_empty"] = {
        Source = "fire_last",
        Time = 0.5,
        SoundTable = {
						{s = "weapons/arccw_osi/pistol_last.wav", 	                    t = 0},
					},
    },
	["fire_iron"] = {
        Source = "fire_ads",
        Time = nil,
    },
    ["fire_iron_empty"] = {
        Source = "fire_ads_last",
        Time = 0.5,
        SoundTable = {
						{s = "weapons/arccw_osi/pistol_last.wav", 	                    t = 0},
					},
    },
    ["draw"] = {
        Source = "draw",
        Time = nil,
    },
    ["holster"] = {
        Source = "holster",
        Time = nil,
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = nil,
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = nil,
    },
    ["reload"] = {
        Source = "reload",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 48/24,
        MinProgress = 1.25,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/heavy pistol/magnummagout.wav", 	t = 0.2},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0.67},
						{s = "weapons/arccw_osi/heavy pistol/magnummagin.wav", 	    t = 1.0},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 1.4},
					},
    },
	["reload_empty"] = {
        Source = "reload_empty",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 56/24,
        MinProgress = 1.25,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/heavy pistol/magnummagout.wav", 	t = 0.2},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0.67},
						{s = "weapons/arccw_osi/heavy pistol/magnummagin.wav", 	    t = 1.0},
						{s = "weapons/arccw_osi/heavy pistol/magnumrelease.wav", 	t = 1.6},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 1.7},
					},
    },
    ["exit_inspect"] = {
        Source = "inspect",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 1.5},
						{s = "weapons/arccw_osi/tick1.wav", 	                    t = 2.2},
						{s = "weapons/arccw_osi/tick2.wav", 	                    t = 2.6},
						{s = "weapons/arccw_osi/tick3.wav", 	                    t = 3.2},
						{s = "weapons/arccw_osi/tick4.wav", 	                    t = 3.75},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 4},
					},
    },
    ["exit_inspect_empty"] = {
        Source = "inspect_empty",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 1.5},
						{s = "weapons/arccw_osi/tick1.wav", 	                    t = 2.2},
						{s = "weapons/arccw_osi/tick2.wav", 	                    t = 2.6},
						{s = "weapons/arccw_osi/tick3.wav", 	                    t = 3.2},
						{s = "weapons/arccw_osi/tick4.wav", 	                    t = 3.75},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 4},
					},
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = nil,
    },
    ["idle_sprint"] = {
        Source = "sprint",
        Time = nil,
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = nil,
    },
    ["enter_sprint_empty"] = {
        Source = "sprint_in_empty",
        Time = nil,
    },
    ["idle_sprint_empty"] = {
        Source = "sprint_empty",
        Time = nil,
    },
    ["exit_sprint_empty"] = {
        Source = "sprint_out_empty",
        Time = nil,
    },
}
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

