--空行者
function OnHoldBuff_20103(level,etype,eid,value)
	local addper = {5000, 6000, 7500, 9000, 11000}
	s_addValue(etype,eid,VALUE_TYPE_SPEED_ADD_PER,addper[value])
end
