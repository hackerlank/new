--神秘药(攻)
function OnHoldBuff_41123(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,300)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,300)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,700)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,700)
end
