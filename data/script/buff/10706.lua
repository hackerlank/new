--雷霆万钧减速buff
function OnHoldBuff_10706(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_SUB_PER,100*level)
end
