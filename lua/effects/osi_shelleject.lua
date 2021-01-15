
local images_smoke = {"effects/arccw_osi/eject1_1","effects/arccw_osi/eject1_2"}

local function TableRandomChoice(tbl)
    return tbl[math.random(#tbl)]
end

EFFECT.Sounds = {}
EFFECT.Pitch = 90
EFFECT.Scale = 1.5
EFFECT.PhysScale = 1
EFFECT.Model = "models/shells/shell_57.mdl"
EFFECT.Material = nil
EFFECT.JustOnce = true
EFFECT.AlreadyPlayedSound = false
EFFECT.ShellTime = 1

EFFECT.SpawnTime = 0

function EFFECT:Init(data)
    local quality = GetConVar("arccw_osi_particlequality"):GetInt()

    --if quality == 0 then return end

    local att = data:GetAttachment()
    local ent = data:GetEntity()
    local mag = data:GetMagnitude()
    

    local wpn = data:GetEntity()
    if !IsValid(wpn) then return end
    local ply = wpn:GetOwner()
    local pwpn = ply:GetActiveWeapon()

    local mdl = LocalPlayer():GetViewModel()

    if LocalPlayer():ShouldDrawLocalPlayer() then
        mdl = ent.WMModel or ent
    end

    if !IsValid(ent) then self:Remove() return end

    if ent.Owner != LocalPlayer() then
        mdl = ent.WMModel or ent
    end

    if ent.Owner != LocalPlayer() then
        if !GetConVar("arccw_shelleffects"):GetBool() then self:Remove() return end
    end

    if !mdl or !IsValid(mdl) then self:Remove() return end

    if !mdl:GetAttachment(att) then self:Remove() return end

    local origin, ang = mdl:GetAttachment(att).Pos, mdl:GetAttachment(att).Ang

    ang:RotateAroundAxis(ang:Right(), -90 + ent.ShellRotate)

    ang:RotateAroundAxis(ang:Right(), (ent.ShellRotateAngle or Angle(0, 0, 0))[1])
    ang:RotateAroundAxis(ang:Up(), (ent.ShellRotateAngle or Angle(0, 0, 0))[2])
    ang:RotateAroundAxis(ang:Forward(), (ent.ShellRotateAngle or Angle(0, 0, 0))[3])

    local dir = ang:Up()

    local st = GetConVar("arccw_shelltime"):GetFloat()

    if ent then
        self.Model = ent:GetBuff_Override("Override_ShellModel") or ent.ShellModel
        self.Material = ent:GetBuff_Override("Override_ShellMaterial") or ent.ShellMaterial
        self.Scale = ent:GetBuff("ShellScale") or 1--ent:GetBuff_Override("Override_ShellScale") or ent.ShellScale or 1
        self.PhysScale = ent:GetBuff_Override("Override_ShellPhysScale") or ent.ShellPhysScale or 1
        self.Pitch = ent:GetBuff_Override("Override_ShellPitch") or ent.ShellPitch or 100
        self.Sounds = ent:GetBuff_Override("Override_ShellSounds") or ent.ShellSounds
        self.ShellTime = st <= 0 and ent.ShellTime or st
    end

    self:SetPos(origin)
    self:SetModel(self.Model)
    self:SetModelScale(self.Scale)
    self:DrawShadow(true)
    self:SetAngles(ang)

    if self.Material then
        self:SetMaterial(self.Material)
    end

    local pb_vert = 2 * self.Scale * self.PhysScale
    local pb_hor = 0.5 * self.Scale * self.PhysScale

    self:PhysicsInitBox(Vector(-pb_vert,-pb_hor,-pb_hor), Vector(pb_vert,pb_hor,pb_hor))

    self:SetCollisionGroup(COLLISION_GROUP_INTERACTIVE_DEBRIS)

    local phys = self:GetPhysicsObject()

    local plyvel = Vector(0, 0, 0)

    if IsValid(ent.Owner) then
        plyvel = ent.Owner:GetAbsVelocity()
    end


    phys:Wake()
    phys:SetDamping(0, 0)
    phys:SetMass(1)
    phys:SetBuoyancyRatio(12)
    phys:SetMaterial("gmod_silent")

    phys:SetVelocity((dir * mag * math.Rand(0.8, 1.6)) + plyvel)
    phys:AddAngleVelocity(VectorRand() * 400)

    self.HitPitch = self.Pitch + math.Rand(-5,5)

    local emitter = ParticleEmitter(origin)
    local particle = emitter:Add(TableRandomChoice(images_smoke), origin)
    if (particle) and quality > 0 then
        particle:SetVelocity(Vector(ang:Up()*4, 0, 0) + plyvel) 
        particle:SetLifeTime(0)
        particle:SetDieTime(1)
        particle:SetStartAlpha(100)
        particle:SetEndAlpha(0)
        particle:SetStartSize(1+pwpn:GetBurstCount()*0.025)
        particle:SetEndSize(3+pwpn:GetBurstCount()*0.025)
        particle:SetRoll(math.Rand(-0.1, 0.1))
        particle:SetRollDelta(math.Rand(-0.1, 0.1))
        particle:SetLighting(true)
        particle:SetAirResistance(96)
        particle:SetGravity(Vector(ang:Up()*10, 0, 10))
        particle:SetColor(255, 255, 255)
    end

    self.SpawnTime = CurTime()
end

function EFFECT:PhysicsCollide()
    if self.AlreadyPlayedSound and self.JustOnce then return end

    sound.Play(self.Sounds[math.random(#self.Sounds)], self:GetPos(), 65, self.HitPitch, 1)

    self.AlreadyPlayedSound = true
end

function EFFECT:Think()
    if (self.SpawnTime + self.ShellTime) <= CurTime() then
        self:SetRenderFX( kRenderFxFadeFast )
        if (self.SpawnTime + self.ShellTime + 1) <= CurTime() then
            self:Remove()
            return
        end
    end
    return true
end

function EFFECT:Render()
    if !IsValid(self) then return end
    self:DrawModel()
end