RefVerticalSens = 5
RefHorizontalSens = 8
RefDPI = 1750
RefScopeSens_1x = 22
--70ms per bullet
R4C = {
    [1] = { Vertical = 630, Horizontal = 5 },
    [2] = { Vertical = 840, Horizontal = -25 },
    [3] = { Vertical = 770, Horizontal = -25 },
    [4] = { Vertical = 700, Horizontal = -25 },
    [5] = { Vertical = 630, Horizontal = -25 },
    [6] = { Vertical = 630, Horizontal = -25 },
    [7] = { Vertical = 630, Horizontal = -25 },
    [8] = { Vertical = 630, Horizontal = -25 },
    [9] = { Vertical = 630, Horizontal = -25 },
    [10] = { Vertical = 630, Horizontal = 5 },
    [11] = { Vertical = 630, Horizontal = 5 },
    [12] = { Vertical = 630, Horizontal = 7 },
    [13] = { Vertical = 630, Horizontal = -17 },
    [14] = { Vertical = 630, Horizontal = -16 },
    [15] = { Vertical = 630, Horizontal = -15 },
    [16] = { Vertical = 630, Horizontal = -14 },
    [17] = { Vertical = 630, Horizontal = -14 },
    [18] = { Vertical = 630, Horizontal = -14 },
    [19] = { Vertical = 630, Horizontal = -4 },
    [20] = { Vertical = 630, Horizontal = -2 },
    [21] = { Vertical = 630, Horizontal = -2},
    [22] = { Vertical = 630, Horizontal = -30 },
    [23] = { Vertical = 630, Horizontal = -2 },
    [24] = { Vertical = 630, Horizontal = -7 },
    [25] = { Vertical = 630, Horizontal = -16 },
    [26] = { Vertical = 630, Horizontal = -14 },
}

-- User values (change these for adaptation)
UserVerticalSens = 5
UserHorizontalSens = 8
UserDPI = 1750
UserScopeSens_1x = 22

EnableRC = true
RequireToggle = true
ToggleKey = "CapsLock"

-- Calculate scaling factors
vertical_scale = (RefVerticalSens * RefDPI) / (UserVerticalSens * UserDPI)
horizontal_scale = (RefHorizontalSens * RefDPI) / (UserHorizontalSens * UserDPI)
scope_scale_1x = UserScopeSens_1x / RefScopeSens_1x

-- Track shot count for non-linear recoil
ShotCount = 0

-- Timer variables for 70ms update interval
local UPDATE_INTERVAL = 70  -- milliseconds
local SMOOTH_STEPS = 10  -- number of smooth steps to spread recoil across 70ms
local STEP_INTERVAL = UPDATE_INTERVAL / SMOOTH_STEPS  -- ~7ms per step
local MAX_SHOTS = 26  -- Stop recoil after 26 shots

function GetActivePreset(shotCount)
    if R4C[shotCount] then
        return R4C[shotCount]
    else
        return R4C[26]  -- Cap at shot 26 recoil values
    end
end

-- Calculate final recoil strengths
function GetFinalStrengths(preset)
    local vertical = math.floor(preset.Vertical * vertical_scale * scope_scale_1x)
    local horizontal = math.floor(preset.Horizontal * horizontal_scale * scope_scale_1x)
    return vertical, horizontal
end

-- Apply recoil smoothly over the 70ms window
function ApplySmoothedRecoil(vertical, horizontal)
    local verticalPerStep = vertical / SMOOTH_STEPS
    local horizontalPerStep = horizontal / SMOOTH_STEPS
    
    for i = 1, SMOOTH_STEPS do
        if IsMouseButtonPressed(1) then
            MoveMouseRelative(horizontalPerStep, verticalPerStep)
            Sleep(STEP_INTERVAL)
        else
            break
        end
    end
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
                        ApplySmoothedRecoil(VerticalStrength, HorizontalStrength)
                    until not IsMouseButtonPressed(1) or ShotCount >= MAX_SHOTS
                end
            until not IsMouseButtonPressed(3)
        end
    end
end