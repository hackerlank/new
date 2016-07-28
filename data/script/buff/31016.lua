--生活技能加防
function OnHoldBuff_31016(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,150)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,150)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,500)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,500)
end
