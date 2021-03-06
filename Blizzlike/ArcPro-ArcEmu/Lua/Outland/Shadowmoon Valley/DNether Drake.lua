--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function DNetherDrake_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("DNetherDrake_ArcaneBlast", 11000, 0)
end

function DNetherDrake_ArcaneBlast(Unit,Event)
	Unit:FullCastSpellOnTarget(38344, Unit:GetClosestPlayer())
end

function DNetherDrake_LeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function DNetherDrake_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(22000, 1, "DNetherDrake_OnEnterCombat")
RegisterUnitEvent(22000, 2, "DNetherDrake_LeaveCombat")
RegisterUnitEvent(22000, 4, "DNetherDrake_OnDied")