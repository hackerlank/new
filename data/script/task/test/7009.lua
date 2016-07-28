RoleTaskInfo7009 =
{
	subtasknum = 1,
	subtask1 =
	{
		randomtask =
		{
			{100,100,{8009, 8010}},
		},
		task = {s_taskRandomTask, {63077}},
	},
}


-- 物理职业
RoleTaskInfo8009 =
{
	parent = 7009,
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
RoleTaskInfo8010 =
{
	parent = 7009,
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
