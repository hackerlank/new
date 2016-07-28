--生活技能加防
function OnHoldBuff_31018(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,200)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,200)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,600)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,600)
end
