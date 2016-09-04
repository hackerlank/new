--生活技能加攻
function OnHoldBuff_31007(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,210)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,210)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,550)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,550)
end
