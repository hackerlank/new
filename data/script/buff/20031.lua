--地狱咆哮
function OnHoldBuff_20031(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,10000)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,10000)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,10000)
end
