--[[ Azuremyst Isle -- Blood Elf Bandit.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function BloodElfBandit_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodElfBandit_Eviscerate", 1000, 0)
Unit:RegisterEvent("BloodElfBandit_SinisterStrike", 4000, 0)
end

function BloodElfBandit_Eviscerate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15691, pUnit:GetMainTank()) 
end

function BloodElfBandit_SinisterStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14873, pUnit:GetMainTank()) 
end

function BloodElfBandit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodElfBandit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodElfBandit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17591, 1, "BloodElfBandit_OnCombat")
RegisterUnitEvent(17591, 2, "BloodElfBandit_OnLeaveCombat")
RegisterUnitEvent(17591, 3, "BloodElfBandit_OnKilledTarget")
RegisterUnitEvent(17591, 4, "BloodElfBandit_OnDied")