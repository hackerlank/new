RoleTaskInfo10731 =
{
	subtasknum = 1,
	subtask1 =
	{
		onstartbar =
		{
			{s_actionSysInfo, {"开始寻找", 34}},
		},
		onendbar =
		{
			{s_actionSysInfo, {"结束寻找", 34}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"找到肚子熊啦！", 34}},
		},
		onfail =
		{
			{s_actionSysInfo, {"什么都没发现？再找找？", 34}},
		},
		clicknpc = {60070, 1, 0, 12000, 100, 100},
		task = {s_taskClickNpc, {135, 135},},
	},
}
