--封闭毒液
function OnLoopBuffEvent_1Sec_20035(level,etype,eid)
	s_subValue(etype,eid,VALUE_TYPE_HP,40)
end

function OnHoldBuff_20035(level,etype,eid)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_CURE,1)
end
