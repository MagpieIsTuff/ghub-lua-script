-- CODER: DryeR6 (im_drye1 on discord/callme.drye on tiktok)
-- ██████╗ ██╗   ██╗██╗     ███████╗███████╗
-- ██╔══██╗██║   ██║██║     ██╔════╝██╔════╝
-- ██████╔╝██║   ██║██║     ███████╗█████╗  
-- ██╔═══╝ ██║   ██║██║     ╚════██║██╔══╝  
-- ██║     ╚██████╔╝███████╗███████║███████╗
-- ╚═╝      ╚═════╝ ╚══════╝╚══════╝╚══════╝
--  ██████╗ ██╗       █████╗  ██████╗  ██╗████████╗ █████╗ ███████╗
-- ██╔════╝ ██║      ██║  ██║ ██╔══██╗ ██║╚══██╔══╝██╔══██╗██╔════╝
-- ██║      ██║      ███████║ ██████╔╝ ██║   ██║   ███████║███████╗
-- ██║      ██║      ██╔══██║ ██╔══██╗ ██║   ██║   ██╔══██║╚════██║
-- ╚██████╗ ███████╗ ██║  ██║ ██║  ██║ ██║   ██║   ██║  ██║███████║
--  ╚═════╝ ╚══════╝ ╚═╝  ╚═╝ ╚═╝  ╚═╝ ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝
-- ██████╗      ██╗  ██╗
-- ╚════██╗     ██║  ██║
--  █████╔╝     ███████║
--  ╚═══██╗     ╚════██║
-- ██████╔╝          ██║
-- ╚═════╝  ██       ╚═╝
-- ============================================================================
-- WEAPON SELECTION (Change this to switch weapons)
-- ============================================================================

local SELECTED_WEAPON = "F2"  -- Options: "F2", "R4C", "SCORPION"

-- ============================================================================
-- PRESET RECOIL PATTERNS (created by Person 1 - the preset creator)
-- ============================================================================

local PRESET_RECOIL_CREATOR = {
    VerticalSens = 5,
    HorizontalSens = 8,
    DPI = 1750,
    ScopeSens_1x = 22,
    ScopeSens_2_5x = 36,
}

-- ============================================================================
-- USER CONFIGURATION (Person 2 - inputs their own settings)
-- ============================================================================

local CONFIG = {
    -- USER SENSITIVITY SETTINGS
    VerticalSens = 5,
    HorizontalSens = 8,
    DPI = 1750,
    ScopeSens_1x = 22,
    ScopeSens_2_5x = 36,
    
    -- SYSTEM
    EnableRecoil = true,
    RequireToggle = true,
    ToggleKey = "capslock",
    AimButton = 3,          -- Right Mouse Button
    FireButton = 1,         -- Left Mouse Button
}

-- ============================================================================
-- WEAPON DATA - Recoil patterns
-- Each weapon specifies which scope it was calibrated for
-- ============================================================================

