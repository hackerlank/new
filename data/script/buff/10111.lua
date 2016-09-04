--能量壁垒
function OnHoldBuff_10111(level,etype,eid)
	local percent1 = 50                  -----初始
	local percent2 = 0.2*level-0.2        -----每级提升
	local value = percent1+percent2
	--local percent2 = {50,48,46,44,42,40}
	s_addValue(etype,eid,VALUE_TYPE_SUBPH,value*100)
	s_addValue(etype,eid,VALUE_TYPE_SUBMH,value*100)
	--s_addValue(etype,eid,VALUE_TYPE_PDAM_SUB_PER,percent2[level]*100);
	--s_addValue(etype,eid,VALUE_TYPE_MDAM_SUB_PER,percent2[level]*100);
end
