-- 愤怒
function OnHoldBuff_50(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,1000)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,1000)
end

