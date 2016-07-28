--真爱永恒BUFF
function OnHoldBuff_20235(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,200)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,200)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,200)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,200)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,200)
end
