--疯狂射杀
function OnLoopBuffEvent_1Sec_10306(level,etype,eid)
	local percent = {5,8,10,12}
	local victim ={}
	local etype1,eid1 = s_getSelect(eid)
	if etype1 ~= etype or eid1 ~= eid then
		if s_checkPK(10315,etype,eid,etype1,eid1) == VALUE_OK then
			local damage = s_getValue(etype,eid,VALUE_TYPE_PDAM)
			damage = damage * (100 + percent[level]) / 100
			MagicAttack(10315,VALUE_TYPE_PDAM,etype,eid,etype1,eid1,damage)
		end
	end
end

REMOVE_BUFF_ON_MOVE_10306 = 1
