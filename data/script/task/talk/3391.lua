RoleTaskInfo3391 =
{
	subtask1 =
	{
		onaccept =
		{
			{s_actionOpenGuide,{3391}},
		},
		dropitem =
		{
			{10008, 100, 31041, 0, 12, "1-1"},
		},
		task = {s_taskKillNpcDrop, {60035, 60035}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31041,12,"RoleTaskInfo3391"}},
		},
	},
}