local WEAPONS = {
    F2 = {
        name = "F2",
        calibrated_for_scope = "2.5x",
        update_interval = 62,
        max_shots = 25,
        recoil = {
            [1] = { v = 0, h = 0 },
            [2] = { v = 0, h = 0 },
            [3] = { v = 0, h = 0 },
            [4] = { v = 0, h = 0 },
            [5] = { v = 0, h = 0 },
            [6] = { v = 0, h = 0 },
            [7] = { v = 0, h = 0 },
            [8] = { v = 0, h = 0 },
            [9] = { v = 0, h = 0 },
            [10] = { v = 0, h = 0 },
            [11] = { v = 0, h = 0 },
            [12] = { v = 0, h = 0 },
            [13] = { v = 0, h = 0 },
            [14] = { v = 0, h = 0 },
            [15] = { v = 0, h = 0 },
            [16] = { v = 0, h = 0 },
            [17] = { v = 0, h = 0 },
            [18] = { v = 0, h = 0 },
            [19] = { v = 0, h = 0 },
            [20] = { v = 0, h = 0 },
            [21] = { v = 0, h = 0 },
            [22] = { v = 0, h = 0 },
            [23] = { v = 0, h = 0 },
            [24] = { v = 0, h = 0 },
            [25] = { v = 0, h = 0 },
        }
    },
    BEARING = {
        name = "BEARING",
        calibrated_for_scope = "1.0x",
        update_interval = 55,
        max_shots = 26,
        recoil = {
            [1] = { v = 0, h = 0 },
            [2] = { v = 0, h = 0 },
            [3] = { v = 0, h = 0 },
            [4] = { v = 0, h = 0 },
            [5] = { v = 0, h = 0 },
            [6] = { v = 0, h = 0 },
            [7] = { v = 0, h = 0 },
            [8] = { v = 0, h = 0 },
            [9] = { v = 0, h = 0 },
            [10] = { v = 0, h = 0 },
            [11] = { v = 0, h = 0 },
            [12] = { v = 0, h = 0 },
            [13] = { v = 0, h = 0 },
            [14] = { v = 0, h = 0 },
            [15] = { v = 0, h = 0 },
            [16] = { v = 0, h = 0 },
            [17] = { v = 0, h = 0 },
            [18] = { v = 0, h = 0 },
            [19] = { v = 0, h = 0 },
            [20] = { v = 0, h = 0 },
            [21] = { v = 0, h = 0 },
            [22] = { v = 0, h = 0 },
            [23] = { v = 0, h = 0 },
            [24] = { v = 0, h = 0 },
            [25] = { v = 0, h = 0 },
            [26] = { v = 0, h = 0 },
        }
    },
    R4C = {
        name = "R4C",
        calibrated_for_scope = "2.5x",
        update_interval = 70,
        max_shots = 26,
        recoil = {
            [1] = { v = 0, h = 0 },
            [2] = { v = 0, h = 0 },
            [3] = { v = 0, h = 0 },
            [4] = { v = 0, h = 0 },
            [5] = { v = 0, h = 0 },
            [6] = { v = 0, h = 0 },
            [7] = { v = 0, h = 0 },
            [8] = { v = 0, h = 0 },
            [9] = { v = 0, h = 0 },
            [10] = { v = 0, h = 0 },
            [11] = { v = 0, h = 0 },
            [12] = { v = 0, h = 0 },
            [13] = { v = 0, h = 0 },
            [14] = { v = 0, h = 0 },
            [15] = { v = 0, h = 0 },
            [16] = { v = 0, h = 0 },
            [17] = { v = 0, h = 0 },
            [18] = { v = 0, h = 0 },
            [19] = { v = 0, h = 0 },
            [20] = { v = 0, h = 0 },
            [21] = { v = 0, h = 0 },
            [22] = { v = 0, h = 0 },
            [23] = { v = 0, h = 0 },
            [24] = { v = 0, h = 0 },
            [25] = { v = 0, h = 0 },
            [26] = { v = 0, h = 0 },
        }
    },
    SCORPION = {
        name = "SCORPION",
        calibrated_for_scope = "1.0x",
        update_interval = 56,
        max_shots = 41,
        recoil = {
            [1] = { v = 0, h = 0 },
            [2] = { v = 0, h = 0 },
            [3] = { v = 0, h = 0 },
            [4] = { v = 0, h = 0 },
            [5] = { v = 0, h = 0 },
            [6] = { v = 0, h = 0 },
            [7] = { v = 0, h = 0 },
            [8] = { v = 0, h = 0 },
            [9] = { v = 0, h = 0 },
            [10] = { v = 0, h = 0 },
            [11] = { v = 0, h = 0 },
            [12] = { v = 0, h = 0 },
            [13] = { v = 0, h = 0 },
            [14] = { v = 0, h = 0 },
            [15] = { v = 0, h = 0 },
            [16] = { v = 0, h = 0 },
            [17] = { v = 0, h = 0 },
            [18] = { v = 0, h = 0 },
            [19] = { v = 0, h = 0 },
            [20] = { v = 0, h = 0 },
            [21] = { v = 0, h = 0 },
            [22] = { v = 0, h = 0 },
            [23] = { v = 0, h = 0 },
            [24] = { v = 0, h = 0 },
            [25] = { v = 0, h = 0 },
            [26] = { v = 0, h = 0 },
            [27] = { v = 0, h = 0 },
            [28] = { v = 0, h = 0 },
            [29] = { v = 0, h = 0 },
            [30] = { v = 0, h = 0 },
            [31] = { v = 0, h = 0 },
            [32] = { v = 0, h = 0 },
            [33] = { v = 0, h = 0 },
            [34] = { v = 0, h = 0 },
            [35] = { v = 0, h = 0 },
            [36] = { v = 0, h = 0 },
            [37] = { v = 0, h = 0 },
            [38] = { v = 0, h = 0 },
            [39] = { v = 0, h = 0 },
            [40] = { v = 0, h = 0 },
            [41] = { v = 0, h = 0 },
        }
    },
    VECTOR = {
        name = "VECTOR",
        calibrated_for_scope = "1.0x",
        update_interval = 50,
        max_shots = 26,
        recoil = {
            [1] = { v = 0, h = 0 },
            [2] = { v = 0, h = 0 },
            [3] = { v = 0, h = 0 },
            [4] = { v = 0, h = 0 },
            [5] = { v = 0, h = 0 },
            [6] = { v = 0, h = 0 },
            [7] = { v = 0, h = 0 },
            [8] = { v = 0, h = 0 },
            [9] = { v = 0, h = 0 },
            [10] = { v = 0, h = 0 },
            [11] = { v = 0, h = 0 },
            [12] = { v = 0, h = 0 },
            [13] = { v = 0, h = 0 },
            [14] = { v = 0, h = 0 },
            [15] = { v = 0, h = 0 },
            [16] = { v = 0, h = 0 },
            [17] = { v = 0, h = 0 },
            [18] = { v = 0, h = 0 },
            [19] = { v = 0, h = 0 },
            [20] = { v = 0, h = 0 },
            [21] = { v = 0, h = 0 },
            [22] = { v = 0, h = 0 },
            [23] = { v = 0, h = 0 },
            [24] = { v = 0, h = 0 },
            [25] = { v = 0, h = 0 },
            [26] = { v = 0, h = 0 },
        }
    },
        SC300K = {
        name = "SC300K",
        calibrated_for_scope = "2.5x",
        update_interval = 75,
        max_shots = 26,
        recoil = {
            [1] = { v = 0, h = 0 },
            [2] = { v = 0, h = 0 },
            [3] = { v = 0, h = 0 },
            [4] = { v = 0, h = 0 },
            [5] = { v = 0, h = 0 },
            [6] = { v = 0, h = 0 },
            [7] = { v = 0, h = 0 },
            [8] = { v = 0, h = 0 },
            [9] = { v = 0, h = 0 },
            [10] = { v = 0, h = 0 },
            [11] = { v = 0, h = 0 },
            [12] = { v = 0, h = 0 },
            [13] = { v = 0, h = 0 },
            [14] = { v = 0, h = 0 },
            [15] = { v = 0, h = 0 },
            [16] = { v = 0, h = 0 },
            [17] = { v = 0, h = 0 },
            [18] = { v = 0, h = 0 },
            [19] = { v = 0, h = 0 },
            [20] = { v = 0, h = 0 },
            [21] = { v = 0, h = 0 },
            [22] = { v = 0, h = 0 },
            [23] = { v = 0, h = 0 },
            [24] = { v = 0, h = 0 },
            [25] = { v = 0, h = 0 },
            [26] = { v = 0, h = 0 },
        }
    },
    C8SFW = {
        name = "C8SFW",
        calibrated_for_scope = "2.5x",
        update_interval = 72,
        max_shots = 31,
        recoil = {
            [1] = { v = 0, h = 0 },
            [2] = { v = 0, h = 0 },
            [3] = { v = 0, h = 0 },
            [4] = { v = 0, h = 0 },
            [5] = { v = 0, h = 0 },
            [6] = { v = 0, h = 0 },
            [7] = { v = 0, h = 0 },
            [8] = { v = 0, h = 0 },
            [9] = { v = 0, h = 0 },
            [10] = { v = 0, h = 0 },
            [11] = { v = 0, h = 0 },
            [12] = { v = 0, h = 0 },
            [13] = { v = 0, h = 0 },
            [14] = { v = 0, h = 0 },
            [15] = { v = 0, h = 0 },
            [16] = { v = 0, h = 0 },
            [17] = { v = 0, h = 0 },
            [18] = { v = 0, h = 0 },
            [19] = { v = 0, h = 0 },
            [20] = { v = 0, h = 0 },
            [21] = { v = 0, h = 0 },
            [22] = { v = 0, h = 0 },
            [23] = { v = 0, h = 0 },
            [24] = { v = 0, h = 0 },
            [25] = { v = 0, h = 0 },
            [26] = { v = 0, h = 0 },
            [27] = { v = 0, h = 0 },
            [28] = { v = 0, h = 0 },
            [29] = { v = 0, h = 0 },
            [30] = { v = 0, h = 0 },
            [31] = { v = 0, h = 0 },
        }
    },
    SMG12 = {
        name = "SMG12",
        calibrated_for_scope = "1.0x",
        update_interval = 47,
        max_shots = 33,
        recoil = {
            [1] = { v = 0, h = 0 },
            [2] = { v = 0, h = 0 },
            [3] = { v = 0, h = 0 },
            [4] = { v = 0, h = 0 },
            [5] = { v = 0, h = 0 },
            [6] = { v = 0, h = 0 },
            [7] = { v = 0, h = 0 },
            [8] = { v = 0, h = 0 },
            [9] = { v = 0, h = 0 },
            [10] = { v = 0, h = 0 },
            [11] = { v = 0, h = 0 },
            [12] = { v = 0, h = 0 },
            [13] = { v = 0, h = 0 },
            [14] = { v = 0, h = 0 },
            [15] = { v = 0, h = 0 },
            [16] = { v = 0, h = 0 },
            [17] = { v = 0, h = 0 },
            [18] = { v = 0, h = 0 },
            [19] = { v = 0, h = 0 },
            [20] = { v = 0, h = 0 },
            [21] = { v = 0, h = 0 },
            [22] = { v = 0, h = 0 },
            [23] = { v = 0, h = 0 },
            [24] = { v = 0, h = 0 },
            [25] = { v = 0, h = 0 },
            [26] = { v = 0, h = 0 },
            [27] = { v = 0, h = 0 },
            [28] = { v = 0, h = 0 },
            [29] = { v = 0, h = 0 },
            [30] = { v = 0, h = 0 },
            [31] = { v = 0, h = 0 },
            [32] = { v = 0, h = 0 },
            [33] = { v = 0, h = 0 },
        }
    },
    SMG11 = {
        name = "SMG11",
        calibrated_for_scope = "1.0x",
        update_interval = 47,
        max_shots = 17,
        recoil = {
            [1] = { v = 0, h = 0 },
            [2] = { v = 0, h = 0 },
            [3] = { v = 0, h = 0 },
            [4] = { v = 0, h = 0 },
            [5] = { v = 0, h = 0 },
            [6] = { v = 0, h = 0 },
            [7] = { v = 0, h = 0 },
            [8] = { v = 0, h = 0 },
            [9] = { v = 0, h = 0 },
            [10] = { v = 0, h = 0 },
            [11] = { v = 0, h = 0 },
            [12] = { v = 0, h = 0 },
            [13] = { v = 0, h = 0 },
            [14] = { v = 0, h = 0 },
            [15] = { v = 0, h = 0 },
            [16] = { v = 0, h = 0 },
            [17] = { v = 0, h = 0 },
        }
    }
}

