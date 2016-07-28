function OnRemoveBuffEvent_21(level,etype,eid,time,value)
	--判断有没有任务
	local process = s_getTaskValue(eid,30023,TaskValue_Process)
	local clear = 0
	if process ~= TaskProcess_None then
		clear = 1
		s_delTask(eid,30023,1)
	end
	process = s_getTaskValue(eid,30022,TaskValue_Process)
	if process ~= TaskProcess_None then
		clear = 1
		s_delTask(eid,30022,1)
	end
	process = s_getTaskValue(eid,30415,TaskValue_Process)
	if process ~= TaskProcess_None then
		s_delTask(eid,30415,1)
	end
	process = s_getTaskValue(eid,30421,TaskValue_Process)
	if process ~= TaskProcess_None then
		s_delTask(eid,30421,1)
	end

	--判断有没有镖车
	local guard = s_getGuardID(eid)
	if guard ~= 0 then
		s_killGuard(eid)
	end
	--清除镖局信息
	if clear == 1 then
		s_clearEscort(eid)
	end
end
