--护送物资
RoleTaskInfo30210 =
{
	ring = 1,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleLevel,{61,200}},
			{s_checkInHomeland,{}},
			{s_checkCountryWarDay,{}},
			{s_checkHour,{12,20}},
		},

		task = {s_taskGuard,{126,127,60185}},
	},
	onfinish =
	{
		{s_actionAddItem,{26020,0,1,0,"1-1,3-43200","国战备战（一）"}},
	},
}

