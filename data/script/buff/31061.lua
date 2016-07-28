--元宵
function OnHoldBuff_31061(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,70)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,70)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,100)
end
function OnHoldBuff_31062(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,50)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,50)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,100)
end
function OnHoldBuff_31063(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,500)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,100)
end
