FocusFrameNameBackground:SetTexture()
TargetFrameNameBackground:SetTexture()
PlayerFrameBackground:SetTexture()


function playerFrameChanges(self)
    PlayerFrameTexture:Hide()
    PlayerFrameHealthBar:ClearAllPoints()
    PlayerFrameManaBar:ClearAllPoints()

    PlayerFrameHealthBar:SetHeight(12)
    PlayerFrameManaBar:SetHeight(12)
    PlayerFrameHealthBar:SetPoint("RIGHT",PlayerFrame,"RIGHT",-3,14)
    PlayerFrameManaBar:SetPoint("BOTTOM",PlayerFrameHealthBar,"BOTTOM",0,-14)

    PlayerFrameHealthBarText:ClearAllPoints()
    PlayerFrameHealthBarText:SetPoint("CENTER",PlayerFrameHealthBar,"CENTER",0,0)
    PlayerFrameHealthBar.LeftText:ClearAllPoints()
    PlayerFrameHealthBar.RightText:ClearAllPoints()
    PlayerFrameHealthBar.LeftText:SetPoint("LEFT",PlayerFrameHealthBar,"LEFT",1,0)
    PlayerFrameHealthBar.RightText:SetPoint("RIGHT",PlayerFrameHealthBar,"RIGHT",-1,0)
    PlayerFrameManaBar.LeftText:ClearAllPoints()
    PlayerFrameManaBar.RightText:ClearAllPoints()
    PlayerFrameManaBar.LeftText:SetPoint("LEFT",PlayerFrameManaBar,"LEFT",1,0)
    PlayerFrameManaBar.RightText:SetPoint("RIGHT",PlayerFrameManaBar,"RIGHT",-1,0)

    PlayerFrameManaBarText:ClearAllPoints()
    PlayerFrameManaBarText:SetPoint("CENTER",PlayerFrameManaBar,"CENTER",0,0)
    PlayerFrame.name:ClearAllPoints()
    PlayerFrame.name:SetPoint("CENTER",PlayerFrameHealthBar,"CENTER",0,15)
end

