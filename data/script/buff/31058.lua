--叹息之墙（闪电）
function OnHoldBuff_31058(level,etype,eid)
	local value = s_getValue(etype,eid,VALUE_TYPE_LDEF)
	value = GetIntPart(value*level/100)
	s_addValue(etype,eid,VALUE_TYPE_LDEF,value)
end
