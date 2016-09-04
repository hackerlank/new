--自然女神守护
function OnHoldBuff_20246(level,etype,eid,value)
	s_addValue(etype,eid,VALUE_TYPE_LDAM_ADD_PER,800)
	s_addValue(etype,eid,VALUE_TYPE_HDAM_ADD_PER,800)
	s_addValue(etype,eid,VALUE_TYPE_BDAM_ADD_PER,800)
	s_addValue(etype,eid,VALUE_TYPE_WDAM_ADD_PER,800)
	--自然
	s_addValue(etype,eid,VALUE_TYPE_WDAM_ADD_BASE,50)
end

