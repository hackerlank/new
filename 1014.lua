--Profession_Soldier		= 1,		// 战士
--Profession_Spy			= 2,		// 刺客(幻师)
--Profession_Freeman		= 3,		// 法师
--Profession_Doctor			= 4,		// 暗巫

--总任务
RoleTaskInfo1014 =
{
	--子任务数
	subtasknum = 1,
	--子任务1
	subtask1 =
	{
		onacceptcheck =
		{
			--服务器端对任务1014的角色属性不做检查
			{s_checkRoleProfession}, {9999}},
		},

		onsuccess =
		{
			{s_actionSysInfo, {"得到止血灵药", 34}},
			{s_actionAddItem,{14, 0, 1, 0, }},"", "RoleTaskInfo1014"}},
		},

		clicknpc = {10011, 1, 0, 3000, 100, 100},
		collectitem =
		{
			{14, 0, 1},
		},
		task = {s_taskClickNpc, {10004, 10004}},
		onfinish =
		{
			{s_actionSysInfo, {"采集道具动画展示", 34}},
		},
	},
}
