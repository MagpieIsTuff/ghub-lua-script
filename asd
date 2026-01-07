-- Reference values (used for scaling presets)
RefVerticalSens = 15
RefHorizontalSens = 26
RefDPI = 1700
RefScopeSens_1x = 26
RefScopeSens_2_5x = 42

-- Weapons: update recoil values here ONLY!
Weapons = {
    scorpion = { Vertical = 18, Horizontal = 0 },
    r4c = { Vertical = 34, Horizontal = -1 },
    f2 = { Vertical = 39, Horizontal = -1 },
    smg12 = { Vertical = 31, Horizontal = 2 },
    t5 = { Vertical = 9, Horizontal = 0 },
    smg11 = { Vertical = 23, Horizontal = 0 },
    ak12 = { Vertical = 24, Horizontal = -1 },
    commando = { Vertical = 20, Horizontal = -1 },
    m4 = { Vertical = 13, Horizontal = -1 },
    finkalmg = { Vertical = 13, Horizontal = 0 },
    c8sfw = { Vertical = 26, Horizontal = 0 },
    type89 = { Vertical = 13, Horizontal = -1 },
    para = { Vertical = 10, Horizontal = 0 },
    g8a1 = { Vertical = 20, Horizontal = -1 },
    mp7 = { Vertical = 15, Horizontal = 0 },
    vector2x = { Vertical = 18, Horizontal = 0 },
    vector1x = { Vertical = 12, Horizontal = 0 },
    vsn = { Vertical = 8, Horizontal = -1 },
    mp51x = { Vertical = 10, Horizontal = 0 },
    mp52x = { Vertical = 13, Horizontal = 0 },
    ar33 = { Vertical = 11, Horizontal = 0 },
    mpx = { Vertical = 13, Horizontal = 0 },
    unknown = { Vertical = 0, Horizontal = 0 },
    mp5k = { Vertical = 9, Horizontal = 0 },
    fmg9 = { Vertical = 14, Horizontal = 0 },
    ump45 = { Vertical = 14, Horizontal = 0 },
    m45_meusoc = { Vertical = 6, Horizontal = 0 },
    p9 = { Vertical = 5, Horizontal = 0 },
    lfp586 = { Vertical = 7, Horizontal = 0 },
    pmm = { Vertical = 6, Horizontal = 0 },
    dp27 = { Vertical = 20, Horizontal = -1 },
    ["416c"] = { Vertical = 14, Horizontal = 0 },
    p12 = { Vertical = 6, Horizontal = 0 },
    ["9mm_c1"] = { Vertical = 11, Horizontal = 0 },
    mk1_9mm = { Vertical = 6, Horizontal = 0 },
    d50 = { Vertical = 8, Horizontal = 0 },
    m12 = { Vertical = 12, Horizontal = 0 },
    luison = { Vertical = 7, Horizontal = 0 },
    mp5sd = { Vertical = 11, Horizontal = 0 },
    bearing9 = { Vertical = 15, Horizontal = 0 },
    ita12s = { Vertical = 18, Horizontal = 0 },
    q929 = { Vertical = 6, Horizontal = 0 },
    rg15 = { Vertical = 6, Horizontal = 0 },
    k1a = { Vertical = 9, Horizontal = -1 },
    alda556 = { Vertical = 17, Horizontal = 0 },
    bailiff410 = { Vertical = 8, Horizontal = 0 },
    mx4_storm = { Vertical = 16, Horizontal = 1 },
    keratos357 = { Vertical = 6, Horizontal = 0 },
    cce_shield = { Vertical = 0, Horizontal = 0 }, -- no recoil
    spsmg9 = { Vertical = 11, Horizontal = 0 },
    tcsg12 = { Vertical = 20, Horizontal = 0 },
    ["44mag"] = { Vertical = 9, Horizontal = 0 },
    p10_roni = { Vertical = 10, Horizontal = 0 },
    sd_pistol = { Vertical = 6, Horizontal = 0 },
    d40 = { Vertical = 12, Horizontal = 0 },
    spear308 = { Vertical = 14, Horizontal = 0 },
    uzk50gi = { Vertical = 10, Horizontal = 0 },
    ["1911_tacops"] = { Vertical = 8, Horizontal = 0 },
    p90 = { Vertical = 10, Horizontal = 0 },
    c7e = { Vertical = 13, Horizontal = 0 },
    t95_lsw = { Vertical = 16, Horizontal = 0 },
    m762 = { Vertical = 15, Horizontal = 0 },
    mk14_ebr = { Vertical = 10, Horizontal = -1 },
    v308 = { Vertical = 13, Horizontal = 0 },
    pm9 = { Vertical = 11, Horizontal = 0 },
    arx200 = { Vertical = 14, Horizontal = 0 },
    f90 = { Vertical = 13, Horizontal = 0 },
    supernova = { Vertical = 18, Horizontal = 0 },
    csrx300 = { Vertical = 19, Horizontal = 0 },
    ["556xi"] = { Vertical = 16, Horizontal = 2 },
    pof9 = { Vertical = 14, Horizontal = 0 },
    prb92 = { Vertical = 7, Horizontal = 0 },
    p229 = { Vertical = 6, Horizontal = 0 },
    camrs = { Vertical = 15, Horizontal = 0 },
    ak74m = { Vertical = 14, Horizontal = 0 },
    gonne6 = { Vertical = 0, Horizontal = 0 },
    l85a2 = { Vertical = 10, Horizontal = 1 },
    reapermk2 = { Vertical = 11, Horizontal = -1 },
    ["5.7_usg"] = { Vertical = 6, Horizontal = 0 },
    m45meusoc = { Vertical = 6, Horizontal = 0 },
    p226 = { Vertical = 6, Horizontal = 0 },
    ["le roc shield"] = { Vertical = 0, Horizontal = 0 }, -- shield
    ots03 = { Vertical = 18, Horizontal = 0 },
    ["g52-tacticalshield"] = { Vertical = 0, Horizontal = 0 }, -- shield
    gsh18 = { Vertical = 6, Horizontal = 0 },
    sdp_9mm = { Vertical = 6, Horizontal = 0 },
    g36c = { Vertical = 12, Horizontal = 0 },
    dpistol = { Vertical = 6, Horizontal = 0 },
    m249 = { Vertical = 14, Horizontal = 0 },
    glaive12 = { Vertical = 12, Horizontal = 0 } -- placeholder for Denari
}

