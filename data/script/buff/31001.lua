--生活技能加攻
function OnHoldBuff_31001(level,etype,eid)
	--乘个level给GM指令用
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,30*level)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,30*level)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,250)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,250)
end