function targetAndFocusChanges(self)
    TargetFrameTextureFrameTexture:Hide()
    TargetFrameBackground:Hide()
    TargetFrameToTBackground:Hide()
    TargetFrameToTHealthBar:SetHeight(8)
    TargetFrameToTManaBar:SetHeight(8)

    TargetFrameHealthBar:ClearAllPoints()
    TargetFrameManaBar:ClearAllPoints()
    TargetFrameManaBar:SetParent(TargetFrame)
    TargetFrameHealthBar:SetParent(TargetFrame)
    TargetFrameHealthBar:SetHeight(12)
    TargetFrameManaBar:SetHeight(12)
    TargetFrameHealthBar:SetPoint("LEFT",TargetFrame,"LEFT",4,14)
    TargetFrameManaBar:SetPoint("BOTTOM",TargetFrameHealthBar,"BOTTOM",0,-14)

    TargetFrameHealthBar.TextString:ClearAllPoints()
    TargetFrameHealthBar.TextString:SetPoint("CENTER",TargetFrameHealthBar,"CENTER",0,0)
    TargetFrameHealthBar.LeftText:ClearAllPoints()
    TargetFrameHealthBar.RightText:ClearAllPoints()
    TargetFrameHealthBar.LeftText:SetPoint("LEFT",TargetFrameHealthBar,"LEFT",1,0)
    TargetFrameHealthBar.RightText:SetPoint("RIGHT",TargetFrameHealthBar,"RIGHT",-1,0)
    TargetFrameManaBar.TextString:ClearAllPoints()
    TargetFrameManaBar.TextString:SetPoint("CENTER",TargetFrameManaBar,"CENTER",0,0)
    TargetFrameManaBar.LeftText:ClearAllPoints()
    TargetFrameManaBar.RightText:ClearAllPoints()
    TargetFrameManaBar.LeftText:SetPoint("LEFT",TargetFrameManaBar,"LEFT",1,0)
    TargetFrameManaBar.RightText:SetPoint("RIGHT",TargetFrameManaBar,"RIGHT",-1,0)
    TargetFrame.name:ClearAllPoints()
    TargetFrame.name:SetPoint("CENTER",TargetFrameHealthBar,"CENTER",0,15)

    TargetFrame.nameBackground:Hide()

    ---------------focus
    FocusFrameTextureFrameTexture:Hide()
    FocusFrameBackground:Hide()
    FocusFrameToTBackground:Hide()
    FocusFrameToTHealthBar:SetHeight(8)
    FocusFrameToTManaBar:SetHeight(8)

    FocusFrameHealthBar:ClearAllPoints()
    FocusFrameManaBar:ClearAllPoints()
    FocusFrameHealthBar:SetParent(FocusFrame)
    FocusFrameManaBar:SetParent(FocusFrame)
    FocusFrameHealthBar:SetHeight(12)
    FocusFrameManaBar:SetHeight(12)
    FocusFrameHealthBar:SetPoint("LEFT",FocusFrame,"LEFT",4,14)
    FocusFrameManaBar:SetPoint("BOTTOM",FocusFrameHealthBar,"BOTTOM",0,-14)

    FocusFrameHealthBar.TextString:ClearAllPoints()
    FocusFrameHealthBar.TextString:SetPoint("CENTER",FocusFrameHealthBar,"CENTER",0,0)
    FocusFrameManaBar.TextString:ClearAllPoints()
    FocusFrameManaBar.TextString:SetPoint("CENTER",FocusFrameManaBar,"CENTER",0,0)
    FocusFrameHealthBar.LeftText:ClearAllPoints()
    FocusFrameHealthBar.RightText:ClearAllPoints()
    FocusFrameHealthBar.LeftText:SetPoint("LEFT",FocusFrameHealthBar,"LEFT",1,0)
    FocusFrameHealthBar.RightText:SetPoint("RIGHT",FocusFrameHealthBar,"RIGHT",-1,0)
    FocusFrameManaBar.LeftText:ClearAllPoints()
    FocusFrameManaBar.RightText:ClearAllPoints()
    FocusFrameManaBar.LeftText:SetPoint("LEFT",FocusFrameManaBar,"LEFT",1,0)
    FocusFrameManaBar.RightText:SetPoint("RIGHT",FocusFrameManaBar,"RIGHT",-1,0)
    FocusFrame.name:ClearAllPoints()
    FocusFrame.name:SetPoint("CENTER",FocusFrameHealthBar,"CENTER",0,15)

    FocusFrame.nameBackground:Hide()

    TargetFrameToT:ClearAllPoints()
    TargetFrameToT:SetPoint("RIGHT",TargetFrame,"RIGHT",25,-40)
    FocusFrameToT:ClearAllPoints()
    FocusFrameToT:SetPoint("RIGHT",FocusFrame,"RIGHT",25,-40)

    TargetFrameTextureFramePVPIcon:SetTexture()
    FocusFrameTextureFramePVPIcon:SetTexture()
    PlayerPVPIcon:SetTexture()
    PlayerRestedIcon:SetTexture()
end

hooksecurefunc("TargetFrame_CheckClassification", targetAndFocusChanges)
hooksecurefunc("PlayerFrame_ToPlayerArt", playerFrameChanges)
hooksecurefunc("TargetFrame_UpdateDebuffAnchor", function(_, name, i) _G[name..i]:SetScale(1.1) end)



local HpBarTar = CreateFrame("Frame", nil, TargetFrameHealthBar, "BackdropTemplate")
HpBarTar:SetParent(TargetFrame)
HpBarTar:SetPoint("LEFT",TargetFrameHealthBar,"LEFT",-2,0)
HpBarTar:SetScale(1)
HpBarTar:SetWidth(123)
HpBarTar:SetHeight(17)
HpBarTar:SetBackdrop({
	bgFile = "Interface/Tooltips/UI-Tooltip-Background",
	edgeSize = 0,
})
HpBarTar:SetFrameStrata("BACKGROUND")
HpBarTar:SetBackdrop( { 
    bgFile = "bgFile", 
    edgeFile = "edgeFile", tile = false, tileSize = 0, edgeSize = 0,
    edgeSize = 2.5,
    insets = { left = 1, right =0, top = 0, bottom = 0.5 }
});
HpBarTar:SetBackdropColor(0, 0, 1,0.5)
HpBarTar:SetBackdropBorderColor(0, 0, 1,1)

