--	Profession_Soldier      = 1,			//--战士
--	Profession_Spy          = 2,			//--盗贼
--	Profession_Gunman       = 3,			//--枪手
--	Profession_Blast        = 4,			//--魔炮
--	Profession_Freeman      = 5,			//--法师
--	Profession_Doctor       = 6,			//--牧师

--总任务
RoleTaskInfo4463 =
{

	subtasknum = 1,
	subtask1 =
	{
		randomtask =
		{
			{100,100,{4464, 4465, 4466, 4467}},
		},
		task = {s_taskRandomTask, {60000}},
	},
}

--战士
RoleTaskInfo4464 =
{
	parent = 4463,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfession, {1}},
		},
		onfinish =
		{
			{s_actionAddItem,{53200, 0, 1,1, "1-1", "RoleTaskInfo4464"}},
			{s_actionOpenGuide,{4464}},

		},
	},

}

--盗贼
RoleTaskInfo4465 =
{
	parent = 4463,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfession, {2}},
		},
		onfinish =
		{
			{s_actionAddItem,{53202, 0, 1,1, "1-1", "RoleTaskInfo4464"}},
			{s_actionOpenGuide,{4465}},

		},
	},

}


--法师
RoleTaskInfo4466 =
{
	parent = 4463,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfession, {5}},
		},
		onfinish =
		{
			{s_actionAddItem,{53201, 0, 1,1, "1-1", "RoleTaskInfo4464"}},
			{s_actionOpenGuide,{4466}},

		},
	},

}


--牧师
RoleTaskInfo4467 =
{
	parent = 4463,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleProfession, {6}},
		},
		onfinish =
		{
			{s_actionAddItem,{53203, 0, 1,1, "1-1", "RoleTaskInfo4464"}},
			{s_actionOpenGuide,{4467}},

		},
	},

}
