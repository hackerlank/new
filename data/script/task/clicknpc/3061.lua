RoleTaskInfo3061 =
{
	subtasknum = 1,
	subtask1 =
	{
		onstartbar =
		{
			{s_actionSysInfo, {"采集野果", 34}},
		},
		onendbar =
		{
			{s_actionSysInfo, {"完成采集", 34}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"采集完成了", 34}},
			{s_actionAddItem,{49237, 0, 1,0, "1-1", "RoleTaskInfo3061_1"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"野果居然这么难采", 34}},
		},
		clicknpc = {60169, 0, 0, 3500, 100, 100},
		collectitem =
		{
			{49237, 0, 1},
		},
		task = {s_taskClickNpc, {60006, 60006}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{49237,1,"RoleTaskInfo3061"}},
			{s_taskplay,{101}, },
		},
	},

}
