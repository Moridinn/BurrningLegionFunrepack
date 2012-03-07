--[[ Dragonblight -- Burning Depths Necromancer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function BurningDepthsNecromancer_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningDepthsNecromancer_PowerRelease", 7000, 0)
end

function BurningDepthsNecromancer_PowerRelease(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51431, pUnit:GetMainTank()) 
end

function BurningDepthsNecromancer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningDepthsNecromancer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningDepthsNecromancer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27358, 1, "BurningDepthsNecromancer_OnCombat")
RegisterUnitEvent(27358, 2, "BurningDepthsNecromancer_OnLeaveCombat")
RegisterUnitEvent(27358, 3, "BurningDepthsNecromancer_OnKilledTarget")
RegisterUnitEvent(27358, 4, "BurningDepthsNecromancer_OnDied")