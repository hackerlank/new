--神秘药(血)
function OnHoldBuff_41125(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,700)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,1250)
end
