--	Profession_Soldier      = 1,			//--战士
--	Profession_Spy          = 2,			//--弓手
--	Profession_Freeman      = 3,			//--法师
--	Profession_Doctor       = 4,			//--牧师

--总任务
RoleTaskInfo1004 =
{

	subtasknum = 1,
	subtask1 =
	{
		randomtask =
		{
			{100,100,{9001, 9002, 9003, 9004}},
		},
		task = {s_taskRandomTask, {63054}},
	},
}

--战士
RoleTaskInfo9001 =
{
	parent = 9001,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfession, {1}},
		},
		onaccept =
		{
			{s_taskplay,{108}, },
		},

		onstartbar =
		{
			{s_actionSysInfo, {"醒来吧！伙伴！", 34}},
			{s_taskplay,{104}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"成功破开了岩石，拔出了武器！", 34}},
			{s_taskplay,{105}},
			{s_actionAddItem,{31196, 0, 1, 0, "1-1", "RoleTaskInfo6001"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"再试一次！", 34}},
		},
		clicknpc = {63056, 0, 0, 10000, 100, 100},
		collectitem =
		{
			{31911, 0, 1},
		},
		task = {s_taskClickNpc, {63054, 63054}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31911,1,"RoleTaskInfo6001"}},
			{s_actionAddItem,{1000, 0, 1,1, "1-1,6-2,7-2,502-121", "RoleTaskInfo6001"}},

		},
	},

}

--弓手
RoleTaskInfo9002 =
{
	parent = 1004,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfession, {2}},
		},
		onaccept =
		{
			{s_taskplay,{108}, },
		},

		onstartbar =
		{
			{s_actionSysInfo, {"醒来吧！伙伴！", 34}},
			{s_taskplay,{104}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"成功破开了岩石，拔出了武器！", 34}},
			{s_taskplay,{105}},
			{s_actionAddItem,{31196, 0, 1, 0, "1-1", "RoleTaskInfo6002"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"再试一次！", 34}},
		},
		clicknpc = {63056, 0, 0, 10000, 100, 100},
		collectitem =
		{
			{31196, 0, 1},
		},
		task = {s_taskClickNpc, {63054, 63054}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31911,1,"RoleTaskInfo6002"}},
			{s_actionAddItem,{2000, 0, 1,1, "1-1,6-2,7-2,502-121", "RoleTaskInfo6002"}},

		},
	},

}


--法师
RoleTaskInfo9003 =
{
	parent = 1004,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfession, {5}},
		},
		onaccept =
		{
			{s_taskplay,{108}, },
		},

		onstartbar =
		{
			{s_actionSysInfo, {"醒来吧！伙伴！", 34}},
			{s_taskplay,{104}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"成功破开了岩石，拔出了武器！", 34}},
			{s_taskplay,{105}},
			{s_actionAddItem,{31911, 0, 1, 0, "1-1", "RoleTaskInfo6003"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"再试一次！", 34}},
		},
		clicknpc = {63056, 0, 0, 10000, 100, 100},
		collectitem =
		{
			{31911, 0, 1},
		},
		task = {s_taskClickNpc, {63054, 63054}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31911,1,"RoleTaskInfo6003"}},
			{s_actionAddItem,{5000, 0, 1,1, "1-1,6-2,7-2,502-121", "RoleTaskInfo6003"}},

		},
	},

}


--牧师
RoleTaskInfo9004 =
{
	parent = 1004,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfession, {6}},
		},
		onaccept =
		{
			{s_taskplay,{108}, },
		},

		onstartbar =
		{
			{s_actionSysInfo, {"醒来吧！伙伴！", 34}},
			{s_taskplay,{104}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"成功破开了岩石，拔出了武器！", 34}},
			{s_taskplay,{105}},
			{s_actionAddItem,{31911, 0, 1, 0, "1-1", "RoleTaskInfo6004"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"再试一次！", 34}},
		},
		clicknpc = {63056, 0, 0, 10000, 100, 100},
		collectitem =
		{
			{31911, 0, 1},
		},
		task = {s_taskClickNpc, {63054, 63054}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31911,1,"RoleTaskInfo6004"}},
			{s_actionAddItem,{6000, 0, 1,1, "1-1,6-2,7-2,502-121", "RoleTaskInfo6004"}},

		},
	},

}
