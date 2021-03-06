--[[ Borean Tundra -- General Cerulean.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GeneralCerulean_OnCombat(Unit, Event)
Unit:RegisterEvent("GeneralCerulean_FrostShock", 7000, 0)
end

function GeneralCerulean_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15499, pUnit:GetMainTank()) 
end

function GeneralCerulean_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GeneralCerulean_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GeneralCerulean_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25716, 1, "GeneralCerulean_OnCombat")
RegisterUnitEvent(25716, 2, "GeneralCerulean_OnLeaveCombat")
RegisterUnitEvent(25716, 3, "GeneralCerulean_OnKilledTarget")
RegisterUnitEvent(25716, 4, "GeneralCerulean_OnDied")