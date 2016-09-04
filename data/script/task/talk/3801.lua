RoleTaskInfo3801 =
{
	subtasknum = 1,
	subtask1 =
	{
		onaccept =
		{
		--{s_actionChangeRide,{50003, 60*5}},
		},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{31065,1,"RoleTaskInfo3031"}},
			{s_actionChangeRide,{0, 0}},
		},
	},
}

