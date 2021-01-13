local images_muzzle = {"effects/arccw_osi/muzzle_smg1"}
local images_smoke = {"particle/smokesprites_0001", "particle/smokesprites_0002", "particle/smokesprites_0003", "particle/smokesprites_0004", "particle/smokesprites_0005", "particle/smokesprites_0006", "particle/smokesprites_0007", "particle/smokesprites_0008", "particle/smokesprites_0009", "particle/smokesprites_0010", "particle/smokesprites_0011", "particle/smokesprites_0012", "particle/smokesprites_0013", "particle/smokesprites_0014", "particle/smokesprites_0015", "particle/smokesprites_0016"}
local images_distort = {"sprites/heatwave"}

local function TableRandomChoice(tbl)
    return tbl[math.random(#tbl)]
end

function EFFECT:Init(data)
    local quality = 3

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

    if !wpn.Suppressed and !wpn.FlashHidden then
        local particle = emitter:Add(TableRandomChoice(images_muzzle), pos)

        if particle then
            particle:SetVelocity(addvel)
            particle:SetLifeTime(0)
            particle:SetDieTime(.1)
            particle:SetStartAlpha(math.Rand(150, 200))
            particle:SetEndAlpha(0)
            particle:SetStartSize(math.Rand(18, 17))
            particle:SetEndSize(13)
            particle:SetLighting(false)
            particle:SetRoll(math.random(0, 360))
            particle:SetColor(255, 255, 255)
        end
    end

    for i = 1, quality do
        local particle = emitter:Add(TableRandomChoice(images_smoke), pos)

        if particle then
            particle:SetVelocity(VectorRand() * 10 + addvel)--(dir * i * math.Rand(6, 12)) + addvel)
            particle:SetLifeTime(0)
            particle:SetDieTime(math.Rand(1, 1.5))
            particle:SetStartAlpha(math.Rand(60, 75) * (4 - quality))
            particle:SetEndAlpha(0)
            particle:SetStartSize(4)
            particle:SetEndSize(math.Rand(12, 24)+pwpn:GetBurstCount())
            particle:SetRoll(math.rad(math.Rand(0, 360)))
            particle:SetRollDelta(math.Rand(-1, 1))
            particle:SetLighting(true)
            particle:SetAirResistance(96)
            particle:SetGravity(Vector(0, 0, 0))--Vector(-7, 3, 30))
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

        if !wpn.Suppressed then
            local light = DynamicLight(self:EntIndex())
            if (light) then
                light.Pos = pos
                light.r = 244
                light.g = 209
                light.b = 66
                light.Brightness = 2
                light.Decay = 2500
                light.Size = 256
                light.DieTime = CurTime() + 0.1
            end
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