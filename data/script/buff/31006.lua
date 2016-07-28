--生活技能加攻
function OnHoldBuff_31006(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,180)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,180)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,500)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,500)
end
