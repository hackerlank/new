--怒火中烧
function OnHoldBuff_10118(level,etype,eid,value)

	local percent ={ 15,17,19,21,23,25 }

	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,percent[level] * 100)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,percent[level] * 100)
end
