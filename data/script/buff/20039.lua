--狂热
function OnHoldBuff_20039(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,level*100)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,level*100)
end
