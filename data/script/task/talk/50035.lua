function RoleTaskInfo50035_oncheck(uid, taskid, subtaskid, paramlist)
	local month = s_getCurTime(TIME_CURMONTHS) + 1
	local mday = s_getCurTime(TIME_CURMDAYS)
	if month == 4 then
		if mday >= 25 then
			return VALUE_OK
		end
	elseif month == 5 then
		if mday <= 12 then
			return VALUE_OK
		end
	end
	return VALUE_FAIL
end



RoleTaskInfo50035 =
{
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{RoleTaskInfo50035_oncheck, {0, "必须在活动时间内接取"}},
		},
		task = {s_taskTalk, {357, 357}},
	},
}

