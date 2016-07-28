--	Profession_Soldier      = 1,			//--战士
--	Profession_Spy          = 2,			//--盗贼
--	Profession_Gunman       = 3,			//--枪手
--	Profession_Blast        = 4,			//--魔炮
--	Profession_Freeman      = 5,			//--法师
--	Profession_Doctor       = 6,			//--牧师

--总任务
RoleTaskInfo3021 =
{

	subtasknum = 1,
	subtask1 =
	{
		randomtask =
		{
			{100,100,{6001, 6002, 6003, 6004}},
		},
		task = {s_taskRandomTask, {60046}},
	},
}

--战士
RoleTaskInfo6001 =
{
	parent = 3021,
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
			{s_actionSysInfo, {"颤抖吧！懦夫！", 34}},
			{s_taskplay,{104}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"成功拔出王者之剑了！", 34}},
			{s_taskplay,{105}},
			{s_actionAddItem,{31196, 0, 1, 0, "1-1", "RoleTaskInfo6001"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"再试一次！", 34}},
		},
		clicknpc = {60141, 0, 0, 10000, 100, 100},
		collectitem =
		{
			{31196, 0, 1},
		},
		task = {s_taskClickNpc, {60046, 60046}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31196,1,"RoleTaskInfo6001"}},
			{s_actionAddItem,{1000, 0, 1,1, "1-1,6-2,7-2,502-121", "RoleTaskInfo6001"}},

		},
	},

}

--盗贼
RoleTaskInfo6002 =
{
	parent = 3021,
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
			{s_actionSysInfo, {"颤抖吧！懦夫！", 34}},
			{s_taskplay,{104}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"成功拔出王者之剑了！", 34}},
			{s_taskplay,{105}},
			{s_actionAddItem,{31196, 0, 1, 0, "1-1", "RoleTaskInfo6002"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"再试一次！", 34}},
		},
		clicknpc = {60141, 0, 0, 10000, 100, 100},
		collectitem =
		{
			{31196, 0, 1},
		},
		task = {s_taskClickNpc, {60046, 60046}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31196,1,"RoleTaskInfo6002"}},
			{s_actionAddItem,{2000, 0, 1,1, "1-1,6-2,7-2,502-121", "RoleTaskInfo6002"}},

		},
	},

}


--法师
RoleTaskInfo6003 =
{
	parent = 3021,
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
			{s_actionSysInfo, {"颤抖吧！懦夫！", 34}},
			{s_taskplay,{104}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"成功拔出王者之剑了！", 34}},
			{s_taskplay,{105}},
			{s_actionAddItem,{31196, 0, 1, 0, "1-1", "RoleTaskInfo6003"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"再试一次！", 34}},
		},
		clicknpc = {60141, 0, 0, 10000, 100, 100},
		collectitem =
		{
			{31196, 0, 1},
		},
		task = {s_taskClickNpc, {60046, 60046}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31196,1,"RoleTaskInfo6003"}},
			{s_actionAddItem,{5000, 0, 1,1, "1-1,6-2,7-2,502-121", "RoleTaskInfo6003"}},

		},
	},

}


--牧师
RoleTaskInfo6004 =
{
	parent = 3021,
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
			{s_actionSysInfo, {"颤抖吧！懦夫！", 34}},
			{s_taskplay,{104}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"成功拔出王者之剑了！", 34}},
			{s_taskplay,{105}},
			{s_actionAddItem,{31196, 0, 1, 0, "1-1", "RoleTaskInfo6004"}},
		},
		onfail =
		{
			{s_actionSysInfo, {"再试一次！", 34}},
		},
		clicknpc = {60141, 0, 0, 10000, 100, 100},
		collectitem =
		{
			{31196, 0, 1},
		},
		task = {s_taskClickNpc, {60046, 60046}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31196,1,"RoleTaskInfo6004"}},
			{s_actionAddItem,{6000, 0, 1,1, "1-1,6-2,7-2,502-121", "RoleTaskInfo6004"}},

		},
	},

}
