--生活技能加生命上限
function OnHoldBuff_31023(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,350)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,375)
end
