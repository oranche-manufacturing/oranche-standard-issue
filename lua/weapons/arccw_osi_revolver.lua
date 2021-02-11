SWEP.Base= "arccw_base"
SWEP.UseHands= true
SWEP.Spawnable= true
SWEP.AdminOnly= false

SWEP.PrintName= ".500 Excavator"
SWEP.Category= "ArcCW - OSI"
SWEP.Trivia_Class= "Single-Action Revolver"
SWEP.Trivia_Desc= "When you need precision shooting and bigger bang, look no further than our hand-crafted, fine-pressed Excavator models."
SWEP.Trivia_Manufacturer= "Blackeye Family Co."
SWEP.Trivia_Country= "U.S.A"
SWEP.Trivia_Calibre= ".500 Samuel n' Hill"
SWEP.Slot= 1

SWEP.ViewModel= "models/weapons/arccw_osi/single action revolver 4.mdl"
SWEP.ViewModelFOV= 75
SWEP.WorldModel= "models/weapons/arccw_osi/heavy pistol.mdl"

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-11, 4, -3),
    ang = Angle(-10, 0, 180),
    scale = Vector(1.25, 1.25, 1.25),
}

SWEP.Damage= 95
SWEP.DamageMin= 75
SWEP.RangeMin= 20 -- metres
SWEP.Range= 45 -- metres
SWEP.Penetration= 10 -- millimetres
SWEP.DamageType= DMG_BULLET
SWEP.ShootEntity= nil

SWEP.MuzzleVelocity= 300
SWEP.CanFireUnderwater = false -- gloop gloop
SWEP.ChamberSize = 0 -- remember to not be an idiot
SWEP.Primary.ClipSize = 6
-- cs+ style clip extenders
SWEP.ExtendedClipSize = 6
SWEP.ReducedClipSize = 6

SWEP.VisualRecoilMult = 1 -- throw the viewmodel how far back
SWEP.Recoil = 5 -- vertical recoil
SWEP.RecoilSide = 1 -- horizontal recoil (this is harder/more random to control!)

SWEP.Delay = 60 / 180 -- 60 / RPM
SWEP.Num = 1 -- shots per trigger pull
SWEP.Firemodes = {
    {
        PrintName = "DOUBLE-ACTION",
        Mode = 1,
        CustomBars = "-",
    },
    {
        PrintName = "SAFETY",
        Mode = 0,
        CustomBars = "_",
    }
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 100 -- 100 in the center

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 350 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 250 -- dispersion penalty when in the air

SWEP.Primary.Ammo = "357"

SWEP.ShootVol = 80 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_osi/single action revolver/fire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_osi/normal pistol/fire_supp.wav"
SWEP.DistantShootSound = "weapons/arccw_osi/single action revolver/fire_dist.wav"

SWEP.Override_ShellEffect = "osi_shelleject"
SWEP.MuzzleEffect = "osi_muzzleeffect_pistol_heavy"
SWEP.GMMuzzleEffect = true -- Use Gmod muzzle effects rather than particle effects
SWEP.ShellModel = "models/weapons/arccw_osi/effects/pistol shell.mdl"
SWEP.ShellScale = 1
SWEP.ShellPhysScale = 1.5
SWEP.ShellSounds = ArcCW.OSI.Shells_MedCal
SWEP.ShellRotateAngle = Angle(0, 180, 0) -- call of doo doo
SWEP.ShellRotate = 180

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 3 -- which attachment to put the case effect on

--[[SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "osi_tracer" -- override tracer (hitscan) effect]]

SWEP.SightTime = 0.28
SWEP.SpeedMult = 0.975
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 18

SWEP.BulletBones = {}
SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-4.458, -2, 1.46),
    Ang = Angle(0, 0, 0),
    Magnification = 1.0,
    SwitchToSound = "",
    SwitchFromSound = "",
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.ActivePos = Vector(-1, -2, 1.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0.75, 0, 0.75)
SWEP.HolsterAng = Angle(-5, 10, 0)

SWEP.CustomizePos = Vector(6, -6, -1)
SWEP.CustomizeAng = Angle(15, 40, 10)

SWEP.BarrelOffsetSighted = Vector(0, 0, 1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 4
SWEP.RevolverReload = true -- cases all eject on reload

SWEP.Attachments = {
    {
        PrintName= "Optic", -- Reminder to rail me!
        Slot= {"osi_optic", "osi_optic_lp"},
        Bone= "j_gun",
        Offset= {
            vpos = Vector(2, 0, 2),
            vang = Angle(0, 0, 0),
        },
    },
    {
        PrintName= "Muzzle",
        Slot= {"osi_suppressor","osi_device"},
        Bone= "j_gun",
        Offset= {
            vpos = Vector(8.5, 0, 1.1),
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
	["idle_empty"] = {
        Source = "idle_empty",
        Time = nil,
    },
    ["fire"] = {
        Source = "fire",
        Time = 0.55,
        SoundTable = {
						{s = "weapons/arccw_osi/single action revolver/close.wav", 	t = 0.15},
					},
    },
    ["fire_empty"] = {
        Source = "fire_last",
        Time = 0.55,
    },
	["fire_iron"] = {
        Source = "fire_ads",
        Time = 0.55,
        SoundTable = {
						{s = "weapons/arccw_osi/single action revolver/close.wav", 	t = 0.15},
					},
    },
    ["fire_iron_empty"] = {
        Source = "fire_ads_last",
        Time = 0.55,
    },
    ["draw"] = {
        Source = "sprint_out",
        Time = nil,
    },
    ["holster"] = {
        Source = "sprint_in",
        Time = nil,
    },
    ["reload"] = {
        Source = "reload",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 3.1,
        MinProgress = 1.5,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/single action revolver/open.wav", 	t = 0.2},
						{s = "weapons/arccw_osi/single action revolver/ejector.wav", 	t = 0.5},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0.8},
						{s = "weapons/arccw_osi/single action revolver/loader.wav", 	    t = 1.5},
						{s = "weapons/arccw_osi/single action revolver/close.wav", 	t = 2.35},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 2.7},
					},
        ShellEjectAt = 0.9,
    },
	["reload_empty"] = {
        Source = "reload_empty",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 3.3,
        MinProgress = 1.5,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/single action revolver/open.wav", 	t = 0.2},
						{s = "weapons/arccw_osi/single action revolver/ejector.wav", 	t = 0.5},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0.8},
						{s = "weapons/arccw_osi/single action revolver/loader.wav", 	    t = 1.5},
						{s = "weapons/arccw_osi/single action revolver/hammer.wav", 	t = 2.35},
						{s = "weapons/arccw_osi/single action revolver/close.wav", 	t = 2.6},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 2.7},
					},
        ShellEjectAt = 0.9,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = nil,
    },
    ["idle_sprint"] = {
        Source = "sprint_loop",
        Time = 30/40,
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = nil,
    },
}
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER

