-- 团BOSS 狂暴
function OnHoldBuff_20054(level,etype,eid,value)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_ADD_PER,100*50)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,100*100)
end

