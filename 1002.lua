--Profession_Soldier		= 1,		// 战士
--Profession_Spy			= 2,		// 刺客(幻师)
--Profession_Freeman		= 3,		// 法师
--Profession_Doctor			= 4,		// 暗巫

--总任务
RoleTaskInfo1002 =
{
	--子任务数
	subtasknum = 1,
	--子任务1
	subtask1 =
	{
		onacceptcheck =
		{
			--服务器端对任务1002的角色属性不做检查
			{s_checkRoleProfession}, {9999}},
		},

		onsuccess =
		{
			{s_actionSysInfo, {"得到自然灵蕴", 34}},
			{s_actionAddItem,{14, 0, 1, 0, }},"", "RoleTaskInfo1002"}},
		},

		clicknpc = {10006, 1, 0, 3000, 100, 100},
		collectitem =
		{
			{14, 0, 1},
		},
		task = {s_taskClickNpc, {10001, 10001}},
		onfinish =
		{
			{s_actionSysInfo, {"采集道具动画展示", 34}},
		},
	},
}
