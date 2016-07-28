--生活技能加生命上限
function OnHoldBuff_31021(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,250)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,125)
end
