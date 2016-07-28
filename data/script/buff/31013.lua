--生活技能加防
function OnHoldBuff_31013(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,75)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,75)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,350)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,350)
end
