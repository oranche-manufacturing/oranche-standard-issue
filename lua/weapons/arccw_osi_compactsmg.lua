SWEP.Base= "arccw_base"
SWEP.UseHands= true
SWEP.Spawnable= true
SWEP.AdminOnly= false

SWEP.PrintName= "Galzi-9"
SWEP.Category= "ArcCW - OSI"
SWEP.Trivia_Class= "SMG"
SWEP.Trivia_Desc= "Hollywood film stars, criminals, military; it has served them all - and it will serve you just fine. No refunds."
SWEP.Trivia_Manufacturer= "Star Of David Inc."
SWEP.Trivia_Country= "Israel"
SWEP.Trivia_Calibre= "9x19mm"
SWEP.Slot= 2

SWEP.ViewModel= "models/weapons/arccw_osi/compact smg.mdl"
SWEP.ViewModelFOV= 75
SWEP.WorldModel= "models/weapons/arccw_osi/compact smg.mdl"

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-10.5, 5, -3.5),
    ang = Angle(-10, 5, 180),
    scale = Vector(1.5, 1.5, 1.5),
}

SWEP.DefaultBodygroups = "00" -- 01 for no stock

SWEP.Damage= 26
SWEP.DamageMin= 19
SWEP.RangeMin= 20 -- metres
SWEP.Range= 55 -- metres
SWEP.Penetration= 3 -- millimetres
SWEP.DamageType= DMG_BULLET
SWEP.ShootEntity= nil

SWEP.MuzzleVelocity= 300
SWEP.CanFireUnderwater = false -- gloop gloop
SWEP.ChamberSize = 0 -- remember to not be an idiot (oranche what the fuck dude we told you not to be an idiot)
SWEP.Primary.ClipSize = 32
-- cs+ style clip extenders
SWEP.ExtendedClipSize = 48
SWEP.ReducedClipSize = 12

SWEP.VisualRecoilMult = 1 -- throw the viewmodel how far back
SWEP.Recoil = 0.3 -- vertical recoil
SWEP.RecoilSide = 0.2 -- horizontal recoil (this is harder/more random to control!)

SWEP.Delay = 60 / 600 -- 60 / RPM
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

SWEP.NPCWeaponType = "weapon_smg"
SWEP.NPCWeight = 100 -- 100 in the center

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 100 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 0 -- dispersion that remains even in sights
SWEP.JumpDispersion = 100 -- dispersion penalty when in the air

SWEP.Primary.Ammo = "pistol"

SWEP.ShootVol = 80 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw_osi/compact smg/fire_first.wav"
SWEP.ShootSound = "weapons/arccw_osi/compact smg/fire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw_osi/compact smg/fire_supp.wav"
SWEP.DistantShootSound = "weapons/arccw_osi/compact smg/fire_dist.wav"

SWEP.Hook_GetShootSound = function(wep, sound)
    local thatsound
    if (wep:GetBurstCount() == 1) then
        thatsound = "weapons/arccw_osi/compact smg/fire_first.wav"
    elseif (wep:GetBurstCount() % 3 == 1) then
        thatsound = "weapons/arccw_osi/compact smg/fire_01.wav"
    elseif (wep:GetBurstCount() % 3 == 2) then
        thatsound = "weapons/arccw_osi/compact smg/fire_02.wav"
    else
        thatsound = "weapons/arccw_osi/compact smg/fire_03.wav"
    end
	
    return thatsound
end

SWEP.Override_ShellEffect = "osi_shelleject"
SWEP.MuzzleEffect = "osi_muzzleeffect_smg"
SWEP.GMMuzzleEffect = true -- Use Gmod muzzle effects rather than particle effects
SWEP.ShellModel = "models/weapons/arccw_osi/effects/pistol shell.mdl"
SWEP.ShellScale = 0.67
SWEP.ShellPhysScale = 1.5
SWEP.ShellSounds = ArcCW.OSI.Shells_LowCal
SWEP.ShellRotateAngle = Angle(0, 90, 0) -- call of doo doo

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on
SWEP.CamAttachment = 3 -- if set, this attachment will control camera movement

--[[SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "osi_tracer" -- override tracer (hitscan) effect]]

SWEP.SightTime = 0.20
SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.90

SWEP.BarrelLength = 10

SWEP.BulletBones = {}
SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.89, -4, 1.14),
    Ang = Angle(0, 0, 0),
    Magnification = 1.2,
    SwitchToSound = "",
    SwitchFromSound = "",
    CrosshairInSights = false,
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.ActivePos = Vector(0.25, -2, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0.25, -2, 1)
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
            vpos = Vector(-4, 0, 2.8),
            vang = Angle(0, 0, 0),
        },
        InstalledEles = {"rail"},
    },
	{
		PrintName= "Muzzle",
		Slot= {"osi_suppressor","osi_device"},
		Bone= "j_gun",
		Offset= {
			vpos = Vector(8, 0, 1.35),
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
                Scale = Vector(.75, 1.7, 1),
                Offset = {
                    pos = Vector(-3.6, 0, 2.3),
                    ang = Angle(0, 0, 0)
                },
                ModelSkin = 1,
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
        Time = 0.25,
        SoundTable = {
						{s = "weapons/arccw_osi/compact smg/raise.wav",     t = 0},
					},
    },
    ["ready"] = {
        Source = "pullout_first",
        Time = 1.5,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
						{s = "weapons/arccw_osi/magpull.wav", 	                    t = 0.1},
						{s = "weapons/arccw_osi/compact smg/chback.wav", 	        t = 0.50},
						{s = "weapons/arccw_osi/compact smg/chamber.wav", 	        t = 0.80},
						{s = "weapons/arccw_osi/cloth3.wav", 	                    t = 1.1},
					},
    },
    ["holster"] = {
        Source = "putaway",
        Time = 0.25,
        SoundTable = {
						{s = "weapons/arccw_osi/compact smg/lower.wav",             t = 0},
					},
    },
    ["reload"] = {
        Source = "reload",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 2.25,
        MinProgress = 1.7,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
                        {s = "weapons/arccw_osi/compact smg/magout.wav", 	        t = 0.27},
                        {s = "weapons/arccw_osi/magpouch_in.wav", 	                t = 0.31},
						{s = "weapons/arccw_osi/magpull.wav", 	                    t = 1},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 1.15},
						{s = "weapons/arccw_osi/compact smg/magin.wav", 	        t = 1.3},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 1.4},
						{s = "weapons/arccw_osi/compact smg/settle.wav", 	        t = 1.8},
					},
    },
	["reload_empty"] = {
        Source = "reload_empty",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 3,
        MinProgress = 1.7,
        SoundTable = {
						{s = "weapons/arccw_osi/cloth2.wav", 	                    t = 0},
                        {s = "weapons/arccw_osi/compact smg/magout.wav", 	        t = 0.27},
                        {s = "weapons/arccw_osi/magpouch_in.wav", 	                t = 0.31},
						{s = "weapons/arccw_osi/magpull.wav", 	                    t = 1},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 1.2},
						{s = "weapons/arccw_osi/compact smg/magin.wav", 	        t = 1.3},
						{s = "weapons/arccw_osi/compact smg/chback.wav", 	        t = 1.95},
						{s = "weapons/arccw_osi/compact smg/chamber.wav", 	        t = 2.20},
						{s = "weapons/arccw_osi/cloth1.wav", 	                    t = 2.22},
						{s = "weapons/arccw_osi/compact smg/settle.wav", 	        t = 2.6},
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
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1

