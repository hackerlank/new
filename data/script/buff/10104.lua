--狂野大叫(废除)
function OnHoldBuff_10104(level,etype,eid)

	local percent = { 2,3,4,5,6,7,9,10,12,13,15,16,17,18,19,20}

	local addition ={ 10,15,20,30,35,40,45,50,55,60,70,80,90,100,110,120}

	local tizhi = s_getValue(etype,eid,VALUE_TYPE_TIZHI)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,addition[level])
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,percent[level]*100+10*tizhi)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,addition[level])
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,percent[level]*100+10*tizhi)
end
