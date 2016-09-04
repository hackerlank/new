RoleTaskInfo3591 =
{
	subtasknum = 1,
	subtask1 =
	{
		onstartbar =
		{
			{s_actionSysInfo, {"开始读条", 34}},
		},
		onendbar =
		{
			{s_actionSysInfo, {"结束读条", 34}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"读条成功", 34}},
			{s_actionAddItem,{31186, 0, 1,0, "1-1", "RoleTaskInfo3591_1"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"读条失败", 34}},
		},
		clicknpc = {60144, 0, 0, 3500, 100, 100},
		collectitem =
		{
			{31186, 0, 5},
		},
		task = {s_taskClickNpc, {60038, 60038}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31186,5,"RoleTaskInfo3591"}},
		},
		onaccept =
		{
			{s_actionOpenGuide,{3591}},
		},
	},

}
