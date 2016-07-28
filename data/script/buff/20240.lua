--国战连斩收益
function OnHoldBuff_20240(level,etype,eid,value)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,100)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,100)
end
