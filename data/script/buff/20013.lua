--减速毒丝
function OnHoldBuff_20013(level,etype,eid)
	--local percent1 = 70                  -----初始
	--local percent2 = 0.2*level-0.2        -----每级提升
	--local value = percent1+percent2
	s_addValue(etype,eid,VALUE_TYPE_SPEED_SUB_PER,100*70)
end
