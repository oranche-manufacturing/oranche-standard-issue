SWEP.Base= "arccw_base"
SWEP.UseHands= true
SWEP.Spawnable= true
SWEP.AdminOnly= false

SWEP.PrintName= "SVR-762"
SWEP.Category= "ArcCW - OSI"
SWEP.Trivia_Class= "Heavy Assault Rifle"
SWEP.Trivia_Desc= "The Soviets did it right- we did it better. 30 rounds of heart-stopping 7.62x39mm guranteed to leave you more hurt than your target, or your money back!"
SWEP.Trivia_Manufacturer= "European Branch"
SWEP.Trivia_Country= "Russia"
SWEP.Trivia_Calibre= "7.62x39mm"
SWEP.Slot= 3

SWEP.ViewModel= "models/weapons/arccw_osi/normal pistol.mdl"
SWEP.ViewModelFOV= 75
SWEP.WorldModel= "models/weapons/arccw_osi/normal pistol.mdl"

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-8, 3, -3),
    ang = Angle(-10, 0, 180)
}

SWEP.Damage= 32
SWEP.DamageMin= 24
SWEP.Range= 75 -- metres
SWEP.Penetration= 8 -- millimetres
SWEP.DamageType= DMG_BULLET
SWEP.ShootEntity= nil

SWEP.MuzzleVelocity= 300
SWEP.CanFireUnderwater = false -- gloop gloop
SWEP.ChamberSize = 1 -- remember to not be an idiot
SWEP.Primary.ClipSize = 30
-- cs+ style clip extenders
SWEP.ExtendedClipSize = 60
SWEP.ReducedClipSize = 15

SWEP.VisualRecoilMult = 1.0 -- throw the viewmodel how far back
SWEP.Recoil = 1.2 -- vertical recoil
SWEP.RecoilSide = 2 -- horizontal recoil (this is harder/more random to control!)

SWEP.Delay = 60 / 600 -- 60 / RPM
SWEP.Num = 1 -- shots per trigger pull
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 100 -- 100 in the center

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 400 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 200 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air

SWEP.Primary.Ammo = "ar2"

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_osi/normal pistol/pistolfire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/usp/usp_01.wav"
SWEP.DistantShootSound = "weapons/arccw/hkp2000/hkp2000-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.ShellModel = "models/shells/762nato.mdl"
SWEP.ShellScale = 1

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.400
SWEP.SpeedMult = 0.80
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 10

SWEP.BulletBones = {}
SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-1.76, 0, 1.24),
    Ang = Angle(0, 0, 0),
    Magnification = 1.0,
    SwitchToSound = "",
    SwitchFromSound = "",
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "crossbow"
SWEP.HoldtypeSights = "ar2"

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-0, 0, 1)
SWEP.HolsterAng = Angle(-5, 10, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 7

SWEP.Attachments = {}
SWEP.AttachmentElements = {}
SWEP.Animations = {
	["idle"] = {
        Source = "reg_idle",
        Time = nil,
    },
    ["idle_empty"] = {
        Source = "reg_idle_empty",
        Time = nil,
    },
    ["fire"] = {
        Source = "reg_fire",
        Time = nil,
    },
    ["fire_empty"] = {
        Source = "reg_fire_last",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/pistolslidelock.wav", 	                    t = 0},
					},
    },
	["fire_iron"] = {
        Source = "reg_fire_ads",
        Time = nil,
    },
    ["fire_iron_empty"] = {
        Source = "reg_fire_ads_last",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/pistolslidelock.wav", 	                    t = 0},
					},
    },
    ["draw"] = {
        Source = "reg_draw",
        Time = nil,
    },
    ["draw_empty"] = {
        Source = "reg_draw_empty",
        Time = nil,
    },
    ["holster"] = {
        Source = "reg_holster",
        Time = nil,
    },
    ["holster_empty"] = {
        Source = "reg_holster_empty",
        Time = nil,
    },
    ["reload"] = {
        Source = "reg_reload",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = nil,
        MinProgress = 1.25,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/normal pistol/pistolmagout.wav", 	t = 0.2},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0.67},
						{s = "weapons/arccw_osi/normal pistol/pistolmagin.wav", 	t = 1},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 1.5},
					},
    },
	["reload_empty"] = {
        Source = "reg_reload_empty",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = nil,
        MinProgress = 1.25,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/normal pistol/pistolmagout.wav", 	t = 0.2},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0.67},
						{s = "weapons/arccw_osi/normal pistol/pistolmagin.wav", 	t = 1},
						{s = "weapons/arccw_osi/normal pistol/pistolsrelease.wav", 	t = 1.6},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 1.8},
					},
    },
    ["exit_inspect"] = {
        Source = "reg_inspect",
        Time = nil,
    },
    ["exit_inspect_empty"] = {
        Source = "reg_inspect_empty",
        Time = nil,
    },
    ["enter_sprint"] = {
        Source = "reg_sprint_in",
        Time = nil,
    },
    ["idle_sprint"] = {
        Source = "reg_sprint",
        Time = nil,
    },
    ["exit_sprint"] = {
        Source = "reg_sprint_out",
        Time = nil,
    },
	["enter_sprint_empty"] = {
        Source = "reg_sprint_in_empty",
        Time = nil,
    },
    ["idle_sprint_empty"] = {
        Source = "reg_sprint_empty",
        Time = nil,
    },
    ["exit_sprint_empty"] = {
        Source = "reg_sprint_out_empty",
        Time = nil,
    },
}
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

