RoleTaskInfo1514 =
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
			{s_actionAddItem,{31187, 0, 1,0, "1-1", "RoleTaskInfo1514_1"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"读条失败", 34}},
		},
		clicknpc = {60186, 0, 0, 3500, 100, 100},
		collectitem =
		{
			{31187, 0, 5},
		},
		task = {s_taskClickNpc, {60148, 60148}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31187,5,"RoleTaskInfo1514"}},
		},
	},

}
