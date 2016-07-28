--测试buff
function OnRemoveBuffEvent_1(level,etype,eid,time)
	if time == 0 then
		s_setValue(etype,eid,VALUE_TYPE_HP,0)
	end
end
function OnAddBuffEvent_1(level,etype, eid,value)
end

function OnHoldBuff_1(level,etype,eid)
end
