--核子辐射
function OnHoldBuff_20057(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_SUB_PER,3000)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_SUB_PER,3000)
end
