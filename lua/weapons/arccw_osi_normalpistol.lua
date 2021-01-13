SWEP.Base= "arccw_base"
SWEP.UseHands= true
SWEP.Spawnable= true
SWEP.AdminOnly= false

SWEP.PrintName= "Cobra .45"
SWEP.Category= "ArcCW - OSI"
SWEP.Trivia_Class= "Pistol"
SWEP.Trivia_Desc= "Nothing more classic than the Cobra: The hero of the free world! Modern pistols jam, break, and are made of plastic. The Cobra is anything but. Joe Brownie knows best"
SWEP.Trivia_Manufacturer= "Federal Surplus Ind."
SWEP.Trivia_Country= "U.S.A"
SWEP.Trivia_Calibre= ".45 ACP"
SWEP.Slot= 1

SWEP.ViewModel= "models/weapons/arccw_osi/normal pistol.mdl"
SWEP.ViewModelFOV= 75
SWEP.WorldModel= "models/weapons/arccw_osi/normal pistol.mdl"

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-8, 3, -3),
    ang = Angle(-10, 0, 180),
    scale = Vector(1.25, 1.25, 1.25),
}

SWEP.Damage= 37
SWEP.DamageMin= 15
SWEP.Range= 32 -- metres
SWEP.Penetration= 5 -- millimetres
SWEP.DamageType= DMG_BULLET
SWEP.ShootEntity= nil

SWEP.MuzzleVelocity= 300
SWEP.CanFireUnderwater = false -- gloop gloop
SWEP.ChamberSize = 1 -- remember to not be an idiot
SWEP.Primary.ClipSize = 7
-- cs+ style clip extenders
SWEP.ExtendedClipSize = 16
SWEP.ReducedClipSize = 8

SWEP.VisualRecoilMult = 1.25 -- throw the viewmodel how far back
SWEP.Recoil = 1 -- vertical recoil
SWEP.RecoilSide = 1 -- horizontal recoil (this is harder/more random to control!)

SWEP.Delay = 60 / 400 -- 60 / RPM
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
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air

SWEP.Primary.Ammo = "pistol"

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_osi/normal pistol/pistolfire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_osi/normal pistol/pistolsup.wav"
SWEP.DistantShootSound = "weapons/arccw_osi/normal pistol/pistoldistnope.wav"

SWEP.MuzzleEffect = "osi_muzzleeffect_pistol"
SWEP.GMMuzzleEffect = true -- Use Gmod muzzle effects rather than particle effects
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1
SWEP.ShellRotateAngle = Angle(0, 90, 0) -- call of doo doo

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.175
SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.80

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

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-0, 0, 1)
SWEP.HolsterAng = Angle(-5, 10, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 7

SWEP.Attachments = {
	{
		PrintName= "Muzzle",
		Slot= {"osi_suppressor","osi_device"},
		Bone= "j_gun",
		Offset= {
			vpos = Vector(6.5, 0, 2.3),
			vang = Angle(0, 0, 0),
		},	
	},
}
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
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "reg_fire_last",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/pistol_last.wav", 	                    t = 0},
					},
        ShellEjectAt = 0,
    },
	["fire_iron"] = {
        Source = "reg_fire_ads",
        Time = nil,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "reg_fire_ads_last",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/pistol_last.wav", 	                    t = 0},
					},
        ShellEjectAt = 0,
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
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
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
        Source = "reg_inspect_empty",
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

