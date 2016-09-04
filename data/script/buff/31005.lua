--生活技能加攻
function OnHoldBuff_31005(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,150)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,150)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,450)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,450)
end
