RoleTaskInfo7045 =
{
	subtask1 =
	{
		dropitem =
		{
			{15597, 100, 31907, 0, 1, "1-1"},
		},
		task = {s_taskKillNpcDrop, {63055, 63055}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31907,1,"RoleTaskInfo7045"}},
		},
		onaccept =
		{
			{s_actionOpenGuide,{7045}},
		},
	},
}
