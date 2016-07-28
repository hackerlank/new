RoleTaskInfo3072 =
{
	subtasknum = 1,
	subtask1 =
	{
		randomtask =
		{
			{100,100,{3212, 3213}},
		},
		task = {s_taskRandomTask, {60007}},
	},
}


-- 物理职业
RoleTaskInfo3212 =
{
	parent = 3072,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfessionPhysical,{}},
		},
		onaccept =
		{
			{s_actionAddBuff,{10205,55,60,0}},
			{s_actionSysInfo,{"赤灵狐给你加持了加速祝福，你觉得自己的奔跑速度能飞了！",0}}
		},
	},
}

-- 魔法职业
RoleTaskInfo3213 =
{
	parent = 3072,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfessionMagic,{}},
		},
		onaccept =
		{
			{s_actionAddBuff,{10205,55,60,0}},
			{s_actionSysInfo,{"赤灵狐给你加持了加速祝福，你觉得自己的奔跑速度能飞了！",0}}
		},
	},
}
