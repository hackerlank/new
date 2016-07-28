--圣光战甲
function OnHoldBuff_10610(level,etype,eid)
	local percent = {40,45,50,55,60,65}
	--local percent2 = {50,48,46,44,42,40}
	s_addValue(etype,eid,VALUE_TYPE_SUBPH,percent[level]*100)
	s_addValue(etype,eid,VALUE_TYPE_SUBMH,percent[level]*100)
	--s_addValue(etype,eid,VALUE_TYPE_PDAM_SUB_PER,percent2[level]*100);
	--s_addValue(etype,eid,VALUE_TYPE_MDAM_SUB_PER,percent2[level]*100);
end
