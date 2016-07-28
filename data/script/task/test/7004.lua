RoleTaskInfo7004 =
{
	subtasknum = 1,
	subtask1 =
	{
		randomtask =
		{
			{100,100,{8005, 8006}},
		},
		task = {s_taskRandomTask, {63079}},
	},
}


-- 物理职业
RoleTaskInfo8005 =
{
	parent = 7004,
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
RoleTaskInfo8006 =
{
	parent = 7004,
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
