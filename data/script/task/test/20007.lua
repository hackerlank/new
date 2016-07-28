RoleTaskInfo20007 =
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
			{s_actionAddItem,{31909, 0, 1,0, "1-1", "RoleTaskInfo20007_1"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"读条失败", 34}},
		},
		clicknpc = {45112, 0, 0, 4500, 100, 100},
		collectitem =
		{
			{31909, 0, 1},
		},
		task = {s_taskClickNpc, {45112, 45112}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31909,1,"RoleTaskInfo20007"}},
		},
	},

}
