--	Profession_Soldier      = 1,			//--战士
--	Profession_Spy          = 2,			//--盗贼
--	Profession_Gunman       = 3,			//--枪手
--	Profession_Blast        = 4,			//--魔炮
--	Profession_Freeman      = 5,			//--法师
--	Profession_Doctor       = 6,			//--牧师

--总任务
RoleTaskInfo7001 =
{

	subtasknum = 1,
	subtask1 =
	{
		randomtask =
		{
			{100,100,{8001, 8002, 8003, 8004}},
		},
		task = {s_taskRandomTask, {63079}},
	},
}

--战士
RoleTaskInfo8001 =
{
	parent = 7001,
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
			{s_actionSysInfo, {"让我想一想……！", 34}},
			{s_taskplay,{104}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"我喜欢这一把！", 34}},
			{s_taskplay,{105}},
			{s_actionAddItem,{1000, 0, 1, 1, "1-1,4-1", "RoleTaskInfo8001"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"再试一次！", 34}},
		},
		clicknpc = {63093, 0, 0, 3000, 100, 100},
		collectitem =
		{
			{1000, 0, 1},
		},
		task = {s_taskClickNpc, {63079, 63079}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{1000,1,"RoleTaskInfo8001"}},
			{s_actionAddItem,{1000, 0, 1,1,"1-1,4-1", "RoleTaskInfo8001"}},

		},
	},

}

--弓手
RoleTaskInfo8002 =
{
	parent = 7001,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfession, {3}},
		},
		onaccept =
		{
			{s_taskplay,{108}, },
		},

		onstartbar =
		{
			{s_actionSysInfo, {"让我想一想……！", 34}},
			{s_taskplay,{104}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"我喜欢这一把！", 34}},
			{s_taskplay,{105}},
			{s_actionAddItem,{3000, 0, 1, 1, "1-1,4-1", "RoleTaskInfo8002"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"再试一次！", 34}},
		},
		clicknpc = {63093, 0, 0, 3000, 100, 100},
		collectitem =
		{
			{3000, 0, 1},
		},
		task = {s_taskClickNpc, {63079, 63079}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{3000,1,"RoleTaskInfo8002"}},
			{s_actionAddItem,{3000, 0, 1,1, "1-1,4-1", "RoleTaskInfo8002"}},

		},
	},

}


--法师
RoleTaskInfo8003 =
{
	parent = 7001,
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
			{s_actionSysInfo, {"让我想一想……！", 34}},
			{s_taskplay,{104}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"我喜欢这一把！", 34}},
			{s_taskplay,{105}},
			{s_actionAddItem,{5000, 0, 1, 1, "1-1,4-1", "RoleTaskInfo8003"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"再试一次！", 34}},
		},
		clicknpc = {63093, 0, 0, 3000, 100, 100},
		collectitem =
		{
			{5000, 0, 1},
		},
		task = {s_taskClickNpc, {63079, 63079}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{5000,1,"RoleTaskInfo8003"}},
			{s_actionAddItem,{5000, 0, 1,1, "1-1,4-1", "RoleTaskInfo8003"}},

		},
	},

}


--牧师
RoleTaskInfo8004 =
{
	parent = 7001,
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
			{s_actionSysInfo, {"让我想一想……！", 34}},
			{s_taskplay,{104}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"我喜欢这一把！", 34}},
			{s_taskplay,{105}},
			{s_actionAddItem,{6000, 0, 1, 1, "1-1,4-1", "RoleTaskInfo8004"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"再试一次！", 34}},
		},
		clicknpc = {63093, 0, 0, 3000, 100, 100},
		collectitem =
		{
			{6000, 0, 1},
		},
		task = {s_taskClickNpc, {63079, 63079}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{6000,1,"RoleTaskInfo8004"}},
			{s_actionAddItem,{6000, 0, 1,1, "1-1,4-1", "RoleTaskInfo8004"}},

		},
	},

}
