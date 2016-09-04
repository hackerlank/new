--大帝护体
function OnHoldBuff_20275(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,100)
end
