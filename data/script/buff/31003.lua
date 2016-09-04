--生活技能加攻
function OnHoldBuff_31003(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,90)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,90)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,350)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,350)
end
