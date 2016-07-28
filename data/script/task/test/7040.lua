RoleTaskInfo7040 =
{
	subtasknum = 1,

	subtask1 =
	{
		onaccept = {
			{s_actionOpenGuide,{7040}},
		},
		--读条前的检查
		oncheck =
		{
			{s_checkRolePosition, {7, 142, 99, 5, "在矿洞坐标(142,99)附近使用"}},
		},
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
		},
		onfail =
		{
			{s_actionSysInfo, {"读条失败", 34}},
		},
		--使用道具
		useitem = {31910,0,1,"1-1",0,3000,100,100},
		task = {s_taskUseItem, {63090, 63090}},
	},
}
