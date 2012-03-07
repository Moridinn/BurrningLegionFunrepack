--[[ Ashenvale -- Taneel Darkwood.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TaneelDarkwood_OnCombat(Unit, Event)
Unit:RegisterEvent("TaneelDarkwood_Heal", 13000, 0)
Unit:RegisterEvent("TaneelDarkwood_Renew", 8000, 2)
Unit:RegisterEvent("TaneelDarkwood_ShadowWordPain", 4000, 1)
end

function TaneelDarkwood_Heal(pUnit, Event) 
pUnit:CastSpell(6063) 
end

function TaneelDarkwood_Renew(pUnit, Event) 
pUnit:CastSpell(6077) 
end

function TaneelDarkwood_ShadowWordPain(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2767, pUnit:GetMainTank()) 
end

function TaneelDarkwood_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TaneelDarkwood_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TaneelDarkwood_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3940, 1, "TaneelDarkwood_OnCombat")
RegisterUnitEvent(3940, 2, "TaneelDarkwood_OnLeaveCombat")
RegisterUnitEvent(3940, 3, "TaneelDarkwood_OnKilledTarget")
RegisterUnitEvent(3940, 4, "TaneelDarkwood_OnDied")