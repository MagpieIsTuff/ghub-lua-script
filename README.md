# ghub-lua-script
PRESS CODE THEN COPY FROM LINE 9 AND DOWN!!

ghub lua script undetectable to battle-eye at this time
current values need to be adjusted to your sensitivity, decimals do NOT work, it takes the first value of the decimal that you gave 5.6 -> 5, NOT 6, it doesnt round up, toggle key caps lock, your recoil will NOT be perfect but it will get alot better and your aim will improve slowly. simple format, easy to understand, working on a version that will calculate from your current sensitivity, what settings are needed for you so that it is an even lazier process for you. very undetectable as battle-eye looks for patterns and this avoids that with fairly human recoil and it updates every 6-10ms instead of a set time to update (such as 7ms every time) next version of this script will be out next week i hope.



EnableRC = true
RecoilControlMode = "f2"
RequireToggle = true
ToggleKey = "CapsLock"
--15-31 sens 26 1x 42 2.5x--
local RecoilPresets = {
    scorpion = { Vertical = 11, Horizontal = 0 },
    r4c = { Vertical = 17, Horizontal = -1 },
    f2 = { Vertical = 23, Horizontal = 0 },
    smg12 = { Vertical = 17, Horizontal = 1 },
    t5 = { Vertical = 9, Horizontal = 0 },
    smg11 = { Vertical = 15, Horizontal = 0 },
    ak12 = { Vertical = 14, Horizontal = -1 },
    commando = { Vertical = 11, Horizontal = 0 },
    m4 = { Vertical = 13, Horizontal = -1 },
    finkalmg = { Vertical = 13, Horizontal = 0 },
    c8sfw = { Vertical = 14, Horizontal = 0 },
    type89 = { Vertical = 13, Horizontal = -1 },
    para = { Vertical = 10, Horizontal = 0 },
    g8a1 = { Vertical = 13, Horizontal = -1 },
    mp7 = { Vertical = 10, Horizontal = 0 },
    vector2x = { Vertical = 18, Horizontal = 0 },
    vector1x = { Vertical = 12, Horizontal = 0 },
    vsn = { Vertical = 7, Horizontal = 0 },
    mp51x = { Vertical = 9, Horizontal = 0 },
    mp52x = { Vertical = 13, Horizontal = 0 },
    ar33 = { Vertical = 11, Horizontal = 0 },
    mpx = { Vertical = 8, Horizontal = 0 }   
    }
local Recoil = RecoilPresets[RecoilControlMode] or RecoilPresets.commando
local VerticalStrength = Recoil.Vertical
local HorizontalStrength = Recoil.Horizontal

EnablePrimaryMouseButtonEvents(true)
function OnEvent(event, arg)
    if EnableRC and (not RequireToggle or IsKeyLockOn(ToggleKey)) then
        if IsMouseButtonPressed(3) then
            while IsMouseButtonPressed(3) do
                if IsMouseButtonPressed(1) then
                    while IsMouseButtonPressed(1) do
                        MoveMouseRelative(HorizontalStrength, VerticalStrength)
                        Sleep(7)
                    end
                end
                Sleep(math.random(6,10))
            end
        end
    end
end
