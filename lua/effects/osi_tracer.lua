-- act3
local bulletbase = {
    Name = "762x39_fmj", -- the bullet's code name
    PrintName = "7.62x39mm FMJ", -- the displayed bullet name
    Type = "FMJ",

    Description = "",--ACT3.Descriptions.FMJ, -- {"line1", "line2"...}

    Calibre = "762x39", -- determines what types of magazines this bullet can fit in
    MagazineCalibre = nil, -- if set, this round will pretend to be this type of bullet for loading into a magazine.
    SizeMult = 1, -- Multiplier for how big a round is, reducing how many can fit in a magazine
    TubeMagSizeMult = 1, -- Multiplier for how big a round is, only for tube magazines

    CaseEffect = "act3_case_762x39", -- the visual shell ejection effect of the bullet

    BaseDamage = 23,
    HalfwayDist = 24000,

    Num = 1, -- how many bullets are fired

    Projectile = false, -- name of projectile entity
    ProjectileForce = 0, -- force at which projectile will be fired
    ProjectileAngles = Vector(0, 0, 0), -- angle offset of projectile

    AccuracyMult = 1, -- weapon accuracy multiplier
    RecoilMult = 1, -- weapon recoil multiplier

    -- these damage multipliers are for if you 
    DamageMult_Headshot = 1, -- default: 1
    DamageMult_Torso = 1, -- default: 1
    DamageMult_Limbs = 1, -- default: 1
    DamageMult_Materiel = 0.75, -- default: 0.75
    -- damage multiplier for materiel targets, i.e. props, vehicles, robots, machines
    DamageMult_AP = 1.05, -- damage multiplier to help defeat armoured targets

    IncendiaryFactor = 0, -- incendiary factor is used either to determine the size of the fireball created on impact or the chance of igniting a materiel target.
    MuzzleVelocityMult = 1,
    AirDrag = 1.25,
    WaterDrag = 3,

    TracerBody = nil,
    TracerTail = nil,
    TracerLength = 0,
    TracerWidth = 0,
    TracerHeadSize = 0,
    TracerColor = Color(100, 100, 100),
    TracerTPoint1 = 0,
    TracerTPoint2 = 1,
    Glow = false,

    DropMult = 1, -- multiplies how much the proj. is affected by drop

    WindMult = 1,

    PitchMod = 1, -- multiplies the pitch of the gun
    VolMod = 1, -- multiplies the vol of the gun (sound distance)
    SubSonic = false,

    MaxRicChance = 95, -- maximum chance this bullet will ricochet. Technically, the bullet will never exactly have this chance to ricochet as it requires a perfectly horizontal shot, which is impossible, but it can get close.
    Pen_RHAe = nil, -- the amount of mm of rolled homogenous armor this bullet can penetrate. Leave blank to auto-calculate.
    ChemicalEffect = false, -- this bullet explodes on impact and should never penetrate or ricochet

    RequireFlags = {},
    ExcludeFlags = {},

    GiveCount = 24, -- how many bullets to give

    OnImpact = nil, -- a function(att, tr, dmg) obtained from the bullet impact trace

    DamageType = DMG_BULLET -- damage type of bullet
}

-- act3

EFFECT.Material = Material("particle/water/waterdrop_001a2_refract")
EFFECT.Color = Color(255, 255, 255)
EFFECT.Width = 4
EFFECT.DieTime = 4

function EFFECT:Init(data)
    local wpn = data:GetEntity()

    self.Bullet = bulletbase

    if wpn.MuzzleVelocity then
        self.Speed = wpn.MuzzleVelocity * self.Bullet.MuzzleVelocityMult
    else
        self.Speed = 25000
    end
    self.EndPos = data:GetOrigin()

    if !wpn.GetMuzzlePos then
        self.DieTime = 0
        return
    end


    local mpos = wpn:GetMuzzlePos()

    if !mpos then self:Remove() return end

    self.TrueLength = (mpos - self.EndPos):Length()
    self.StartPos = wpn:GetMuzzlePos() + ((self.EndPos - wpn:GetMuzzlePos()):GetNormalized() * ACT3.BulletsMinDistance)

    if self.TrueLength <= ACT3.BulletsMinDistance then
        self.DieTime = 0
    end

    self.SpawnTime = CurTime()
    self.Length = (self.StartPos - self.EndPos):Length()
    self.DieTime = self.SpawnTime + (self.Length / self.Speed)
    self:SetRenderBoundsWS(self.StartPos, self.EndPos)
end

function EFFECT:Think()
    return self.DieTime > CurTime()
end

function EFFECT:Render()
    local bullet = self.Bullet

    local delta = (CurTime() - self.SpawnTime) / (self.DieTime - self.SpawnTime)
    local startbeampos = Lerp(delta, self.StartPos, self.EndPos)
    local endbeampos = Lerp(delta + (bullet.TracerLength / self.Length), self.StartPos, self.EndPos)

    local width = bullet.TracerWidth
    local headsize = bullet.TracerHeadSize

    if ACT3_InNightScope and bullet.Glow then
        width = width * 3
        headsize = headsize * 3
    end

    if bullet.TracerBody then
        render.SetMaterial(bullet.TracerBody)
        render.DrawSprite(endbeampos, headsize, headsize, bullet.TracerColor)
    end

    if bullet.TracerTail then
        render.SetMaterial(bullet.TracerTail)
        render.DrawBeam(startbeampos, endbeampos, width, bullet.TracerTPoint2, bullet.TracerTPoint1, bullet.TracerColor)
    end
end