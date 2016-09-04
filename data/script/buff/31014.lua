--生活技能加防
function OnHoldBuff_31014(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,100)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,100)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,400)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,400)
end
