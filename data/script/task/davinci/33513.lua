RoleTaskInfo33513 =
{
	parent = 31000,
	subtasknum = 1,
	subtask1 =
	{
		color = TaskColor_Purple,
		onaccept =
		{
			{s_actionCorpsInfo,{"同团的团员，在军乐城的超魔导师达芬奇处接取了紫色品质的“达芬奇的秘密”任务！", 34}},
		},
		task = {s_taskGather,{60789,60789,31438,1,0,0}},
		onfinish =
		{
			{s_actionAddItem,{31440, 0, 1,0, "1-1", "RoleTaskInfo33513_1"}},
			{s_actionRandomAction,{ 100, 100, { {s_actionAddItem,{31435, 0, 1,0, "1-1", "酒与杯奖励"}}} }, },
		},
	},
}
