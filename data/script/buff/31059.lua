--叹息之墙（火焰）
function OnHoldBuff_31059(level,etype,eid)
	local value = s_getValue(etype,eid,VALUE_TYPE_HDEF)
	value = GetIntPart(value*level/100)
	s_addValue(etype,eid,VALUE_TYPE_HDEF,value)
end
