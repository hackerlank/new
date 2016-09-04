RoleTaskInfo30048 =
{
	ring = 2,
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkRoleLevel,{41,150}},
			{s_checkTeamSize,{2,2}},
			{s_checkLoverOrSpouseInTeam,{15, "<p><n>需男女2人组队，才可接取小甜蜜任务！</n><book bookid='70017' text='[婚恋任务]'/></p>"}},
		},

		task = {s_taskCustom,{199,204,1,0}},

		onfinish =
		{
			{s_actionAddCloseDegreeOfLoverOrSpouse,{5}},
			{s_actionPlaySfxByBuff,{5010}},
		},
	},
}


function RoleTaskInfo30048:GetTaskIntroText(uid)
	local msg =
		[[
title()
body(
blankline()   可在goto(199,156)处接取（爱情）小甜蜜任务。
blankline()   完成任务后，可增加恋人（夫妻）双方好友度5点。
)
]]
	return parseToDesc(msg)
end

