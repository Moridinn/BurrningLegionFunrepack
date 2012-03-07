--[[ Azshara -- Avalanchion.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Avalanchion_OnCombat(Unit, Event)
Unit:RegisterEvent("Avalanchion_Boulder", 6000, 0)
Unit:RegisterEvent("Avalanchion_GroundTremor", 8000, 0)
Unit:RegisterEvent("Avalanchion_Trample", 5000, 0)
end

function Avalanchion_Boulder(pUnit, Event) 
pUnit:FullCastSpellOnTarget(23392, pUnit:GetMainTank()) 
end

function Avalanchion_GroundTremor(pUnit, Event) 
pUnit:CastSpell(6524) 
end

function Avalanchion_Trample(pUnit, Event) 
pUnit:CastSpell(5568) 
end

function Avalanchion_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Avalanchion_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Avalanchion_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14464, 1, "Avalanchion_OnCombat")
RegisterUnitEvent(14464, 2, "Avalanchion_OnLeaveCombat")
RegisterUnitEvent(14464, 3, "Avalanchion_OnKilledTarget")
RegisterUnitEvent(14464, 4, "Avalanchion_OnDied")