local manaBarTar = CreateFrame("Frame", nil, TargetFrameManaBar, "BackdropTemplate")
manaBarTar:SetPoint("LEFT",TargetFrameManaBar,"LEFT",-2,0)
manaBarTar:SetParent(TargetFrame)
manaBarTar:SetScale(1)
manaBarTar:SetWidth(123)
manaBarTar:SetHeight(16)
manaBarTar:SetBackdrop({
	bgFile = "Interface/Tooltips/UI-Tooltip-Background",
	edgeSize = 0,
})
manaBarTar:SetFrameStrata("BACKGROUND")
manaBarTar:SetBackdrop( { 
    bgFile = "bgFile", 
    edgeFile = "edgeFile", tile = false, tileSize = 0, edgeSize = 0,
    edgeSize = 2.5,
    insets = { left = 1, right =0, top = 0.5, bottom = 0 }
});
manaBarTar:SetBackdropColor(0, 0, 1,0.5)
manaBarTar:SetBackdropBorderColor(0, 0, 1,1)

local HpBarFoc = CreateFrame("Frame", nil, FocusFrameHealthBar, "BackdropTemplate")
HpBarFoc:SetParent(FocusFrame)
HpBarFoc:SetPoint("LEFT",FocusFrameHealthBar,"LEFT",-2,0)
HpBarFoc:SetScale(1)
HpBarFoc:SetWidth(123)
HpBarFoc:SetHeight(17)
HpBarFoc:SetBackdrop({
	bgFile = "Interface/Tooltips/UI-Tooltip-Background",
	edgeSize = 0,
})
HpBarFoc:SetFrameStrata("BACKGROUND")
HpBarFoc:SetBackdrop( { 
    bgFile = "bgFile", 
    edgeFile = "edgeFile", tile = false, tileSize = 0, edgeSize = 0,
    edgeSize = 2.5,
    insets = { left = 1, right =0, top = 0, bottom = 0.5 }
});
HpBarFoc:SetBackdropColor(0, 0, 1,0.5)
HpBarFoc:SetBackdropBorderColor(0, 0, 1,1)


local manaBarFoc = CreateFrame("Frame", nil, FocusFrameManaBar, "BackdropTemplate")
manaBarFoc:SetPoint("LEFT",FocusFrameManaBar,"LEFT",-2,0)
manaBarFoc:SetParent(FocusFrame)
manaBarFoc:SetScale(1)
manaBarFoc:SetWidth(123)
manaBarFoc:SetHeight(16)
manaBarFoc:SetBackdrop({
	bgFile = "Interface/Tooltips/UI-Tooltip-Background",
	edgeSize = 0,
})
manaBarFoc:SetFrameStrata("BACKGROUND")
manaBarFoc:SetBackdrop( { 
    bgFile = "bgFile", 
    edgeFile = "edgeFile", tile = false, tileSize = 0, edgeSize = 0,
    edgeSize = 2.5,
    insets = { left = 1, right =0, top = 0.5, bottom = 0 }
});
manaBarFoc:SetBackdropColor(0, 0, 1,0.5)
manaBarFoc:SetBackdropBorderColor(0, 0, 1,1)

PetFrameTexture:Hide()
PetFrameHealthBarText:SetAlpha(0)
PetFrameManaBarText:SetAlpha(0)
PetFrameHealthBarTextLeft:SetAlpha(0)
PetFrameHealthBarTextRight:SetAlpha(0)
PetFrameManaBarTextLeft:SetAlpha(0)
PetFrameManaBarTextRight:SetAlpha(0)

PetPortrait:Hide()


local petHpBarBk = CreateFrame("Frame", nil, PetFrameHealthBar, "BackdropTemplate")
petHpBarBk:SetParent(PetFrameHealthBar)
petHpBarBk:SetPoint("LEFT",PetFrameHealthBar,"LEFT",-2,0)
petHpBarBk:SetScale(1)
petHpBarBk:SetWidth(73)
petHpBarBk:SetHeight(12)
petHpBarBk:SetBackdrop({
	bgFile = "Interface/Tooltips/UI-Tooltip-Background",
	edgeSize = 0,
})
petHpBarBk:SetFrameStrata("BACKGROUND")
petHpBarBk:SetBackdrop( { 
    bgFile = "bgFile", 
    edgeFile = "edgeFile", tile = false, tileSize = 0, edgeSize = 0,
    edgeSize = 2.5,
    insets = { left = 0, right =0, top = 0, bottom = 0.5 }
});
petHpBarBk:SetBackdropColor(0, 0, 1,0.5)
petHpBarBk:SetBackdropBorderColor(0, 0, 1,1)


