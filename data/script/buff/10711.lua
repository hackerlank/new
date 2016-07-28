--元素子弹减速buff
function OnHoldBuff_10711(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_SUB_PER,100*level)
end
