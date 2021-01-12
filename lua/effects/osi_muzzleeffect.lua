local images_muzzle = {"effects/muzzleflash1", "effects/muzzleflash2", "effects/muzzleflash3", "effects/muzzleflash4"}
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
    if !IsValid(ply) then return end

    local pos, dir = wpn:GetMuzzlePos()
    dir = dir:Forward()

    local addvel = ply:GetVelocity()

    local emitter = ParticleEmitter(pos)

    if !wpn.Suppressed and !wpn.FlashHidden then
        local particle = emitter:Add(TableRandomChoice(images_muzzle), pos)

        if particle then
            particle:SetVelocity(addvel)
            particle:SetLifeTime(0)
            particle:SetDieTime(math.Rand(0.05 ,0.1))
            particle:SetStartAlpha(math.Rand(150, 200))
            particle:SetEndAlpha(0)
            particle:SetStartSize(math.Rand(5, 10))
            particle:SetEndSize(math.Rand(15, 20))
            particle:SetLighting(false)
            particle:SetRoll(math.random(0, 360))
            particle:SetColor(255, 255, 255)
        end
    end

    --[[for i = 1, quality do
        local particle = emitter:Add(ACT3_GetSmokeImage(), pos)

        if particle then
            particle:SetVelocity(VectorRand() * 10 + (dir * i * math.Rand(12, 24)) + addvel)
            particle:SetLifeTime(0)
            particle:SetDieTime(math.Rand(0.5, 0.8))
            particle:SetStartAlpha(math.Rand(20, 25) * (4 - quality))
            particle:SetEndAlpha(0)
            particle:SetStartSize(math.Rand(8, 12))
            particle:SetEndSize(math.Rand(24, 30))
            particle:SetRoll(math.rad(math.Rand(0, 360)))
            particle:SetRollDelta(math.Rand(-1, 1))
            particle:SetLighting(true)
            particle:SetAirResistance(96)
            particle:SetGravity(Vector(-7, 3, 60))
            particle:SetColor(255, 255, 255)
        end
    end]]

    if quality >= 3 then
        local particle = emitter:Add(TableRandomChoice(images_distort), pos)

        if particle then
            particle:SetVelocity((dir * 25) + 1.05 * addvel)
            particle:SetLifeTime(0)
            particle:SetDieTime(math.Rand(0.1, 0.2))
            particle:SetStartAlpha(255)
            particle:SetEndAlpha(0)
            particle:SetStartSize(math.Rand(5, 8))
            particle:SetEndSize(0)
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