-- ============================================================================
-- SCALING CALCULATIONS
-- ============================================================================

local function calculate_scales()
    local vertical_scale = (PRESET_RECOIL_CREATOR.VerticalSens / CONFIG.VerticalSens)
    local horizontal_scale = (PRESET_RECOIL_CREATOR.HorizontalSens / CONFIG.HorizontalSens)
    
    vertical_scale = vertical_scale * (CONFIG.DPI / PRESET_RECOIL_CREATOR.DPI)
    horizontal_scale = horizontal_scale * (CONFIG.DPI / PRESET_RECOIL_CREATOR.DPI)
    
    return vertical_scale, horizontal_scale
end

local function get_scope_scale(weapon)
    local calibrated_scope = weapon.calibrated_for_scope
    local sensitivity_scale
    
    if calibrated_scope == "1.0x" then
        sensitivity_scale = PRESET_RECOIL_CREATOR.ScopeSens_1x / CONFIG.ScopeSens_1x
    elseif calibrated_scope == "2.5x" then
        sensitivity_scale = PRESET_RECOIL_CREATOR.ScopeSens_2_5x / CONFIG.ScopeSens_2_5x
    else
        sensitivity_scale = PRESET_RECOIL_CREATOR.ScopeSens_1x / CONFIG.ScopeSens_1x
    end
    
    return sensitivity_scale
