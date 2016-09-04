RoleTaskInfo30331 =
{
	subtasknum = 1,
	subtask1 =
	{
		onfinish =
		{
			{s_actionSexAddItem,{31536,31537,1,0,"1-1", "七夕30331任务道具"}},
		},
	},
}

RoleTaskInfo30333 =
{
	subtasknum = 1,
	subtask1 =
	{
	},
}

function RoleTaskInfo30333:GetTaskExp(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 15 * (50 + 0.1*level^2.2)
	return math.floor(exp)
end

RoleTaskInfo30334 =
{
	subtasknum = 1,
	subtask1 =
	{
	},
}

function RoleTaskInfo30334:GetTaskExp(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 15 * (50 + 0.1*level^2.2)
	return math.floor(exp)
end
