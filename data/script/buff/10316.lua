--疾风步
function OnHoldBuff_10316(level,etype,eid)
	local percent1 = 40                  -----初始
	local percent2 = 0.1*level-0.1        -----每级提升
	local value12 = percent1+percent2
	--速度提升
	local percent3 = 50                  -----初始
	local percent4 = 0.1*level-0.1        -----每级提升
	local value34 = percent3+percent4
	--local percent2 = {50,48,46,44,42,40}
	s_addValue(etype,eid,VALUE_TYPE_SUBPH,value12*100)
	s_addValue(etype,eid,VALUE_TYPE_SUBMH,value12*100)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_ADD_PER,value34*100)
	--s_addValue(etype,eid,VALUE_TYPE_PDAM_SUB_PER,percent2[level]*100);
	--s_addValue(etype,eid,VALUE_TYPE_MDAM_SUB_PER,percent2[level]*100);
end
