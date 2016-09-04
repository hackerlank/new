-- 涡轮增压
function OnHoldBuff_36(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_ADD_PER,100*level)
end

