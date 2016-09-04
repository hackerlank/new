RoleTaskInfo30047 =
{
	ring = 2,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleLevel,{41,150}},
			{s_checkTeamSize,{2,2}},
			{s_checkLoverOrSpouseInTeam,{15, "<p><n>需男女2人组队，才可接取小幸福任务！</n><book bookid='70017' text='[婚恋任务]'/></p>"}},
		},

		task = {s_taskCustom,{199,203,1,0}},

		onfinish =
		{
			{s_actionAddCloseDegreeOfLoverOrSpouse,{5}},
			{s_actionPlaySfxByBuff,{5009}},
		},
	},
}


function RoleTaskInfo30047:GetTaskIntroText(uid)
	local msg =
		[[
title()
body(
blankline()   可在goto(199,156)处接取（爱情）小幸福任务。
blankline()   完成任务后，可增加恋人双方好友度5点。
)
]]
	return parseToDesc(msg)
end

