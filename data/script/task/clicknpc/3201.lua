RoleTaskInfo3201 =
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
			{s_actionAddItem,{31183, 0, 1, 0, "1-1", "RoleTaskInfo3201_1"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"读条失败", 34}},
		},
		clicknpc = {60142, 0, 0, 3500, 100, 100},
		collectitem =
		{
			{31183, 0, 5},
		},
		task = {s_taskClickNpc, {60026, 60026}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31183,5,"RoleTaskInfo3201"}},
		},
	},

}