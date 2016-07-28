--虚弱之咒(中咒者)
function OnHoldBuff_127(level,etype,eid,value)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_SUB_PER,2500)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_SUB_PER,2500)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_SUB_PER,2500)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_SUB_PER,2500)
end

