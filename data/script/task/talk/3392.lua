RoleTaskInfo3392 =
{
	subtasknum = 1,
	subtask1 =
	{
		randomtask =
		{
			{100,100,{3393, 3394}},
		},
		task = {s_taskRandomTask, {60035}},
	},
}


-- 物理职业
RoleTaskInfo3393 =
{
	parent = 3392,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfessionPhysical,{}},
		},
		onaccept =
		{

		},
	},
}

-- 魔法职业
RoleTaskInfo3394 =
{
	parent = 3392,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfessionMagic,{}},
		},
		onaccept =
		{

		},
	},
}