local PetManaBarBK = CreateFrame("Frame", nil, PetFrameManaBar, "BackdropTemplate")
PetManaBarBK:SetPoint("LEFT",PetFrameManaBar,"LEFT",-2,0)
PetManaBarBK:SetParent(PetFrameManaBar)
PetManaBarBK:SetScale(1)
PetManaBarBK:SetWidth(73)
PetManaBarBK:SetHeight(12)
PetManaBarBK:SetBackdrop({
	bgFile = "Interface/Tooltips/UI-Tooltip-Background",
	edgeSize = 0,
})
PetManaBarBK:SetFrameStrata("BACKGROUND")
PetManaBarBK:SetBackdrop( { 
    bgFile = "bgFile", 
    edgeFile = "edgeFile", tile = false, tileSize = 0, edgeSize = 0,
    edgeSize = 2.5,
    insets = { left = 0, right =0, top = 0.5, bottom = 0 }
});
PetManaBarBK:SetBackdropColor(0, 0, 1,0.5)
PetManaBarBK:SetBackdropBorderColor(0, 0, 1,1)



--PlayerFrameBorder----------
local TargetFrameBK = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
TargetFrameBK:SetParent(TargetFrame)
TargetFrameBK:SetPoint("CENTER",TargetFramePortrait,"CENTER",0.2,0)
TargetFrameBK:SetSize(71, 71)
TargetFrameBK:SetBackdropColor(0,0,0,0)
TargetFrameBK:SetBackdropBorderColor(0,0,0,0)
TargetFrameBK.tex = TargetFrameBK:CreateTexture("Interface/Tooltips/UI-Tooltip-Background")
TargetFrameBK.tex:SetAllPoints(TargetFrameBK)
TargetFrameBK.tex:SetSize(45,45)
TargetFrameBK.tex:SetColorTexture(0,0,0,1);
TargetFrameBK.mask = TargetFrameBK:CreateMaskTexture()
TargetFrameBK.mask:SetAllPoints(TargetFrameBK.tex)
TargetFrameBK.mask:SetTexture("Interface/CHARACTERFRAME/TempPortraitAlphaMask", "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
TargetFrameBK.tex:AddMaskTexture(TargetFrameBK.mask)
TargetFrameBK:SetParent(TargetFrame)
TargetFrameBK:SetFrameStrata("BACKGROUND")
--PlayerFrameBorder----------

--PlayerFrameBorder----------
local FocusFrameBK = CreateFrame("Frame", nil, FocusFrame, "BackdropTemplate")
FocusFrameBK:SetParent(FocusFrame)
FocusFrameBK:SetPoint("CENTER",FocusFramePortrait,"CENTER",0.2,0)
FocusFrameBK:SetSize(71, 71)
FocusFrameBK:SetBackdropColor(0,0,0,0)
FocusFrameBK:SetBackdropBorderColor(0,0,0,0)
FocusFrameBK.tex = FocusFrameBK:CreateTexture("Interface/Tooltips/UI-Tooltip-Background")
FocusFrameBK.tex:SetAllPoints(FocusFrameBK)
FocusFrameBK.tex:SetSize(45,45)
FocusFrameBK.tex:SetColorTexture(0,0,0,1);
FocusFrameBK.mask = FocusFrameBK:CreateMaskTexture()
FocusFrameBK.mask:SetAllPoints(FocusFrameBK.tex)
FocusFrameBK.mask:SetTexture("Interface/CHARACTERFRAME/TempPortraitAlphaMask", "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
FocusFrameBK.tex:AddMaskTexture(FocusFrameBK.mask)
FocusFrameBK:SetParent(FocusFrame)
FocusFrameBK:SetFrameStrata("BACKGROUND")
--PlayerFrameBorder----------

--PlayerFrameBorder----------
local PlayerFrameBK = CreateFrame("Frame", nil, PlayerFrame, "BackdropTemplate")
PlayerFrameBK:SetParent(PlayerFrame)
PlayerFrameBK:SetPoint("CENTER",PlayerPortrait,"CENTER",0.2,0)
PlayerFrameBK:SetSize(71, 71)
PlayerFrameBK:SetBackdropColor(0,0,0,0)
PlayerFrameBK:SetBackdropBorderColor(0,0,0,0)
PlayerFrameBK.tex = PlayerFrameBK:CreateTexture("Interface/Tooltips/UI-Tooltip-Background")
PlayerFrameBK.tex:SetAllPoints(PlayerFrameBK)
PlayerFrameBK.tex:SetSize(45,45)
PlayerFrameBK.tex:SetColorTexture(0,0,0,1);
PlayerFrameBK.mask = PlayerFrameBK:CreateMaskTexture()
PlayerFrameBK.mask:SetAllPoints(PlayerFrameBK.tex)
PlayerFrameBK.mask:SetTexture("Interface/CHARACTERFRAME/TempPortraitAlphaMask", "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
PlayerFrameBK.tex:AddMaskTexture(PlayerFrameBK.mask)
PlayerFrameBK:SetFrameStrata("BACKGROUND")
--PlayerFrameBorder----------

--hpbar background-----------
local PlayerHpBar = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
PlayerHpBar:SetParent(PlayerFrameHealthBar)
PlayerHpBar:SetPoint("LEFT",PlayerFrameHealthBar,"LEFT",-2,0)
PlayerHpBar:SetScale(1)
PlayerHpBar:SetWidth(123)
PlayerHpBar:SetHeight(17)
PlayerHpBar:SetBackdrop({
    bgFile = "Interface/Tooltips/UI-Tooltip-Background",
    edgeSize = 0,
})
PlayerHpBar:SetFrameStrata("BACKGROUND")
PlayerHpBar:SetBackdrop( { 
    bgFile = "bgFile", 
    edgeFile = "edgeFile", tile = false, tileSize = 0, edgeSize = 0,
    edgeSize = 2.5,
    insets = { left = 0, right =1, top = 0, bottom = 0.5 }
});
PlayerHpBar:SetBackdropColor(0, 0, 1,0.5)
PlayerHpBar:SetBackdropBorderColor(0, 0, 1,1)
--hpbar background-----------

local PlayermanaBar = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
PlayermanaBar:SetParent(PlayerFrameManaBar)
PlayermanaBar:SetPoint("LEFT",PlayerFrameManaBar,"LEFT",-2,0)
PlayermanaBar:SetScale(1)
PlayermanaBar:SetWidth(123)
PlayermanaBar:SetHeight(16)
PlayermanaBar:SetBackdrop({
	bgFile = "Interface/Tooltips/UI-Tooltip-Background",
	edgeSize = 0,
})
PlayermanaBar:SetFrameStrata("BACKGROUND")
PlayermanaBar:SetBackdrop( { 
    bgFile = "bgFile", 
    edgeFile = "edgeFile", tile = false, tileSize = 0, edgeSize = 0,
    edgeSize = 2.5,
    insets = { left = 0, right =1, top = 0.5, bottom = 0 }
});
PlayermanaBar:SetBackdropColor(0, 0, 1,0.5)
PlayermanaBar:SetBackdropBorderColor(0, 0, 1,1)

PetName:Hide()
PetFrameHealthBar:ClearAllPoints()
PetFrameHealthBar:SetPoint("TOP",PetFrame,"TOP",15,-15)
PetFrameManaBar:ClearAllPoints()
PetFrameManaBar:SetPoint("TOP",PetFrameHealthBar,"TOP",0,-12)
PetAttackModeTexture:ClearAllPoints()
PetAttackModeTexture:SetAlpha(0)
PlayerStatusTexture:ClearAllPoints()
PlayerStatusTexture:SetAlpha(0)
if FocusFrameFlash ~= nil then
    FocusFrameFlash:ClearAllPoints()
    FocusFrameFlash:SetAlpha(0)
end
if TargetFrameFlash ~= nil then
    TargetFrameFlash:ClearAllPoints()
    TargetFrameFlash:SetAlpha(0)
end


PetFrame:ClearAllPoints()
PetFrame:SetPoint("LEFT",PlayerFrame,"LEFT",66,-25)
TargetFrameToTTextureFrameTexture:SetVertexColor(0,0,0,1)
FocusFrameToTTextureFrameTexture:SetVertexColor(0,0,0,1)


local function colour(statusbar, unit)
    local _, class, c
    if UnitIsPlayer(unit) and UnitIsConnected(unit) and unit == statusbar.unit and UnitClass(unit) then
            _, class = UnitClass(unit)
            c = CUSTOM_CLASS_COLORS and CUSTOM_CLASS_COLORS[class] or RAID_CLASS_COLORS[class]
            statusbar:SetStatusBarColor(c.r, c.g, c.b)
    end
end

hooksecurefunc("UnitFrameHealthBar_Update", colour)
hooksecurefunc("HealthBar_OnValueChanged", function(self)
    colour(self, self.unit)
end)
hooksecurefunc("PlayerFrame_UpdateStatus", function() if IsResting("player") then PlayerStatusTexture:Hide() PlayerRestGlow:Hide() PlayerStatusGlow:Hide() end end)
PlayerAttackGlow:SetTexture()






