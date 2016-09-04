--真伤不起
function OnHoldBuff_145(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,20000)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,20000)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,20000)
end
