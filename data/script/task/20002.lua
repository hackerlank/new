RoleTaskInfo20002 =
{
	ring = 1,

	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkCorps,{}},
			{s_checkInOwnCorpsBase,{}},
			{s_checkRoleLevel,{20,0}},
			{s_checkCorpsEventStep,{CpEv_JunXun,EventStep_Run}},
		},

		task = {s_taskCustom, {45111, 0, 1, 0}},
	},
}


--任务简介
function RoleTaskInfo20002:GetTaskIntroText(uid)
	local msg = [[title(团突袭任务)body(blankline()   团突袭任务由hot(团长)花费一定hot(团资金)后发布,时间限制hot(1小时)。blankline()   团突袭任务的目标:破坏敌对团的基地设施，争夺对方团资源。blankline()exp(大量)offer(大量))]]
	return parseToDesc(msg)
end

--任务追踪
function RoleTaskInfo20002:GetTaskTraceText(uid)
	local msg = [[<p><n>破坏:目标团的hot(%s)</n></p>]]
	local corps = s_getCorpsId(uid)
	local dstnpc = s_getCorpsVar(corps,1,21)
	if dstnpc == nil or dstnpc == 0 then
		dstnpc = math.random(1,3)
	end
	local npcids = {"指挥所","军营","后勤部"}
	if dstnpc == nil or dstnpc > 3 then
		dstnpc = 1
	end
	return parseToDesc(string.format(msg,npcids[dstnpc]))
end

--任务描述
function RoleTaskInfo20002:GetSubTaskDescText(uid, taskid, subtaskid)
	--脚本中或者表格中定义
	local text = nil
	local subinfo = GetSubTaskInfo(taskid, subtaskid)
	if subinfo ~= nil and subinfo.desctext ~= "" then
		text = subinfo.desctext
	end

	if text == nil or text == "" then return end

	local corps = s_getCorpsId(uid)
	local dstnpc = s_getCorpsVar(corps,1,21)
	if dstnpc == 0 or dstnpc == nil then
		dstnpc = math.random(1,3)
	end
	local npcids = {"指挥所","军营","后勤部"}
	if dstnpc == nil or dstnpc > 3 then
		dstnpc = 1
	end
	text = string.gsub(text, "$NPCINFO", parseToDesc("hot(" .. npcids[dstnpc] .. ")"))
	return text
end


