--毁灭嚎叫
function OnHoldBuff_20059(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,level*100)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,level*100)
end
