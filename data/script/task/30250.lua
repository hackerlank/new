--远征
RoleTaskInfo30250 =
{
	ring = 2,
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	--通行证经验倍率
	pass_rates = {1.2,	1.4,	1.6,	1.8,	1},

	--怪物
	monster =	--minlevel,maxlevel,npcid,num,param
	{
		{41,	45,  10144,		200,	250},	--恶鬼刀客
		{46,	50,  10146,		200,	250},	--双刀鬼卒
		{51,	55,  10145,		250,	300},	--大漠荒熊
		{56,	60,  10143,		250,	300},	--噬魂恶鬼
		{61,	65,  10147,		300,	350},	--鬼剑士
		{66,	70,  10185,		300,	350},	--钢齿鹰龙
		{71,	75,  10186,		300,	400},	--塔克族战士
		{76,	80,  10187,		300,	400},	--暗影毒蜂
		{81,	85,  10188,		300,	450},	--魔族邪豹
		{86,	90,  10189,		300,	450},	--条顿魔将
		{91,	95,  10190,		300,	500},	--贪婪异狼
		{96,	100,  10191,	300,	500},	--塞拉匹斯
		{101,	105,  10193,	300,	550},	--黑皇后蜘蛛
		{106,	110,  10194,	300,	550},	--塔克族战士
		{111,	115,  10195,	300,	600},	--暗影毒蜂
		{116,	120,  10196,	300,	600},	--魔族邪豹
		{121,	125,  10197,	300,	650},	--条顿魔将
		{126,	130,  10198,	300,	650},	--贪婪异狼
		{131,	135,  10199,	300,	700},	--塞拉匹斯
		{136,	140,  10200,	300,	700},	--黑皇后蜘蛛
		{141,	145,  10298,	300,	750},	--塞拉匹斯
		{146,	150,  10299,	300,	750},	--黑皇后蜘蛛
	},
}

--////////////////////////////////////////////
--任务变量意义
--11 目标国家
--12 通行证颜色
--13 接取任务时是否国家发布时间
--14 怪物ID
--玩家变量
--200 通行证ID
--////////////////////////////////////////////

function RoleTaskInfo30250:GetMonster(uid)
	local var = s_getTaskVar(uid,30250,14)
	if var > 0 then
		local number = s_getTaskVar(uid,30250,15)
		local param = s_getTaskVar(uid,30250,16)
		return var,number,param
	end
	local monster = 10144
	local number = 250
	local param = 160
	local level =  s_getTaskVar(uid,30250,10)
	if level == 0 then
		level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	end
	for i,v in ipairs(self.monster) do
		if level >= v[1] and level <= v[2] then
			monster = v[3]
			number = v[4]
			param = v[5]
		end
	end
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local countrystate = s_getCountryState(homeland)
	if countrystate == CountryStateWeak then
		number = math.floor(number*0.7)
	end
	s_addTaskVar(uid,30250,14,monster)
	s_addTaskVar(uid,30250,15,number)
	s_addTaskVar(uid,30250,16,param)
	return monster,number,param
end

function RoleTaskInfo30250:GetTaskIntroText(uid)
	local msg =
		[[
		title(远征)
		body(
		blankline()   去国外杀死一定数量的指定的怪物。
		blankline()   每天可完成1次，hot(周五完成可获得双倍经验奖励)。周五完成任务所获得的数字，将在周六抽奖时使用。
		blankline()   exp(大量)
		)
	]]
	return parseToDesc(msg)
end

