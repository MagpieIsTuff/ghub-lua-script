-- SMG-12 Non-Linear Recoil Script for Logitech G HUB
-- Firerate: 1270 RPM (~47.2ms per shot)

-- Reference values (scaling presets)
RefVerticalSens = 15
RefHorizontalSens = 26
RefDPI = 1700
RefScopeSens_1x = 26

-- SMG-12 Weapon Data with Non-Linear Recoil Progression
SMG12 = {
    [1] = { Vertical = 10, Horizontal = 5 },
    [2] = { Vertical = 140, Horizontal = 5 },
    [3] = { Vertical = 70, Horizontal = 5 },
    [4] = { Vertical = 60, Horizontal = 5 },
    [5] = { Vertical = 60, Horizontal = 5 },
    [6] = { Vertical = 60, Horizontal = 5 },
    [7] = { Vertical = 60, Horizontal = 5 },
    [8] = { Vertical = 60, Horizontal = 5 },
    [9] = { Vertical = 60, Horizontal = 5 },
    [10] = { Vertical = 60, Horizontal = 5 },
    [11] = { Vertical = 60, Horizontal = 5 },
    [12] = { Vertical = 60, Horizontal = 7 },
    [13] = { Vertical = 60, Horizontal = 17 },
    [14] = { Vertical = 60, Horizontal = 16 },
    [15] = { Vertical = 60, Horizontal = 15 },
    [16] = { Vertical = 60, Horizontal = 14 },
    [17] = { Vertical = 55, Horizontal = 14 },
    [18] = { Vertical = 55, Horizontal = 14 },
    [19] = { Vertical = 55, Horizontal = 4 },
    [20] = { Vertical = 55, Horizontal = 2 },
    [21] = { Vertical = 55, Horizontal = 2},
    [22] = { Vertical = 61, Horizontal = 30 },
    [23] = { Vertical = 61, Horizontal = -2 },
    [24] = { Vertical = 61, Horizontal = 7 },
    [25] = { Vertical = 61, Horizontal = 16 },
    [26] = { Vertical = 61, Horizontal = 14 },
    [27] = { Vertical = 61, Horizontal = 14 },
    [28] = { Vertical = 61, Horizontal = -14 },
    [29] = { Vertical = 61, Horizontal = 14 },
    [30] = { Vertical = 61, Horizontal = 4 },
    [31] = { Vertical = 61, Horizontal = 4 },
    [32] = { Vertical = 61, Horizontal = 4 },
    [33] = { Vertical = 61, Horizontal = 4 },
}

-- User values (change these for adaptation)
UserVerticalSens = 15
UserHorizontalSens = 26
UserDPI = 1750
UserScopeSens_1x = 26

EnableRC = true
RequireToggle = true
ToggleKey = "CapsLock"

-- Calculate scaling factors
vertical_scale = (RefVerticalSens * RefDPI) / (UserVerticalSens * UserDPI)
horizontal_scale = (RefHorizontalSens * RefDPI) / (UserHorizontalSens * UserDPI)
scope_scale_1x = UserScopeSens_1x / RefScopeSens_1x

-- Track shot count for non-linear recoil
ShotCount = 0

-- Get the recoil preset based on shot count
function GetActivePreset(shotCount)
    if SMG12[shotCount] then
        return SMG12[shotCount]
    else
        return SMG12[33]  -- Cap at shot 33 recoil values
    end
end

-- Calculate final recoil strengths
function GetFinalStrengths(preset)
    local vertical = math.floor(preset.Vertical * vertical_scale * scope_scale_1x)
    local horizontal = math.floor(preset.Horizontal * horizontal_scale * scope_scale_1x)
    return vertical, horizontal
end

EnablePrimaryMouseButtonEvents(true)

function OnEvent(event, arg)
    -- Recoil logic
    if EnableRC and (not RequireToggle or IsKeyLockOn(ToggleKey)) then
        if IsMouseButtonPressed(3) then -- Aim
            repeat
                if IsMouseButtonPressed(1) then -- Shoot
                    ShotCount = 0  -- Reset shot count when starting to shoot
                    repeat
                        ShotCount = ShotCount + 1
                        local preset = GetActivePreset(ShotCount)
                        local VerticalStrength, HorizontalStrength = GetFinalStrengths(preset)
                        MoveMouseRelative(HorizontalStrength, VerticalStrength)
                        Sleep(math.random(6, 9))
                    until not IsMouseButtonPressed(1)
                end
                Sleep(math.random(6, 10))
            until not IsMouseButtonPressed(3)
        end
    end
end