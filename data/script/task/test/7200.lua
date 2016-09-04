--	Profession_Soldier      = 1,			//--战士
--	Profession_Spy          = 2,			//--盗贼
--	Profession_Gunman       = 3,			//--枪手
--	Profession_Blast        = 4,			//--魔炮
--	Profession_Freeman      = 5,			//--法师
--	Profession_Doctor       = 6,			//--牧师

--总任务
RoleTaskInfo7200 =
{

	subtasknum = 1,
	subtask1 =
	{
		randomtask =
		{
			{100,100,{8201, 8202, 8203, 8204}},
		},
		task = {s_taskRandomTask, {63096}},
	},
}

--战士
RoleTaskInfo8201 =
{
	parent = 7200,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfession, {1}},
		},

		onsuccess =
		{
			{s_actionSysInfo, {"得到国王的信", 34}},
			{s_actionAddItem,{1000, 0, 1, 1, "1-1,4-1", "RoleTaskInfo8201"}},
		},

		clicknpc = {63093, 0, 0, 3000, 100, 100},
		collectitem =
		{
			{1000, 0, 1},
		},
		task = {s_taskClickNpc, {63096, 63096}},
		onfinish =
		{
			{s_actionSysInfo, {"阅读信件动画展示", 34}},
		},
	},

}

--弓手
RoleTaskInfo8202 =
{
	parent = 7200,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfession, {3}},
		},

		onsuccess =
		{
			{s_actionSysInfo, {"得到国王的信", 34}},
			{s_actionAddItem,{1000, 0, 1, 1, "1-1,4-1", "RoleTaskInfo8202"}},
		},

		clicknpc = {63093, 0, 0, 3000, 100, 100},
		collectitem =
		{
			{1000, 0, 1},
		},
		task = {s_taskClickNpc, {63096, 63096}},
		onfinish =
		{
			{s_actionSysInfo, {"阅读信件动画展示", 34}},
		},
	},

}


--法师
RoleTaskInfo8203 =
{
	parent = 7200,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfession, {5}},
		},

		onsuccess =
		{
			{s_actionSysInfo, {"得到国王的信", 34}},
			{s_actionAddItem,{1000, 0, 1, 1, "1-1,4-1", "RoleTaskInfo8203"}},
		},

		clicknpc = {63093, 0, 0, 3000, 100, 100},
		collectitem =
		{
			{1000, 0, 1},
		},
		task = {s_taskClickNpc, {63096, 63096}},
		onfinish =
		{
			{s_actionSysInfo, {"阅读信件动画展示", 34}},
		},
	},

}

--牧师
RoleTaskInfo8204 =
{
	parent = 7200,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfession, {6}},
		},

		onsuccess =
		{
			{s_actionSysInfo, {"得到国王的信", 34}},
			{s_actionAddItem,{1000, 0, 1, 1, "1-1,4-1", "RoleTaskInfo8204"}},
		},

		clicknpc = {63093, 0, 0, 3000, 100, 100},
		collectitem =
		{
			{1000, 0, 1},
		},
		task = {s_taskClickNpc, {63096, 63096}},
		onfinish =
		{
			{s_actionSysInfo, {"阅读信件动画展示", 34}},
		},
	},

}
