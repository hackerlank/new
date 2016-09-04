--生活技能加防
function OnHoldBuff_31020(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,250)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,250)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,700)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,700)
end
