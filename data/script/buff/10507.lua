--重力指令
function OnHoldBuff_10507(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_SUB_PER,100*level)
end
