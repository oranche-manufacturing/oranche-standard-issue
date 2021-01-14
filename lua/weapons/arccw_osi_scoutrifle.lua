SWEP.Base= "arccw_base"
SWEP.UseHands= true
SWEP.Spawnable= true
SWEP.AdminOnly= false

SWEP.PrintName= "Falcon .223"
SWEP.Category= "ArcCW - OSI"
SWEP.Trivia_Class= "Rifle"
SWEP.Trivia_Desc= "We sell this dirt-cheap. Its (probably) compliant with every gun law, and still made with enough metal to ensure the perfect shot."
SWEP.Trivia_Manufacturer= "Sportfield Arms U.S.A"
SWEP.Trivia_Country= "California"
SWEP.Trivia_Calibre= ".223 Remington"
SWEP.Slot= 2

SWEP.ViewModel= "models/weapons/arccw_osi/smg.mdl"
SWEP.ViewModelFOV= 75
SWEP.WorldModel= "models/weapons/arccw_osi/smg.mdl"

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-7, 4, -3),
    ang = Angle(-10, 0, 180),
    scale = Vector(1.5, 1.5, 1.5),
}

SWEP.Damage= 40
SWEP.DamageMin= 25
SWEP.RangeMin= 40 -- metres
SWEP.Range= 80 -- metres
SWEP.Penetration= 10 -- millimetres
SWEP.DamageType= DMG_BULLET
SWEP.ShootEntity= nil

SWEP.MuzzleVelocity= 300
SWEP.CanFireUnderwater = false -- gloop gloop
SWEP.ChamberSize = 1 -- remember to not be an idiot
SWEP.Primary.ClipSize = 20
-- cs+ style clip extenders
SWEP.ExtendedClipSize = 30
SWEP.ReducedClipSize = 10

SWEP.VisualRecoilMult = 1.0 -- throw the viewmodel how far back
SWEP.Recoil = 0.75 -- vertical recoil
SWEP.RecoilSide = 0.2 -- horizontal recoil (this is harder/more random to control!)

SWEP.Delay = 60 / 300 -- 60 / RPM
SWEP.Num = 1 -- shots per trigger pull
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

SWEP.AccuracyMOA = 3 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 300 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 100 -- dispersion penalty when in the air

SWEP.Primary.Ammo = "smg1"

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_osi/scout rifle/scrifle_fire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/usp/usp_01.wav"
SWEP.DistantShootSound = "weapons/arccw_osi/scrifle/scrifle_dist.wav"

SWEP.Override_ShellEffect = "osi_shelleject"
SWEP.MuzzleEffect = "osi_muzzleeffect_smg"
SWEP.GMMuzzleEffect = true -- Use Gmod muzzle effects rather than particle effects
SWEP.ShellModel = "models/weapons/arccw_osi/effects/rifle shell.mdl"
SWEP.ShellScale = 0.75
SWEP.ShellPhysScale = 1.5
SWEP.ShellSounds = ArcCW.OSI.Shells_MedCal
SWEP.ShellRotateAngle = Angle(0, 90, 0) -- call of doo doo

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.400
SWEP.SpeedMult = 0.80
SWEP.SightedSpeedMult = 0.65

SWEP.BarrelLength = 10

SWEP.BulletBones = {}
SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.07, 0, 1.28),
    Ang = Angle(-1.7, 0, 0),
    Magnification = 1.2,
    SwitchToSound = "",
    SwitchFromSound = "",
    CrosshairInSights = false,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.ActivePos = Vector(0, -2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0, -2, 1)
SWEP.HolsterAng = Angle(-5, 10, 0)

SWEP.SprintPos = Vector(0, 0, 1)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(5, -2, -2)
SWEP.CustomizeAng = Angle(15, 30, 10)

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
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "fire",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/smg_last.wav", 	                    t = 0},
					},
        ShellEjectAt = 0,
    },
	["fire_iron"] = {
        Source = "fire_ads",
        Time = nil,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire_ads",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/smg_last.wav", 	                    t = 0},
					},
        ShellEjectAt = 0,
    },
    ["draw"] = {
        Source = "pullout",
        Time = nil,
    },
    ["ready"] = {
        Source = "pullout_first",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/magpull.wav", 	                    t = 0.1},
						{s = "weapons/arccw_osi/normal pistol/pistolmagout.wav", 	t = 0.6},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 1.1},
					},
    },
    ["holster"] = {
        Source = "putaway",
        Time = nil,
    },
    ["reload"] = {
        Source = "reload",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = nil,
        MinProgress = 2,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/smg/smg_magout.wav", 	t = 0.3},
						{s = "weapons/arccw_osi/magpull.wav", 	                    t = 1},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 1.2},
						{s = "weapons/arccw_osi/smg/smg_magin.wav", 	            t = 1.9},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 2.3},
					},
    },
	["reload_empty"] = {
        Source = "reload_empty",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = nil,
        MinProgress = 2,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/smg/smg_magout.wav", 	t = 0.3},
						{s = "weapons/arccw_osi/magpull.wav", 	                    t = 1},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 1.2},
						{s = "weapons/arccw_osi/smg/smg_magin.wav", 	            t = 1.9},
						{s = "weapons/arccw_osi/smg/smg_chback.wav", 	t = 2.4},
						{s = "weapons/arccw_osi/smg/smg_chamber.wav", 	t = 2.8},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 3.2},
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
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_ar2

