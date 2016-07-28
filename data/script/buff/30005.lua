--光明之神
function OnHoldBuff_30005(level,etype,eid)
	local value = {3,6,9,12,15,18}   --攻击数值
	--local percent2 = {50,48,46,44,42,40}
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,value)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,value)
	--s_addValue(etype,eid,VALUE_TYPE_PDAM_SUB_PER,percent2[level]*100);
	--s_addValue(etype,eid,VALUE_TYPE_MDAM_SUB_PER,percent2[level]*100);
end
