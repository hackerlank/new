--自然吞噬
function OnLoopBuffEvent_1Sec_20034(level,etype,eid)
	s_subValue(etype,eid,VALUE_TYPE_HP,50)
end

function OnHoldBuff_20034(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_SUB_PER,100*99)
end

