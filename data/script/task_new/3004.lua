--Profession_Soldier		= 1,		// 战士
--Profession_Spy			= 2,		// 刺客(幻师)
--Profession_Freeman		= 3,		// 法师
--Profession_Doctor			= 4,		// 暗巫

--总任务
RoleTaskInfo3004 =
{

	subtasknum = 1,
	subtask1 =
	{
		randomtask =
		{
			{100,100,{8201, 8202, 8203, 8204}},
		},
		task = {s_taskRandomTask, {106}},
	},
}

--战士
RoleTaskInfo8201 =
{
	parent = 3004,
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
			{s_actionAddItem,{14, 0, 1, 0, "", "RoleTaskInfo8201"}},
		},

		clicknpc = {107, 0, 0, 3000, 100, 100},
		collectitem =
		{
			{14, 0, 1},
		},
		task = {s_taskClickNpc, {106, 106}},
		onfinish =
		{
			{s_actionSysInfo, {"阅读信件动画展示", 34}},
		},
	},

}

--刺客
RoleTaskInfo8202 =
{
	parent = 3004,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfession, {2}},
		},

		onsuccess =
		{
			{s_actionSysInfo, {"得到国王的信", 34}},
			{s_actionAddItem,{14, 0, 1, 0, "", "RoleTaskInfo8202"}},
		},

		clicknpc = {107, 0, 0, 3000, 100, 100},
		collectitem =
		{
			{14, 0, 1},
		},
		task = {s_taskClickNpc, {106, 106}},
		onfinish =
		{
			{s_actionSysInfo, {"阅读信件动画展示", 34}},
		},
	},

}


--法师
RoleTaskInfo8203 =
{
	parent = 3004,
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
			{s_actionAddItem,{14, 0, 1, 0, "1-1,4-1", "RoleTaskInfo8203"}},
		},

		clicknpc = {107, 0, 0, 3000, 100, 100},
		collectitem =
		{
			{14, 0, 1},
		},
		task = {s_taskClickNpc, {106, 106}},
		onfinish =
		{
			{s_actionSysInfo, {"阅读信件动画展示", 34}},
		},
	},

}

--暗巫
RoleTaskInfo8204 =
{
	parent = 3004,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfession, {4}},
		},

		onsuccess =
		{
			{s_actionSysInfo, {"得到国王的信", 34}},
			{s_actionAddItem,{14, 0, 1, 0, "1-1,4-1", "RoleTaskInfo8204"}},
		},

		clicknpc = {107, 0, 0, 3000, 100, 100},
		collectitem =
		{
			{14, 0, 1},
		},
		task = {s_taskClickNpc, {106, 106}},
		onfinish =
		{
			{s_actionSysInfo, {"阅读信件动画展示", 34}},
		},
	},

}
