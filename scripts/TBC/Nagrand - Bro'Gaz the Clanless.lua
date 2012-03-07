--[[ Nagrand - Bro'Gaz the Clanless.lua

This script was written and is protected
by the GPL v2. This script was released
by Performer/Performa of the Blua Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- Performa, August 26th, 2008. ]]

function BroGaz_OnEnterCombat(pUnit,Event)
    pUnit:FullCastSpell(12468)
	pUnit:RegisterEvent("BroGaz_Heal", 5000, 0)
end

function BroGaz_Heal(pUnit,Event)
    if Unit:GetHealthPct() < 30 then
	pUnit:FullCastSpell(15586)
    end
end

function BroGaz_OnLeaveCombat(pUnit)
    pUnit:RemoveEvents()
end

function BroGaz_Death(pUnit)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(18684, 1, "BroGaz_OnEnterCombat")
RegisterUnitEvent(18684, 2, "BroGaz_OnLeaveCombat")
RegisterUnitEvent(18684, 3, "BroGaz_Death")
