--高级好友组队
function OnHoldBuff_30004(level,etype,eid)
	local percent = 500
	local ext = {100,150,500}
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,percent)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,percent)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,percent)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,percent)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,percent)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,ext[1])
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,ext[1])
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,ext[2])
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,ext[2])
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,ext[3])
end
