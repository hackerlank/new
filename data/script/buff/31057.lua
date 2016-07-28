--叹息之墙（自然）
function OnHoldBuff_31057(level,etype,eid)
	local value = s_getValue(etype,eid,VALUE_TYPE_WDEF)
	value = GetIntPart(value*level/100)
	s_addValue(etype,eid,VALUE_TYPE_WDEF,value)
end
