RoleTaskInfo3001 =
{
	subtasknum = 1,
	subtask1 =
	{
		onaccept =
		{
			{s_taskplay,{100}, },
		},
	},
}



--[[
RoleTaskInfo3001 = 
{
	subtasknum = 1,
	subtask1 = 
	{
		onacceptcheck = 
		{
			--{s_checkRoleSex,{2}},
			--{s_checkVigorPoint,{10,0}},
			--{s_checkIntoCopy,{}},
			--{s_checkWeekDays,{0,1,2}},
			--{s_checkYearMonthDay,{{2012,{7,{10,13}},{8,{10,13}}}, {2013,{1,{10,13}},{2,{10,13}}},},},
			--{s_checkOfflineDay,{1,0}},
			--{s_checkLevelDiff,{0,10}},
			--{s_checkPowerOrder,{1,50}},
			{s_checkRandom,{80,100}},
		},
		onacceptcheck1 = 
		{
			--{s_checkIntoCopy,{}},
			--{s_checkTeamSize,{2,2,"必须两人组队"}},
			--{s_checkOppositeSexInTeam,{}},
			{s_checkRoleVar,{1,100,0,1}},
		},
		onaccept = 
		{
			--{s_actionCarrige,{}},
			{s_actionSetVar,{1,100,10}},
			{s_actionAddVar,{1,100,10}},
			{s_actionSubVar,{1,100,10}},
		},
		onfinish = 
		{
			--{s_actionRandomAction,{ 80, 100, { {s_actionAddItem,{31186, 0, 1,0, "1-1", "RoleTaskInfo3591_1"}}, {s_actionAddItem,{31187, 0, 1,0, "1-1", "RoleTaskInfo1584_1"}}, } }, },
			{s_actionMail,{"恭喜您获得血战到底第一名奖励：羽灵*12！",0,27125,12,"1-1"}},
			{s_actionMailToTeam,{0,"恭喜您获得血战到底第一名奖励：羽灵*6！",0,27125,6,"1-1"}},
		}
	},
}
]]
