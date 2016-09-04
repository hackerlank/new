--加速药剂
function OnHoldBuff_10624(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_ADD_PER,level*100)
end
