function RoleTaskInfo3551_Award(uid, taskid, subtaskid,paramlist)
	local horseid = s_addItem(uid,50036,3,1,1,"1-1","3551任务奖励")
	if horseid ~= 0 and horseid ~= nil then
		s_useHorseItem(uid,horseid);
	end
end
RoleTaskInfo3551 =
{
	subtasknum = 1,
	subtask1 =
	{
		onfinish =
		{
			{RoleTaskInfo3551_Award,{}},
		},
	},
}

