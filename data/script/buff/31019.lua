--生活技能加防
function OnHoldBuff_31019(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,225)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,225)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,650)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,650)
end
