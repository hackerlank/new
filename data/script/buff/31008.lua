--生活技能加攻
function OnHoldBuff_31008(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,240)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,240)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,600)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,600)
end
