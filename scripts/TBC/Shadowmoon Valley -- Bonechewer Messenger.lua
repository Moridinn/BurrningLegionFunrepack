--[[ Shadowmoon Valley -- Bonechewer Messenger.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function BWMessenger_OnEnterCombat(pUnit,Event)
	pUnit:FullCastSpellOnTarget(35570,pUnit:GetClosestPlayer())
end

RegisterUnitEvent(21245, 1, "BWMessenger_OnEnterCombat")