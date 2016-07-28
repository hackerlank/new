RoleTaskInfo3241 =
{
	subtasknum = 1,
	subtask1 =
	{
		randomtask =
		{
			{100,100,{3512, 3513}},
		},
		task = {s_taskRandomTask, {60045}},
	},
}

-- 物理职业
RoleTaskInfo3512 =
{
	parent = 3241,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfessionPhysical,{}},
		},
		onaccept =
		{
			{s_actionChangeRide,{52023, 60*5}},
		},
		onfinish =
		{
			{s_actionChangeRide,{0, 0}},
		},
	},
}

-- 魔法职业
RoleTaskInfo3513 =
{
	parent = 3241,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfessionMagic,{}},
		},
		onaccept =
		{
			{s_actionChangeRide,{52023, 60*5}},
		},
		onfinish =
		{
			{s_actionChangeRide,{0, 0}},
		},
	},
}
