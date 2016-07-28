--生活技能加防
function OnHoldBuff_31017(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,175)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,175)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,550)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,550)
end
