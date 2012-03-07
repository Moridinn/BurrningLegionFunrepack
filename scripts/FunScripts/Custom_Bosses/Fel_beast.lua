--Boss Script for the burning legion repack written by Memlock of AC-web.org
--written on tuesday march 6 2012 2:00AM est
--
--
--
--


function Fel_Beast_Mana_Drain(Unit,event,miscunit,misc)
 Unit:SendChatMessage(16, 0, "Fel Beast Sense's Magice Near By............")
 Unit:FullCastSpellOnTarget(17682,Unit:GetClosestPlayer())
end

function Fel_Beast(unit,event,miscunit,misc)
unit:RegisterEvent("Fel_Beast_Mana_Drain",6000,1)
end
RegisterUnitEvent(200000,1,"Fel_Beast")


--29054 devour mana 	

--17682Mana drain

--37176 mana burn