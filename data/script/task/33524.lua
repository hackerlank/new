--异国征战
RoleTaskInfo33524 =
{
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	taskID = 33524,

	--怪物
	monster =   --minlevel,maxlevel,npcid,num,param
	{
		{41,    45,  10144},   --恶鬼刀客
		{46,    50,  10146},   --双刀鬼卒
		{51,    55,  10145},   --大漠荒熊
		{56,    60,  10143},   --噬魂恶鬼
		{61,    65,  10147},   --鬼剑士
		{66,    70,  10185},   --钢齿鹰龙
		{71,    75,  10186},   --塔克族战士
		{76,    80,  10187},   --暗影毒蜂
		{81,    85,  10188},   --魔族邪豹
		{86,    90,  10189},   --条顿魔将
		{91,    95,  10190},   --贪婪异狼
		{96,    100,  10191},   --塞拉匹斯
		{101,   105,  10193},   --黑皇后蜘蛛
		{106,   110,  10194},   --塔克族战士
		{111,   115,  10195},   --暗影毒蜂
		{116,   120,  10196},   --魔族邪豹
		{121,   125,  10197},   --条顿魔将
		{126,   130,  10198},   --贪婪异狼
		{131,   135,  10199},   --塞拉匹斯
		{136,   140,  10200},   --黑皇后蜘蛛
		{141,   145,  10298},   --塞拉匹斯
		{146,   150,  10299},   --黑皇后蜘蛛
	},
}

function RoleTaskInfo33524:checkAccept(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo33524:AddTask(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process == TaskProcess_None then
		if AddRoleSubTask(uid,33524,1,300,0) ~= VALUE_OK then
			return VALUE_FAIL
		end
	end
	local desc = GetSubTaskDescText(uid,self.taskID,1)
	s_setTaskValue(uid,33524,TaskValue_Desc,desc,1)
	return VALUE_OK
end

function RoleTaskInfo33524:AddRoleTaskOperate(uid,npcid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		return
	end
	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if homeland == curcountry then
		return
	end
	local user_level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	for i=1,table.getn(self.monster) do
		if self.monster[i][3] == npcid then
			if user_level > self.monster[i][2] then
				return
			end
		end
	end

	AddRoleTaskOperate(uid,self.taskID)
end

--是否显示交付任务
function RoleTaskInfo33524:checkFinish(uid)
	local process = s_getTaskValue(uid,33524,TaskValue_Process)
	if process == TaskProcess_None or process == nil then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--显示完成任务对话
function RoleTaskInfo33524:ShowFinish(uid)
	local process = s_getTaskValue(uid,33524,TaskValue_Process)
	if process == TaskProcess_Doing then
		local msg = [[快去完成任务吧]]
		ShowNpcMenuBottomStyle(uid,msg,"离开(3)")
		return
	end
	local msg = GetSubTaskFinishText(uid,33524,1)
	local call = "RoleTaskInfo33524:FinishTask($1)"
	ShowNpcMenuBottomStyle(uid,msg,"完成(3)",call,"离开(3)")
end

function RoleTaskInfo33524:FinishTask(uid)
	s_addMoney(uid,MoneyType_Money,150,"完成委托任务，交还押金")
	s_addMoney(uid,MoneyType_Money,300,"完成委托任务，任务奖励")
	local user_level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	s_refreshExp(uid,math.floor((50+0.1*user_level^2.2)*90),ExpType_OptionalTask,33524)
	FinishRoleTask(uid,33524)
	s_finishDeputeTask(uid,3,1)
end

function RoleTaskInfo33524:OnDeleteTask(uid)
	s_finishDeputeTask(uid,3,0)
end

AppendMenuToNpc(354,"异国征战(2)","RoleTaskInfo33524:ShowFinish($1)","RoleTaskInfo33524:checkFinish($1)")

function RoleTaskInfo33524:RegisterMonsterEvent()
	for i,v in ipairs(self.monster) do
		local npcid = v[3]
		local callback = string.format("RoleTaskInfo33524:AddRoleTaskOperate($1,%u)",npcid)
		RegisterNpcDeadEvent(npcid,callback)
	end
end
RoleTaskInfo33524:RegisterMonsterEvent()
