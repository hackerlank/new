RoleTaskInfo7006 =
{
	subtasknum = 1,
	subtask1 =
	{
		randomtask =
		{
			{100,100,{8007, 8008}},
		},
		task = {s_taskRandomTask, {63080}},
	},
}


-- 物理职业
RoleTaskInfo8007 =
{
	parent = 7006,
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
RoleTaskInfo8008 =
{
	parent = 7006,
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
