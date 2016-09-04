--万圣之夜buff
function OnHoldBuff_20397(level,etype,eid)

	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,100)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,100)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,300)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,300)
end