--任务描述
function RoleTaskInfo30250:GetSubTaskDescText(uid,taskid,subtaskid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local text = [[<p>
		<n></n>
		</p>
		]]	
	if level <=100 then
		text =(
			[[
		<p>
		<newline/>
		<n font="3" color="GXColorYellow">[赏金]远征</n>
		<newline/>
		<image pack="INTERFACE_PACK" infoname="INTERFACE_40_4_P"/>
		<newline/>
		<n font="3" color="GXColorYellow">任务进程：</n>
		<newline/>
		<n>    去xx的</n><n color='GXColorGreen'>遗忘沙漠</n><n>消灭指定数量</n><goto id="88888" mapid="77777" flagpoint="1" taskid="30026"/>
		<newline/>
		<n>    出国可以在</n><goto id="126" mapid="7" flagpoint="1" taskid="30026"/><n>处进行跳转。</n>
		<newline/>
		<n>    完成任务后，告知</n><goto id="197" mapid="7" flagpoint="1" taskid="30026"/>
		<newline/>
		<image pack="INTERFACE_PACK" infoname="INTERFACE_40_4_P"/>
		<newline/>
		<n font="3" color="GXColorYellow">任务描述：</n>
		<newline/>
		<n>    国外危险，推荐使用团魔甲出国可保证相对安全。</n>
		</p>]]
			)
	else
		text =(
			[[
		<p>
		<newline/>
		<n font="3" color="GXColorYellow">[赏金]远征</n>
		<newline/>
		<image pack="INTERFACE_PACK" infoname="INTERFACE_40_4_P"/>
		<newline/>
		<n font="3" color="GXColorYellow">任务进程：</n>
		<newline/>
		<n>    去中立区帝都的</n><n color='GXColorGreen'>遗忘星空</n><n>消灭指定数量</n><goto id="88888" mapid="13" flagpoint="1" taskid="30026"/>
		<newline/>
		<n>    遗忘星空可通过</n><goto id="335" mapid="13" flagpoint="1" taskid="30026"/><n>处进行跳转。</n>
		<newline/>
		<n>    完成任务后，告知</n><goto id="197" mapid="7" flagpoint="1" taskid="30026"/>
		<newline/>
		<image pack="INTERFACE_PACK" infoname="INTERFACE_40_4_P"/>
		<newline/>
		<n font="3" color="GXColorYellow">任务描述：</n>
		<newline/>
		<n>    国外危险，推荐使用团魔甲出国可保证相对安全。</n>
		</p>]]
			)
	end
	--[[local subinfo = GetSubTaskInfo(taskid, subtaskid)
	if subinfo ~= nil and subinfo.desctext ~= "" then
	text = subinfo.desctext
	end
	if text == nil or text == "" then return end
	]]--
	local countryid = s_getTaskVar(uid,30250,11)
	if countryid ~= nil and countryid ~= 0 then
		local name = s_getCountryName(countryid)
		text = string.gsub(text,"xx",name)
	end
	local monster,number,param = RoleTaskInfo30250:GetMonster(uid)
	text = string.gsub(text,"77777",number)
	text = string.gsub(text,"88888",monster)
	s_setTaskValue(uid,30250,TaskValue_State,number)
	return text
end

--任务追踪
function RoleTaskInfo30250:GetTaskTraceText(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local msg = [[<p>
		<n></n>
		</p>
		]]	
	if level <=100 then
		msg = [[<p>
		<n>  目标国家：$1</n>
		<newline/>
		<n> 跳转NPC：</n>
		<n> </n><goto id="126" mapid="7" flagpoint="1" />
		<newline/>
		<n> 消灭：</n>
		<n> </n><goto id="$2" mapid="7" flagpoint="1" />
		</p>
		]]
	else
		msg = [[<p>
		<n>  目标：中立区</n>
		<newline/>
		<n> 跳转NPC：</n>
		<n> </n><goto id="335" mapid="8" flagpoint="1" />
		<newline/>
		<n> 消灭：</n>
		<n> </n><goto id="$2" mapid="184" flagpoint="1" />
		</p>
		]]	
	end
	local countryid = s_getTaskVar(uid,30250,11)
	local name = s_getCountryName(countryid)
	if name == nil then name = "" end
	local monster,number,param = RoleTaskInfo30250:GetMonster(uid)
	msg = FormatString(msg,name,monster)
	return msg
end

--检查是否可以接受任务
function RoleTaskInfo30250:CheckAccept(uid)
	local process = s_getTaskValue(uid,30026,TaskValue_Process)
	if process ~= TaskProcess_None  then
		return VALUE_FAIL
	end
	local process = s_getTaskValue(uid,30250,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local minLevel = s_getTaskValue(uid,30250,TaskValue_MinLevel)
	local maxLevel = s_getTaskValue(uid,30250,TaskValue_MaxLevel)
	if minLevel ~= nil and minLevel > level then
		return VALUE_FAIL
	end
	if maxLevel ~= nil  and maxLevel < level then
		return VALUE_FAIL
	end
	if CheckRoundAndRing(uid, 30250) == VALUE_FAIL then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--接受任务对话
function RoleTaskInfo30250:ShowAccept(uid)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local country = GetQBTaskTargetCountry(homeland)
	local call = "RoleTaskInfo30250:AddTask($1,"..country ..")"
	local msg = GetSubTaskAcceptText(uid,30250,1)
	ShowNpcMenuBottomStyle(uid,msg,"确定(3)",call,"离开(3)")
end

function RoleTaskInfo30250:OnAcceptTask(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	s_addTaskVar(uid,30250,10,level)

	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local countryid = s_getCountryVar(homeland,1,15)
	s_addTaskVar(uid,30250,11,countryid)

	local monster,number,param = RoleTaskInfo30250:GetMonster(uid)
	s_setTaskValue(uid,30250,TaskValue_State,number)

	--s_addTaskVar(uid,30250,MvarIndex_Prestige,50)
end


--接受任务
function RoleTaskInfo30250:AddTask(uid,countryid)
	AddRoleSubTask(uid,30250,1,100,0)
end

--是否显示交付任务
function RoleTaskInfo30250:CheckFinish(uid,minlevel,maxlevel)
	local process = s_getTaskValue(uid,30250,TaskValue_Process)
	if process == TaskProcess_None or process == nil then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--显示完成任务对话
function RoleTaskInfo30250:ShowFinish(uid)
	local process = s_getTaskValue(uid,30250,TaskValue_Process)
	if process == TaskProcess_Doing then
		local msg = [[快去完成远征吧]]
		ShowNpcMenuBottomStyle(uid,msg,"离开(3)")
		return
	end
	local msg = GetSubTaskFinishText(uid,30250,1)
	local call = "RoleTaskInfo30250:FinishTask($1)"
	ShowNpcMenuBottomStyle(uid,msg,"完成(3)",call,"离开(3)")
end

--交付任务
function RoleTaskInfo30250:FinishTask(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 61 then
		s_addItem(uid,31385,0,1,0,"","RoleTaskInfo30250:FinishTask")
	elseif  level >= 61 and level < 71 then
		s_addItem(uid,31386,0,1,0,"","RoleTaskInfo30250:FinishTask")
	elseif  level >= 71 and level < 81 then
		s_addItem(uid,31387,0,1,0,"","RoleTaskInfo30250:FinishTask")
	elseif  level >= 81 and level < 91 then
		s_addItem(uid,31388,0,1,0,"","RoleTaskInfo30250:FinishTask")
	elseif  level >= 91 and level < 101 then
		s_addItem(uid,31389,0,1,0,"","RoleTaskInfo30250:FinishTask")
	elseif  level >= 101 and level < 111 then
		s_addItem(uid,31560,0,1,0,"","RoleTaskInfo30250:FinishTask")
	elseif  level >= 111 and level < 121 then
		s_addItem(uid,31561,0,1,0,"","RoleTaskInfo30250:FinishTask")
	elseif  level >= 121 and level < 131 then
		s_addItem(uid,31562,0,1,0,"","RoleTaskInfo30250:FinishTask")
	elseif  level >= 131 and level < 141 then
		s_addItem(uid,31563,0,1,0,"","RoleTaskInfo30250:FinishTask")
	elseif  level >= 141 and level < 151 then
		s_addItem(uid,31564,0,1,0,"","RoleTaskInfo30250:FinishTask")
	end

	FinishRoleTask(uid,30250)
	s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_ALL_PRESTIGE,30)
end


--NPC菜单
AppendMenuToNpc(197,"制作远征卷轴(2)","RoleTaskInfo30250:ShowAccept($1)","RoleTaskInfo30250:CheckAccept($1)")
AppendMenuToNpc(197,"制作远征卷轴[完成](2)","RoleTaskInfo30250:ShowFinish($1)","RoleTaskInfo30250:CheckFinish($1)")

--怪物死亡注册
function RoleTaskInfo30250:AddOperate(uid,npcid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local process = s_getTaskValue(uid,30250,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		return
	end
	local monster,number,param = RoleTaskInfo30250:GetMonster(uid)
	local uplevel = 0;local target = 0;
	for i,v in ipairs(self.monster) do
		if v[3] == monster then
			uplevel = 1
		end
		if uplevel == 1 and npcid == v[3] then
			target = 1
		end
	end
	if target == 0 then
		return
	end
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	local tar_country = s_getTaskVar(uid,30250,11)
	if level <= 100 then
		if country ~= tar_country then
			return
		end
	end
	AddRoleTaskOperate(uid,30250)
end
function RoleTaskInfo30250:RegisterMonsterEvent()
	for i,v in ipairs(self.monster) do
		local npcid = v[3]
		local callback = string.format("RoleTaskInfo30250:AddOperate($1,%u)",npcid)
		RegisterNpcDeadEvent(npcid,callback)
	end
end
RoleTaskInfo30250:RegisterMonsterEvent()

