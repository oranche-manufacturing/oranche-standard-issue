SWEP.Base= "arccw_base"
SWEP.UseHands= true
SWEP.Spawnable= true
SWEP.AdminOnly= false

SWEP.PrintName= "Wildman Red"
SWEP.Category= "ArcCW - OSI"
SWEP.Trivia_Class= "Magnum Pistol"
SWEP.Trivia_Desc= "No better pistol for hunting big game. It's been crafted with unique family-secret materials, giving this fine weapon a cherry red color."
SWEP.Trivia_Manufacturer= "Blackeye Family Co."
SWEP.Trivia_Country= "U.S.A"
SWEP.Trivia_Calibre= ".357 Magnum"
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

SWEP.Damage= 55
SWEP.DamageMin= 35
SWEP.RangeMin= 10 -- metres
SWEP.Range= 35 -- metres
SWEP.Penetration= 8 -- millimetres
SWEP.DamageType= DMG_BULLET
SWEP.ShootEntity= nil

SWEP.MuzzleVelocity= 300
SWEP.CanFireUnderwater = false -- gloop gloop
SWEP.ChamberSize = 1 -- remember to not be an idiot
SWEP.Primary.ClipSize = 9
-- cs+ style clip extenders
SWEP.ExtendedClipSize = 15
SWEP.ReducedClipSize = 7

SWEP.VisualRecoilMult = 1 -- throw the viewmodel how far back
SWEP.Recoil = 3 -- vertical recoil
SWEP.RecoilSide = 1 -- horizontal recoil (this is harder/more random to control!)

SWEP.Delay = 60 / 300 -- 60 / RPM
SWEP.Num = 1 -- shots per trigger pull
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

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 100 -- 100 in the center

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 150 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 300 -- dispersion penalty when in the air

SWEP.Primary.Ammo = "357"

SWEP.ShootVol = 80 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw_osi/heavy pistol/fire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_osi/normal pistol/fire_supp.wav"
SWEP.DistantShootSound = "weapons/arccw_osi/heavy pistol/fire_dist.wav"

SWEP.Override_ShellEffect = "osi_shelleject"
SWEP.MuzzleEffect = "osi_muzzleeffect_pistol_heavy"
SWEP.GMMuzzleEffect = true -- Use Gmod muzzle effects rather than particle effects
SWEP.ShellModel = "models/weapons/arccw_osi/effects/pistol shell.mdl"
SWEP.ShellScale = 0.8
SWEP.ShellPhysScale = 1.5
SWEP.ShellSounds = ArcCW.OSI.Shells_MedCal
SWEP.ShellRotateAngle = Angle(0, 180, 0) -- call of doo doo

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.CamAttachment = 3 -- if set, this attachment will control camera movement

--[[SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "osi_tracer" -- override tracer (hitscan) effect]]

SWEP.SightTime = 0.225
SWEP.SpeedMult = 0.975
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 0

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

SWEP.CustomizePos = Vector(5, -2, -2)
SWEP.CustomizeAng = Angle(15, 30, 10)

SWEP.BarrelOffsetSighted = Vector(0, 0, 1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.ExtraSightDist = 4

SWEP.Attachments = {
    {
        PrintName= "Optic", -- Reminder to rail me!
        Slot= {"osi_optic_lp"},
        Bone= "j_bolt",
        Offset= {
            vpos = Vector(0.7, 0, 0.2),
            vang = Angle(0, 0, 0),
        },  
        CorrectiveAng = Angle(1.428, 0, -0.361),
    },
    {
        PrintName= "Muzzle",
        Slot= {"osi_suppressor","osi_device"},
        Bone= "j_gun",
        Offset= {
            vpos = Vector(7.5, 0, 0.15),
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
        Time = nil,
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "fire_last",
        Time = 0.5,
        SoundTable = {
						{s = "weapons/arccw_osi/pistol_last.wav", 	                    t = 0},
					},
        ShellEjectAt = 0,
    },
	["fire_iron"] = {
        Source = "fire_ads",
        Time = nil,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "fire_ads_last",
        Time = 0.5,
        SoundTable = {
						{s = "weapons/arccw_osi/pistol_last.wav", 	                    t = 0},
					},
        ShellEjectAt = 0,
    },
    ["draw"] = {
        Source = "draw",
        Time = nil,
        SoundTable = {
            {s = "weapons/arccw_osi/heavy pistol/raise.wav", 	t = 0},
        },
    },
    ["holster"] = {
        Source = "holster",
        Time = nil,
        SoundTable = {
            {s = "weapons/arccw_osi/heavy pistol/lower.wav", 	t = 0},
        },
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = nil,
        SoundTable = {
            {s = "weapons/arccw_osi/glock/raise.wav", 	t = 0},
        },
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        Time = nil,
        SoundTable = {
            {s = "weapons/arccw_osi/glock/lower.wav", 	t = 0},
        },
    },
    ["reload"] = {
        Source = "reload",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Time = 48/24,
        MinProgress = 1.25,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/heavy pistol/magout.wav", 	t = 0.2},
                        {s = "weapons/arccw_osi/magpull.wav", 	                    t = 0.4},
                        {s = "weapons/arccw_osi/pst_magdrop_poly.wav", 	                    t = 0.55},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0.6},
						{s = "weapons/arccw_osi/heavy pistol/magin.wav", 	    t = 0.85},
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
						{s = "weapons/arccw_osi/heavy pistol/magout.wav", 	t = 0.2},
                        {s = "weapons/arccw_osi/magpull.wav", 	                    t = 0.4},
                        {s = "weapons/arccw_osi/pst_magdrop_poly.wav", 	                    t = 0.55},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 0.67},
						{s = "weapons/arccw_osi/heavy pistol/magin.wav", 	    t = 0.85},
						{s = "weapons/arccw_osi/heavy pistol/chamber.wav", 	t = 1.4},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 1.7},
					},
    },
    --[[["exit_inspect"] = {
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
    },]]
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

