--野蛮冲锋减速
function OnHoldBuff_10002(level,etype,eid)
	local percent = {70,70,70,75,75,75}
	s_addValue(etype,eid,VALUE_TYPE_SPEED_SUB_PER,percent[level]*100)
end
