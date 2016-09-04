--生活技能加攻
function OnHoldBuff_31004(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,120)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,120)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,400)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,400)
end
