--定时炸弹
function OnRemoveBuffEvent_10407(level,etype,eid,time,value)
	if time == 0 then
		s_addbuff(etype,eid,10406,level,1,value)
	end
end
function OnHoldBuff_10407(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_SUB_PER,2000)
end
