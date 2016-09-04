--绿色生命水晶
function OnHoldBuff_31064(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,100)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,100)
end
