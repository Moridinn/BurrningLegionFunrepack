--[[ Dragonblight -- Commander Jordan.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CommanderJordan_OnCombat(Unit, Event)
Unit:RegisterEvent("CommanderJordan_AvengingWrath", 6000, 1)
Unit:RegisterEvent("CommanderJordan_Consecration", 7000, 0)
end

function CommanderJordan_AvengingWrath(pUnit, Event) 
pUnit:CastSpell(50837) 
end

function CommanderJordan_Consecration(pUnit, Event) 
pUnit:CastSpell(32773) 
end

function CommanderJordan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CommanderJordan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CommanderJordan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27237, 1, "CommanderJordan_OnCombat")
RegisterUnitEvent(27237, 2, "CommanderJordan_OnLeaveCombat")
RegisterUnitEvent(27237, 3, "CommanderJordan_OnKilledTarget")
RegisterUnitEvent(27237, 4, "CommanderJordan_OnDied")