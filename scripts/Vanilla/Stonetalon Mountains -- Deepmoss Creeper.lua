--[[ Stonetalon Mountains -- Deepmoss Creeper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function DeepmossCreeper_OnCombat(Unit, Event)
Unit:RegisterEvent("DeepmossCreeper_Poison", 10000, 0)
end

function DeepmossCreeper_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function DeepmossCreeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeepmossCreeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeepmossCreeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4005, 1, "DeepmossCreeper_OnCombat")
RegisterUnitEvent(4005, 2, "DeepmossCreeper_OnLeaveCombat")
RegisterUnitEvent(4005, 3, "DeepmossCreeper_OnKilledTarget")
RegisterUnitEvent(4005, 4, "DeepmossCreeper_OnDied")