-- Operators: assign weapons to operators (full current roster)
Operators = {
    mute = { primary = "mp5k", secondary = "smg11" },
    smoke = { primary = "fmg9", secondary = "smg11" },
    castle = { primary = "ump45", secondary = "5.7_usg" },
    pulse = { primary = "ump45", secondary = "m45_meusoc" },
    doc = { primary = "mp51x", secondary = "bailiff410" },
    rook = { primary = "mp51x", secondary = "reapermk2" },
    kapkan = { primary = "vsn", secondary = "pmm" },
    tachanka = { primary = "dp27", secondary = "bearing9" },
    jager = { primary = "416c", secondary = "p12" },
    bandit = { primary = "mp7", secondary = "p12" },
    frost = { primary = "9mm_c1", secondary = "mk1_9mm" },
    valk = { primary = "mpx", secondary = "d50" },
    caveira = { primary = "m12", secondary = "luison" },
    echo = { primary = "mp5sd", secondary = "bearing9" },
    mira = { primary = "vector1x", secondary = "ita12s" },
    lesion = { primary = "t5", secondary = "q929" },
    ela = { primary = "scorpion", secondary = "rg15" },
    vigil = { primary = "k1a", secondary = "smg12" },
    maestro = { primary = "alda556", secondary = "bailiff410" },
    alibi = { primary = "mx4_storm", secondary = "keratos357" },
    clash = { primary = "cce_shield", secondary = "spsmg9" },
    kaid = { primary = "tcsg12", secondary = "44mag" },
    mozzie = { primary = "p10_roni", secondary = "sd_pistol" },
    warden = { primary = "mpx", secondary = "smg12" },
    goyo = { primary = "vector1x", secondary = "p226" },
    wamai = { primary = "mp5k", secondary = "d40" },
    oryx = { primary = "t5", secondary = "bailiff410" },
    melusi = { primary = "mp51x", secondary = "ita12s" },
    aruni = { primary = "p10_roni", secondary = "mk1_9mm" },
    thunderbird = { primary = "spear308", secondary = "bearing9" },
    thorn = { primary = "uzk50gi", secondary = "1911_tacops" },
    azami = { primary = "vsn", secondary = "d50" },
    solis = { primary = "p90", secondary = "smg11" },
    fenrir = { primary = "mp7", secondary = "bailiff410" },
    tubarao = { primary = "mpx", secondary = "p226" },
    skopos = { primary = "unknown", secondary = "p226" }, 
    denari = { primary = "scorpion", secondary = "glaive12" },
    striker = { primary = "m4", secondary = "5.7_usg" },
    -- ATTACKERS
    sledge = { primary = "l85a2", secondary = "reapermk2" },
    thatcher = { primary = "ar33", secondary = "p226" },
    ash = { primary = "r4c", secondary = "m45meusoc" },
    thermite = { primary = "556xi", secondary = "m45_meusoc" },
    twitch = { primary = "f2", secondary = "p9" },
    montagne = { primary = "le roc shield", secondary = "p9" },
    glaz = { primary = "ots03", secondary = "bearing9" },
    fuze = { primary = "ak12", secondary = "pmm" },
    blitz = { primary = "g52-tacticalshield", secondary = "p12" },
    iq = { primary = "commando", secondary = "p12" },
    buck = { primary = "c8sfw", secondary = "mk1_9mm" },
    blackbeard = { primary = "unknown", secondary = "d50" },
    capitao = { primary = "para", secondary = "prb92" },
    hibana = { primary = "mk14_ebr", secondary = "bearing9" },
    jackal = { primary = "c7e", secondary = "ita12s" },
    ying = { primary = "t95_lsw", secondary = "q929" },
    zofia = { primary = "m762", secondary = "rg15" },
    dokkaebi = { primary = "mk14_ebr", secondary = "smg12" },
    lion = { primary = "v308", secondary = "p9" },
    finka = { primary = "finkalmg", secondary = "pmm" },
    maverick = { primary = "m4", secondary = "1911_tacops" },
    nomad = { primary = "arx200", secondary = "44mag" },
    gridlock = { primary = "f90", secondary = "sdp_9mm" },
    nokk = { primary = "fmg9", secondary = "d50" },
    amaru = { primary = "g8a1", secondary = "smg11" },
    kali = { primary = "csrx300", secondary = "spsmg9" },
    iana = { primary = "g36c", secondary = "gonne6" },
    ace = { primary = "ak12", secondary = "p9" },
    zero = { primary = "mp7", secondary = "gonne6" },
    flores = { primary = "ar33", secondary = "gsh18" },
    osa = { primary = "556xi", secondary = "pmm" },
    sens = { primary = "pof9", secondary = "sd_pistol" },
    grim = { primary = "commando", secondary = "p229" },
    brava = { primary = "para", secondary = "p226" },
    ram = { primary = "r4c", secondary = "mk1_9mm" },
    deimos = { primary = "ak74m", secondary = "dpistol" },
    raurora = { primary = "m249", secondary = "reapermk2" }
}

