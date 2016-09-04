RoleTaskInfo3381 =
{
	subtasknum = 1,
	subtask1 =
	{
		randomtask =
		{
			{100,100,{3542, 3543}},
		},
		task = {s_taskRandomTask, {60034}},
	},
}

-- 物理职业
RoleTaskInfo3542 =
{
	parent = 3381,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfessionPhysical,{}},
		},
		onaccept =
		{
			{s_actionChangeRide,{52030, 60*5}},
		},
		onfinish =
		{
			{s_actionChangeRide,{0, 0}},
		},
	},
}

-- 魔法职业
RoleTaskInfo3543 =
{
	parent = 3381,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfessionMagic,{}},
		},
		onaccept =
		{
			{s_actionChangeRide,{52030, 60*5}},
		},
		onfinish =
		{
			{s_actionChangeRide,{0, 0}},
		},
	},
}
