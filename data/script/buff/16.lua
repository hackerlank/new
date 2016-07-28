--团训练任务时间限制
function OnLoopBuffEvent_3Sec_16(level,etype,eid,time,value)
	if time < 5 then
		return
	end
	--调整BUFF时间
	local endtime = s_getTaskVar(eid,20003,13)
	local curtime = s_getCurTime(TIME_ALLSECONDS)
	if curtime > endtime then
		s_updateBuffTime(etype,eid,16,3)
		return
	end
	if curtime < endtime then
		local left = endtime - curtime
		if time > left + 3 then
			s_updateBuffTime(etype,eid,16,left)
		end
	end
end

function OnRemoveBuffEvent_16(level,etype,eid,time,value)
	FinishRoleSubTask(eid, 20003, 1)
end