end

local SMOOTH_STEPS = 10
local shot_count = 0
local toggle_state = IsKeyLockOn(CONFIG.ToggleKey)
local current_weapon = WEAPONS[SELECTED_WEAPON]

-- ============================================================================
-- RECOIL APPLICATION FUNCTION WITH SUB-PIXEL ACCUMULATION
-- ============================================================================

function apply_recoil(weapon)
    local vertical_scale, horizontal_scale = calculate_scales()
    local scope_scale = get_scope_scale(weapon)
    
    local step_interval = weapon.update_interval / SMOOTH_STEPS
    
    shot_count = 0
    repeat
        shot_count = shot_count + 1
        
        local data = weapon.recoil[shot_count]
        if not data then
            data = weapon.recoil[weapon.max_shots]
        end
        
        -- Calculate final scaled recoil values
        local vertical = data.v * vertical_scale * scope_scale
        local horizontal = data.h * horizontal_scale * scope_scale
        
        -- Sub-pixel accumulation for smooth fractional movement
        local v_accumulated = 0
        local h_accumulated = 0
        
        for i = 1, SMOOTH_STEPS do
            if IsMouseButtonPressed(CONFIG.FireButton) then
                -- Add fractional movement to accumulators
                v_accumulated = v_accumulated + (vertical / SMOOTH_STEPS)
                h_accumulated = h_accumulated + (horizontal / SMOOTH_STEPS)
                
                -- Extract whole pixels and move mouse
                local v_move = math.floor(v_accumulated + 0.5)
                local h_move = math.floor(h_accumulated + 0.5)
                
                -- Subtract the pixels we moved from accumulators (keep fractional part)
                v_accumulated = v_accumulated - v_move
                h_accumulated = h_accumulated - h_move
                
                MoveMouseRelative(h_move, v_move)
                Sleep(step_interval)
            else
                break
            end
        end
        
    until not IsMouseButtonPressed(CONFIG.FireButton) or shot_count >= weapon.max_shots
end

-- ============================================================================
-- EVENT HANDLER
-- ============================================================================

EnablePrimaryMouseButtonEvents(true)

function OnEvent(event, arg)
    
    if CONFIG.RequireToggle then
        local current_toggle = IsKeyLockOn(CONFIG.ToggleKey)
        if current_toggle ~= toggle_state then
            toggle_state = current_toggle
        end
    end
    
    if CONFIG.EnableRecoil and (not CONFIG.RequireToggle or toggle_state) then
        if IsMouseButtonPressed(CONFIG.AimButton) then
            repeat
                if IsMouseButtonPressed(CONFIG.FireButton) then
                    apply_recoil(current_weapon)
                end
            until not IsMouseButtonPressed(CONFIG.AimButton)
        end
    end
end