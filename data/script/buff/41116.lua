function OnHoldBuff_41116(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,1000)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,500)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,500)
end
