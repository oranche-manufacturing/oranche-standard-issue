local images_muzzle = {"effects/arccw_osi/muzzle_smg1"}
local images_smoke = {"effects/arccw_osi/smoke1_1","effects/arccw_osi/smoke1_2","effects/arccw_osi/smoke1_3","effects/arccw_osi/smoke1_4",}
local images_distort = {"sprites/heatwave"}

local function TableRandomChoice(tbl)
    return tbl[math.random(#tbl)]
end

function EFFECT:Init(data)
    local quality = GetConVar("arccw_osi_particlequality"):GetInt()

    if quality == 0 then return end

    local wpn = data:GetEntity()
    if !IsValid(wpn) then return end
    local ply = wpn:GetOwner()
    local pwpn = ply:GetActiveWeapon()
    if !IsValid(ply) then return end

    local att = wpn:GetAttachment(pwpn:GetBuff_Override("Override_MuzzleEffectAttachment") or wpn.MuzzleEffectAttachment or 1)

    local pos, dir = att.Pos, att.Ang
    dir = dir:Forward()

    local addvel = ply:GetVelocity()

    local emitter = ParticleEmitter(pos)

    for i = 1, quality do
        local particle = emitter:Add(TableRandomChoice(images_smoke), pos)

        if particle then
            particle:SetVelocity(VectorRand() * 10 + addvel)
            particle:SetLifeTime(0)
            particle:SetDieTime(math.Rand(1, 1.5))
            particle:SetStartAlpha(25 * (4 - quality))
            particle:SetEndAlpha(50 * (4 - quality))
            particle:SetStartSize(0+pwpn:GetBurstCount())
            particle:SetEndSize(math.Rand(3, 6)+pwpn:GetBurstCount())
            particle:SetRoll(math.rad(90*math.random(0, 3)))
            particle:SetRollDelta(0)
            particle:SetLighting(true)
            particle:SetAirResistance(196)
            particle:SetGravity(Vector(0, 0, 10))
            particle:SetColor(255, 255, 255)
        end
    end

    if quality >= 3 then
        local particle = emitter:Add(TableRandomChoice(images_distort), pos)

        if particle then
            particle:SetVelocity((dir * 25) + 1.05 * addvel)
            particle:SetLifeTime(0)
            particle:SetDieTime(math.Rand(0.1, 0.2))
            particle:SetStartAlpha(255)
            particle:SetEndAlpha(0)
            particle:SetStartSize(math.Rand(5, 15))
            particle:SetEndSize(pwpn:GetBurstCount())
            particle:SetRoll(math.Rand(0, 360))
            particle:SetRollDelta(math.Rand(-2, 2))
            particle:SetAirResistance(5)
            particle:SetGravity(Vector(0, 0, 40))
            particle:SetColor(255, 255, 255)
        end
    end

    emitter:Finish()
end

function EFFECT:Think()
    return false
end

function EFFECT:Render()
    return false
end