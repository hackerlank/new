RoleTaskInfo15217 =
{
	subtasknum = 1,
	subtask1 =
	{
		oncheck =
		{
			{s_checkRoleTrafficType, {0, "请在步行状态祷告亡魂..."}},
		},
		onstartbar =
		{
			{s_actionSmile,{31}},
			{s_actionSysInfo, {"大哭着努力挖坑中...", 34}},
		},
		onendbar =
		{
			{s_actionSysInfo, {"", 34}},
		},
		onsuccess =
		{
			{s_actionSmile,{12}},
			{s_actionSysInfo,{"你心情十分悲痛的祭奠了死去的战士，并将他埋葬...",8}}
		},
		onfail =
		{
			{s_actionSysInfo, {"读条失败", 34}},
		},
		clicknpc = {60846, 1, 0, 20000, 100, 100},
		task = {s_taskClickNpc, {60849, 60849},},
	},
}

RoleTaskInfo15218 =
{
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck1 =
		{
			{s_checkRoleTrafficType, {0, "必须在步行下接取"}},
		},
		{s_taskGuard,{60849,60847,60850,1}},
	},
}

RoleTaskInfo15219 =
{
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskKillNpc, {60847,60847,{22638,22639},1}},
	},
}

RoleTaskInfo15221 =
{
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskKillNpc, {60847,60847,{22638,22639},5}},
	},
}
