--肝胆相照(组队战友加成)
function OnHoldBuff_30011(level,etype,eid)
	local ext = {75,75,650}
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,ext[1])
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,ext[1])
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,ext[2])
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,ext[2])
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,ext[3])
end
