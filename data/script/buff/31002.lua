--生活技能加攻
function OnHoldBuff_31002(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,60)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,60)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,300)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,300)
end
