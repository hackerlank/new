--生活技能加防
function OnHoldBuff_31015(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,125)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,125)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,450)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,450)
end
