SWEP.Base= "arccw_base"
SWEP.UseHands= true
SWEP.Spawnable= true
SWEP.AdminOnly= false

SWEP.PrintName= "SMG-9K"
SWEP.Category= "ArcCW - OSI"
SWEP.Trivia_Class= "SMG"
SWEP.Trivia_Desc= "A reliable SMG for police, military police, and thought police alike, handcrafted by German manual labour."
SWEP.Trivia_Manufacturer= "European Branch"
SWEP.Trivia_Country= "Germany"
SWEP.Trivia_Calibre= "9x19mm"
SWEP.Slot= 3

SWEP.ViewModel= "models/weapons/arccw_osi/heavy assault rifle.mdl"
SWEP.ViewModelFOV= 75
SWEP.WorldModel= "models/weapons/arccw_osi/heavy assault rifle.mdl"

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-4, 3, -5),
    ang = Angle(-10, 0, 180)
}

SWEP.Damage= 20
SWEP.DamageMin= 9
SWEP.Range= 30 -- metres
SWEP.Penetration= 3 -- millimetres
SWEP.DamageType= DMG_BULLET
SWEP.ShootEntity= nil

SWEP.MuzzleVelocity= 300
SWEP.CanFireUnderwater = false -- gloop gloop
SWEP.ChamberSize = 1 -- remember to not be an idiot
SWEP.Primary.ClipSize = 30
-- cs+ style clip extenders
SWEP.ExtendedClipSize = 50
SWEP.ReducedClipSize = 15

SWEP.VisualRecoilMult = 1.0 -- throw the viewmodel how far back
SWEP.Recoil = 0.5 -- vertical recoil
SWEP.RecoilSide = 0.2 -- horizontal recoil (this is harder/more random to control!)

SWEP.Delay = 60 / 900 -- 60 / RPM
SWEP.Num = 1 -- shots per trigger pull
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_smg"
SWEP.NPCWeight = 100 -- 100 in the center

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 600 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 100 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 100 -- dispersion penalty when in the air

SWEP.Primary.Ammo = "pistol"

SWEP.ShootVol = 80 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "^weapons/smg1/npc_smg1_fire1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/usp/usp_01.wav"
SWEP.DistantShootSound = "weapons/arccw_osi/heavy assault rifle/heavyardist.wav"

SWEP.MuzzleEffect = "muzzleflash_mp5"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellScale = 1

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.200
SWEP.SpeedMult = 0.90
SWEP.SightedSpeedMult = 0.85

SWEP.BarrelLength = 10

SWEP.BulletBones = {}
SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.37, 0, 1.24),
    Ang = Angle(0, 0, 0),
    Magnification = 1.2,
    SwitchToSound = "",
    SwitchFromSound = "",
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

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
        Source = "idle",
        Time = nil,
    },
    ["fire"] = {
        Source = "fire",
        Time = nil,
    },
    ["fire_empty"] = {
        Source = "fire",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/riflelast.wav", 	                    t = 0},
					},
    },
	["fire_iron"] = {
        Source = "fire_ads",
        Time = nil,
    },
    ["fire_iron_empty"] = {
        Source = "fire_ads",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/riflelast.wav", 	                    t = 0},
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
    ["reload"] = {
        Source = "reload",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 3,
        MinProgress = 2,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/magpull.wav", 	                    t = 0.3},
						{s = "weapons/arccw_osi/heavy assault rifle/heavyarmagcollide.wav", 	t = 0.8},
						{s = "weapons/arccw_osi/heavy assault rifle/heavyarmagout.wav", 	t = 1},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 1.2},
						{s = "weapons/arccw_osi/heavy assault rifle/heavyarmagin.wav", 	t = 1.6},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 2.5},
					},
    },
	["reload_empty"] = {
        Source = "reload_empty",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 3.5,
        MinProgress = 2,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/magpull.wav", 	                    t = 0.3},
						{s = "weapons/arccw_osi/heavy assault rifle/heavyarmagcollide.wav", 	t = 0.8},
						{s = "weapons/arccw_osi/heavy assault rifle/heavyarmagout.wav", 	t = 1},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 1.2},
						{s = "weapons/arccw_osi/heavy assault rifle/heavyarmagin.wav", 	t = 1.6},
						{s = "weapons/arccw_osi/heavy assault rifle/heavyarchback.wav", 	t = 2.6},
						{s = "weapons/arccw_osi/heavy assault rifle/heavyarchamber.wav", 	t = 2.9},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 3.1},
					},
    },
    ["exit_inspect"] = {
        Source = "inspect",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 1.7},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 3.25},
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
}
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
