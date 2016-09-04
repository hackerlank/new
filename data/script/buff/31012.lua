--生活技能加放
function OnHoldBuff_31012(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,50)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,50)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,300)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,300)
end
