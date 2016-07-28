--热能装甲
function OnHoldBuff_10405(level,etype,eid)
	local percent = {20,30,40,50,60}
	s_addValue(etype,eid,VALUE_TYPE_HURTECHO,100*percent[level])
end
