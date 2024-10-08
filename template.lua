local GetAddOnInfo=C_AddOns.GetAddOnInfo
local GetAddOnMetadata= C_AddOns.GetAddOnMetadata
local IsAddOnLoaded=C_AddOns.IsAddOnLoaded
local GetSpellTexture=C_Spell.GetSpellTexture
local UnitDebuff=C_UnitAuras.GetDebuffDataByIndex
local GetWatchedFactionInfo=C_Reputation.GetWatchedFactionData
local UnitBuff=C_UnitAuras.GetBuffDataByIndex
local GetItemStats=C_Item.GetItemStats
local GetFrame=C_Navigation.GetFrame
local GetItem=C_Item.GetItem
local IsSpellHelpful=C_Spell.IsSpellHelpful
local GetSpellCooldown = function(spellIdentifier)
    local rt = C_Spell.GetSpellCooldown(spellIdentifier)
    return rt.startTime, rt.duration, rt.isEnabled, rt.modRate
end
local GetSpellInfo = function(spellIdentifier)
    local rt = C_Spell.GetSpellInfo(spellIdentifier)
    return rt.name, rt.iconID, rt.originalIconID, rt.castTime, rt.minRange, rt.maxRange, rt.spellID
end
local GetFactionDataByID = function(...)
	local rt = C_Reputation.GetFactionDataByID(...)
	return rt.factionID, rt.name, rt.description, rt.reaction, rt.currentReactionThreshold, rt.nextReactionThreshold, rt.currentStanding, rt.atWarWith, rt.canToggleAtWar, rt.isChild, rt.isHeader, rt.isHeaderWithRep, rt.isCollapsed, rt.isWatched, rt.hasBonusRepGain,rt.canSetInactive ,rt.isAccountWide
end
local GetNumAddOns=C_AddOns.GetNumAddOns


