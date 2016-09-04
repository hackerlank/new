--神降
function OnHoldBuff_20521(level,etype,eid)
	local powerorder = s_getField(eid,UserVar_PowerOrder)
	if powerorder == 0 then powerorder = 1000 end
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,math.floor(10000*(0.25+powerorder*0.001)))
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,math.floor(10000*(0.25+powerorder*0.001)))
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,math.floor(10000*(0.25+powerorder*0.001)))
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,math.floor(10000*(0.25+powerorder*0.001)))
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,math.floor(10000*(0.25+powerorder*0.001)))
end
