function RoleTaskInfo7007_Award(uid, taskid, subtaskid,paramlist)
	local horseid = s_addItem(uid,50036,3,1,1,"1-1","7007任务奖励")
	if horseid ~= 0 and horseid ~= nil then
		s_useHorseItem(uid,horseid);
	end
end

RoleTaskInfo7007 =
{
	subtasknum = 1,
	subtask1 =
	{

		task = {s_taskTalk, {63080,63080}},
		onaccept =
		{
			{RoleTaskInfo7007_Award,{}},

			{s_actionOpenGuide,{}},
		},

	},
}

