--战栗嘲讽
function OnHoldBuff_10108(level,etype,eid)
	local percent = {20,30}
	s_addValue(etype,eid,VALUE_TYPE_HURTECHO,100*percent[level])
end