-- User values (change these for adaptation)
UserVerticalSens = 15
UserHorizontalSens = 26
UserDPI = 1750
UserScopeSens_1x = 26
UserScopeSens_2_5x = 42

EnableRC = true
RequireToggle = true
ToggleKey = "CapsLock"

-- Calculate scaling factors
vertical_scale = (RefVerticalSens * RefDPI) / (UserVerticalSens * UserDPI)
horizontal_scale = (RefHorizontalSens * RefDPI) / (UserHorizontalSens * UserDPI)
scope_scale_1x = UserScopeSens_1x / RefScopeSens_1x
scope_scale_2_5x = UserScopeSens_2_5x / RefScopeSens_2_5x
active_scope_scale = scope_scale_1x -- swap to scope_scale_2_5x for 2.5x

-- Mode: Pick by operator or by weapon
SelectMode = "operator"   -- "operator" or "weapon"

-- Track current selection
CurrentOperator = "ash"
ActiveWeapon = "primary"  -- "primary" or "secondary"
CurrentWeapon = "r4c"     -- only used if SelectMode == "weapon"

-- Switch active weapon (for operator mode)
function SwitchWeapon(button)
    if button == 5 then
        ActiveWeapon = "primary"
    elseif button == 4 then
        ActiveWeapon = "secondary"
    end
end

-- Switch selection mode (for demonstration, use key 6 for operator, 7 for weapon mode)
function SwitchMode(arg)
    if arg == 6 then
        SelectMode = "operator"
    elseif arg == 7 then
        SelectMode = "weapon"
    end
end

-- Set current weapon directly (for weapon mode)
function SetWeapon(weaponName)
    if Weapons[weaponName] then
        CurrentWeapon = weaponName
    end
end

-- Get the current recoil preset
function GetActivePreset()
    if SelectMode == "operator" then
        local operatorWeapons = Operators[CurrentOperator]
        if not operatorWeapons then return Weapons.unknown end
        local weaponName = operatorWeapons[ActiveWeapon]
        return Weapons[weaponName] or Weapons.unknown
    else
        return Weapons[CurrentWeapon] or Weapons.unknown
    end
end

-- Calculate final recoil strengths
function GetFinalStrengths(preset)
    local vertical = math.floor(preset.Vertical * vertical_scale * active_scope_scale)
    local horizontal = math.floor(preset.Horizontal * horizontal_scale * active_scope_scale)
    return vertical, horizontal
end

EnablePrimaryMouseButtonEvents(true)
function OnEvent(event, arg)
    -- Switch selection mode (operator/weapon) with key 6 or 7
    if event == "MOUSE_BUTTON_PRESSED" and (arg == 6 or arg == 7) then
        SwitchMode(arg)
    end
    -- Switch weapon (operator mode) with MouseButton 4/5
    if SelectMode == "operator" and event == "MOUSE_BUTTON_PRESSED" and (arg == 4 or arg == 5) then
        SwitchWeapon(arg)
    end
    -- Set weapon directly (weapon mode) with key 8 (example, set to "r4c")
    if SelectMode == "weapon" and event == "MOUSE_BUTTON_PRESSED" and arg == 8 then
        SetWeapon("r4c") -- example, change as needed
    end

    -- Recoil logic
    local preset = GetActivePreset()
    local VerticalStrength, HorizontalStrength = GetFinalStrengths(preset)

    if EnableRC and (not RequireToggle or IsKeyLockOn(ToggleKey)) then
        if IsMouseButtonPressed(3) then -- Aim
            repeat
                if IsMouseButtonPressed(1) then -- Shoot
                    repeat
                        MoveMouseRelative(HorizontalStrength, VerticalStrength)
                        Sleep(7)
                    until not IsMouseButtonPressed(1)
                end
                Sleep(math.random(6,10))
            until not IsMouseButtonPressed(3)
        end
    end
end
