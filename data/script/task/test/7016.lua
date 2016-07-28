RoleTaskInfo7016 =
{
	subtasknum = 1,
	subtask1 =
	{
		randomtask =
		{
			{100,100,{8011, 8012}},
		},
		task = {s_taskRandomTask, {63078}},
	},
}


-- 物理职业
RoleTaskInfo8011 =
{
	parent = 7016,
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
RoleTaskInfo8012 =
{
	parent = 7016,
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
