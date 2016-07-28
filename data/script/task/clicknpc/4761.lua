RoleTaskInfo4761 =
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
			{s_actionAddItem,{31198, 0, 1,0, "1-1", "RoleTaskInfo4761_1"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"读条失败", 34}},
		},
		clicknpc = {60172, 0, 0, 15000, 100, 100},
		collectitem =
		{
			{31198, 0, 1},
		},
		task = {s_taskClickNpc, {60045, 60045}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31198,1,"RoleTaskInfo4761"}},
		},
	},

}
