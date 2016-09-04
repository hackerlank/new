--近卫军远征
RoleTaskInfo21000 =
{
	ring = 1,
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	--怪物
	monster =
	{
		{41,	45,  10144},	--恶鬼刀客
		{46,	50,  10146},	--双刀鬼卒
		{51,	55,  10145},	--大漠荒熊
		{56,	60,  10143},	--噬魂恶鬼
		{61,	65,  10147},	--鬼剑士
		{66,	70,  10185},	--钢齿鹰龙
		{71,	75,  10186},	--塔克族战士
		{76,	80,  10187},	--暗影毒蜂
		{81,	85,  10188},	--魔族邪豹
		{86,	90,  10189},	--条顿魔将
		{91,	95,  10190},	--贪婪异狼
		{96,	100,  10191},	--塞拉匹斯
		{101,	105,  10192},	--黑皇后蜘蛛
	},
}

function RoleTaskInfo21000:GetTaskExp(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 100 * (50 + 0.1*level^2.2)
	return math.floor(exp)
end

function RoleTaskInfo21000:GetMonster(uid)
	local var = s_getTaskVar(uid,21000,14)
	if var > 0 then
		return var
	end
	local monster = 10147
	local level =  s_getTaskVar(uid,21000,10)
	if level == 0 then
		level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
		s_addTaskVar(uid,21000,10,level)
	end
	for i,v in ipairs(self.monster) do
		if level >= v[1] and level <= v[2] then
			monster = v[3]
		end
	end
	s_addTaskVar(uid,21000,14,monster)
	return monster
end

--任务描述
function RoleTaskInfo21000:GetSubTaskDescText(uid,taskid,subtaskid)
	local text = nil
	local subinfo = GetSubTaskInfo(taskid, subtaskid)
	if subinfo ~= nil and subinfo.desctext ~= "" then
		text = subinfo.desctext
	end
	if text == nil or text == "" then return end
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	if country ~= 0 then
		local name = s_getCountryName(country)
		text = string.gsub(text,"xx",name)
	end
	local monster = RoleTaskInfo21000:GetMonster(uid)
	text = string.gsub(text,"77777","7")
	text = string.gsub(text,"88888",monster)
	return text
end

--任务追踪
function RoleTaskInfo21000:GetTaskTraceText(uid)
	local msg = [[<p>
     <n>  本国怪物：</n>
      <n> </n><goto id="%u" mapid="7" flagpoint="1" />
      </p>
      ]]
	local monster = RoleTaskInfo21000:GetMonster(uid)
	msg = string.format(msg,monster)
	return msg
end

function RoleTaskInfo21000:AcceptMenuCheck(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 41 then
		return VALUE_FAIL
	end
	local process = s_getTaskValue(uid,21000,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	if CheckRoundAndRing(uid, 21000) == VALUE_FAIL then
		return VALUE_FAIL
	end
	local corps = s_getCorpsId(uid)
	if corps == 0 then
		return VALUE_FAIL
	end
	local occupy = s_getCorpsField(corps,CorpVar_OccupyID)
	if occupy  == 0 or occupy == nil then
		return VALUE_FAIL
	end
	return VALUE_OK
end
--接受任务对话
function RoleTaskInfo21000:ShowAccept(uid)
	local msg = GetSubTaskAcceptText(uid,21000,1)
	local call = "RoleTaskInfo21000:AddRoleTask($1)"
	ShowNpcMenuBottomStyle(uid,msg,"确定(3)",call,"离开(3)")
end
function RoleTaskInfo21000:AddRoleTask(uid)
	AddRoleSubTask(uid,21000,1,300,0)
end
--是否显示交付任务
function RoleTaskInfo21000:CheckFinish(uid,minlevel,maxlevel)
	local process = s_getTaskValue(uid,21000,TaskValue_Process)
	if process == TaskProcess_None or process == nil then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--显示任务描述
function RoleTaskInfo21000:GetTaskIntroText(uid)
	local msg = [[title(近卫远征)body(blankline()   去本国的远征区域杀死一定数量的指定怪物。blankline()   拥有团称号的团成员每天可完成1次。blankline()   完成后可获得hot(经验)。blankline()    exp(大量))]]
	return parseToDesc(msg)
end

--显示完成任务对话
function RoleTaskInfo21000:ShowFinish(uid)
	local process = s_getTaskValue(uid,21000,TaskValue_Process)
	if process == TaskProcess_Doing then
		local msg = [[快去完成远征吧]]
		ShowNpcMenuBottomStyle(uid,msg,"离开(3)")
		return
	end
	local msg = GetSubTaskFinishText(uid,21000,1)
	local call = "RoleTaskInfo21000:FinishTask($1)"
	ShowNpcMenuBottomStyle(uid,msg,"完成(3)",call,"离开(3)")
end

--交付任务
function RoleTaskInfo21000:FinishTask(uid)
	FinishRoleTask(uid,21000)
end
function RoleTaskInfo21000:AddRoleTaskOperate(uid,level)
	local lv = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if math.abs(lv - level) <= 5 then
		AddRoleTaskOperate(uid,21000)
	end
end
--怪物死亡注册
function RoleTaskInfo21000:AddOperate(uid,npcid)
	local process = s_getTaskValue(uid,21000,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		return
	end
	local monster = RoleTaskInfo21000:GetMonster(uid)
	if monster ~= npcid then
		return
	end
	--判断国家
	local home = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	if home ~= curcountry then
		return
	end

	AddRoleTaskOperate(uid,21000)
end
function RoleTaskInfo21000:RegisterMonsterEvent()
	for i,v in ipairs(self.monster) do
		local npcid = v[3]
		local callback = string.format("RoleTaskInfo21000:AddOperate($1,%u)",npcid)
		RegisterNpcDeadEvent(npcid,callback)
	end
end
RoleTaskInfo21000:RegisterMonsterEvent()

--AppendMenuToNpc(134,"近卫远征(2)","RoleTaskInfo21000:ShowAccept($1)","RoleTaskInfo21000:AcceptMenuCheck($1)")
AppendMenuToNpc(134,"近卫远征(2)","RoleTaskInfo21000:ShowFinish($1)","RoleTaskInfo21000:CheckFinish($1)")
