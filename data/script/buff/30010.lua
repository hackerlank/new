--同甘共苦(组队战友加成)
function OnHoldBuff_30010(level,etype,eid)
	local ext = {60,60,500}
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,ext[1])
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,ext[1])
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,ext[2])
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,ext[2])
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,ext[3])
end
