--挑战状态
function OnLoopBuffEvent_1Sec_12(level,etype,eid,time,value)
	if time < 10 then
		s_sysInfo(eid,"挑战剩余时间:" .. time,ChatPos_Important)
	end
end

function OnRemoveBuffEvent_12(level,etype,eid)
	s_sysInfo(eid,"挑战结束",ChatPos_Important)
end
function OnHoldBuff_12(level,etype,eid)
	s_setValue(etype,eid,VALUE_TYPE_BATTLEINT,1)
end
