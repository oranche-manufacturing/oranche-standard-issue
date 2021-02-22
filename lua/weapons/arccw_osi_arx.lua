SWEP.Base= "arccw_base"
SWEP.UseHands= true
SWEP.Spawnable= true
SWEP.AdminOnly= false

SWEP.PrintName= "Arma-476"
SWEP.Category= "ArcCW - OSI"
SWEP.Trivia_Class= "Assault Rifle"
SWEP.Trivia_Desc= "Make no compromises with ergonomics. This is YOUR truly modern™ fighting rifle™ destine to reunite™ the Mediterranian™ under a single flag™. All rights reserved."
SWEP.Trivia_Manufacturer= "New Roman Manufacturing"
SWEP.Trivia_Country= "Italy"
SWEP.Trivia_Calibre= "5.56x45mm"
SWEP.Slot= 2

SWEP.ViewModel= "models/weapons/arccw_osi/arx.mdl"
SWEP.ViewModelFOV= 75
SWEP.WorldModel= "models/weapons/arccw_osi/arx.mdl"

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-4, 3, -5),
    ang = Angle(-10, 0, 180),
    scale = Vector(1.1, 1.1, 1.1),
}

SWEP.Damage= 29
SWEP.DamageMin= 20
SWEP.RangeMin= 28 -- metres
SWEP.Range= 120 -- metres
SWEP.Penetration= 8 -- millimetres
SWEP.DamageType= DMG_BULLET
SWEP.ShootEntity= nil

SWEP.MuzzleVelocity= 300
SWEP.CanFireUnderwater = false -- gloop gloop
SWEP.ChamberSize = 1 -- remember to not be an idiot
SWEP.Primary.ClipSize = 30
-- cs+ style clip extenders
SWEP.ExtendedClipSize = 50
SWEP.ReducedClipSize = 20

SWEP.VisualRecoilMult = 1.0 -- throw the viewmodel how far back
SWEP.Recoil = 0.4 -- vertical recoil
SWEP.RecoilSide =  0.50 -- horizontal recoil (this is harder/more random to control!)

SWEP.Delay = 60 / 750 -- 60 / RPM
SWEP.Num = 1 -- shots per trigger pull
SWEP.Firemodes = {
    {
        PrintName = "AUTOMATIC",
        Mode = 2,
        CustomBars = "-",
    },
    {
        PrintName = "SAFETY",
        Mode = 0,
        CustomBars = "_",
    }
}

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 100 -- 100 in the center

SWEP.AccuracyMOA = 8 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 350 -- dispersion penalty when in the air

SWEP.Primary.Ammo = "smg1"

SWEP.ShootVol = 80 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_osi/arx/fire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_osi/arx/fire_supp.wav"
SWEP.DistantShootSound = "weapons/arccw_osi/arx/fire_dist.wav"

SWEP.Override_ShellEffect = "osi_shelleject"
SWEP.MuzzleEffect = "osi_muzzleeffect_rifle"
SWEP.GMMuzzleEffect = true -- Use Gmod muzzle effects rather than particle effects
SWEP.ShellModel = "models/weapons/arccw_osi/effects/rifle shell.mdl"
SWEP.ShellScale = 0.75
SWEP.ShellPhysScale = 1.5
SWEP.ShellSounds = ArcCW.OSI.Shells_MedCal
SWEP.ShellRotateAngle = Angle(0, 90, 0) -- call of doo doo

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.CamAttachment = 3 -- if set, this attachment will control camera movement

--[[SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "osi_tracer" -- override tracer (hitscan) effect]]

SWEP.SightTime = 0.20
SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.6

SWEP.BarrelLength = 0

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

SWEP.CustomizePos = Vector(5, -2, -2)
SWEP.CustomizeAng = Angle(15, 30, 10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 0

SWEP.Attachments = {
    {
        PrintName= "Optic",
        Slot= {"osi_optic_hp","osi_optic_lp"},
        Bone= "j_gun",
        Offset= {
            vpos = Vector(3.3, 0, 2.56),
            vang = Angle(0, 0, 0),
        },
        InstalledEles = {"rail"},
    },
	{
		PrintName= "Muzzle",
		Slot= {"osi_suppressor","osi_device"},
		Bone= "j_gun",
		Offset= {
			vpos = Vector(19, 0, 0.45),
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
                Scale = Vector(1.2, 1.3, 1),
                Offset = {
                    pos = Vector(3.3, 0, 2.1),
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
	["idle_empty"] = {
        Source = "idle_empty",
        Time = nil,
    },
    ["fire"] = {
        Source = "fire",
        Time = nil,
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "fire_last",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/rifle_last.wav", 	                    t = 0},
					},
        ShellEjectAt = 0,
    },
	["fire_iron"] = {
        Source = "fire_ads",
        Time = nil,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire_last",
        Time = nil,
        SoundTable = {
						{s = "weapons/arccw_osi/rifle_last.wav", 	                    t = 0},
					},
        ShellEjectAt = 0,
    },
    ["draw"] = {
        Source = "pullout",
        Time = 39/30,
        SoundTable = {
						{s = "weapons/arccw_osi/arx/raise.wav",     t = 0},
					},
    },
    ["ready"] = {
        Source = "pullout_first",
        Time = 39/30,
        SoundTable = {
						{s = "weapons/arccw_osi/arx/raise.wav",     t = 0},
					},
    },
    ["holster"] = {
        Source = "putaway",
        Time = 17/30,
        SoundTable = {
						{s = "weapons/arccw_osi/arx/lower.wav",     t = 0},
					},
    },
    ["reload"] = {
        Source = "reload",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 85/30,
        MinProgress = 2,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/arx/magout.wav", 	                    t = 0.2},
						{s = "weapons/arccw_osi/magpull.wav", 	t = 0.9},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 1.0},
                        {s = "weapons/arccw_osi/arx/magin.wav", 	t = 1.133},
                        {s = "weapons/arccw_osi/arx/settle.wav",  t = 1.75},
					},
    },
	["reload_empty"] = {
        Source = "reload_empty",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Time = 96/30,
        MinProgress = 2,
        SoundTable = {
            {s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
            {s = "weapons/arccw_osi/arx/magout.wav", 	                    t = 0.2},
            {s = "weapons/arccw_osi/magpull.wav", 	t = 0.9},
            {s = "weapons/arccw_osi/cloth1.wav", 	                    t = 1.0},
            {s = "weapons/arccw_osi/arx/magin.wav", 	t = 1.133},
            {s = "weapons/arccw_osi/arx/chamber.wav",  t = 2.0},
            {s = "weapons/arccw_osi/arx/settle.wav",  t = 2.1},
					},
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 6/40,
    },
    ["idle_sprint"] = {
        Source = "sprint_loop",
        Time = 16/40,
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 9/40,
    },
}
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

