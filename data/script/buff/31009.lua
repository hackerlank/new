--生活技能加攻
function OnHoldBuff_31009(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,270)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,270)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,650)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,650)
end
