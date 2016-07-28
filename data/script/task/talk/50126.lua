function RoleTaskInfo50126_oncheck(uid,taskid,subtaskid,paramlist)
	local month = s_getCurTime(TIME_CURMONTHS) + 1
	local mday = s_getCurTime(TIME_CURMDAYS)
	if month == 4 then
		if mday >= 20 and mday <= 26 then
			return VALUE_OK
		end
	end
	return VALUE_FAIL
end

RoleTaskInfo50126 =
{
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{RoleTaskInfo50126_oncheck, {0, "必须在活动时间内接取"}},
		},
	},
}


function RoleTaskInfo50126:GetTaskExp(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 60 * (50 + 0.1*level^2.2)
	return math.floor(exp)
end
