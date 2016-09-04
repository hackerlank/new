--瞄准标记
function OnHoldBuff_10304(level,etype,eid)
	local percent = {6,7,8,9,10,11,12,13,14,15,16}
	s_addValue(etype,eid,VALUE_TYPE_RDAM_ADD_PER,percent[level]*100)
end
