--国战备战（三）
RoleTaskInfo30230 =
{
	ring = 1,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkTaskCurRound,{30220,2,0}},
			{s_checkRoleLevel,{61,200}},
			{s_checkInHomeland,{}},
			{s_checkCountryWarDay,{}},
			{s_checkHour,{12,20}},
		},

		task = {s_taskKillNpc, {126,126,10147,20}},
	},
	onfinish =
	{
		{s_actionAddItem,{26020,0,1,0,"1-1,3-43200","国战备战（三）"}},
	},
}

