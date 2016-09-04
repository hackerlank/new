--生活技能加生命上限
function OnHoldBuff_31027(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,550)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,875)
end
