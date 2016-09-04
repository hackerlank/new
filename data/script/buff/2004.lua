--战斗状态 减速
function OnHoldBuff_2004(level,etype,eid,value)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_SUB_PER,100*50)
end
