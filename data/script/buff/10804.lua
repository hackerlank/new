--精神集中
function OnHoldBuff_10804(level,etype,eid)
	local percent = {1,2,3,4,5,6,7,8,9,10,11}
	s_addValue(etype,eid,VALUE_TYPE_LUCKY,percent[level]*100)
end
