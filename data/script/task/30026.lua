--远征
RoleTaskInfo30026 =
{
	ring = 1,
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
		{41,	45,  15600,		5,	250},	--恶鬼刀客
		{46,	50,  15603,		5,	250},	--双刀鬼卒
		{51,	55,  15600,		5,	300},	--大漠荒熊
		{56,	60,  15603,		5,	300},	--噬魂恶鬼
		{61,	65,  15600,		5,	350},	--鬼剑士
		{66,	70,  15603,		5,	350},	--钢齿鹰龙
		{71,	75,  15600,		5,	400},	--塔克族战士
		{76,	80,  15603,		5,	400},	--暗影毒蜂
		{81,	85,  15600,		5,	450},	--魔族邪豹
		{86,	90,  15603,		5,	450},	--条顿魔将
		{91,	95,  15600,		5,	500},	--贪婪异狼
		{96,	100,  15603,	5,	500},	--塞拉匹斯
		{101,	105,  15600,	5,	550},	--黑皇后蜘蛛
		{106,	110,  15603,	5,	550},	--塔克族战士
		{111,	115,  15600,	5,	600},	--暗影毒蜂
		{116,	120,  15603,	5,	600},	--魔族邪豹
		{121,	125,  15600,	5,	650},	--条顿魔将
		{126,	130,  15603,	5,	650},	--贪婪异狼
		{131,	135,  15600,	5,	700},	--塞拉匹斯
		{136,	140,  15603,	5,	700},	--黑皇后蜘蛛
		{141,	145,  15600,	5,	750},	--塞拉匹斯
		{146,	150,  15603,	300,	750},	--黑皇后蜘蛛
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

function RoleTaskInfo30026:GetMonster(uid)
	local var = s_getTaskVar(uid,30026,14)
	if var > 0 then
		local number = s_getTaskVar(uid,30026,15)
		local param = s_getTaskVar(uid,30026,16)
		return var,number,param
	end
	local monster = 10144
	local number = 250
	local param = 160
	local level =  s_getTaskVar(uid,30026,10)
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
	s_addTaskVar(uid,30026,14,monster)
	s_addTaskVar(uid,30026,15,number)
	s_addTaskVar(uid,30026,16,param)
	return monster,number,param
end

function RoleTaskInfo30026:GetTaskIntroText(uid)
	local msg =
		[[
		title(远征)
		body(
		blankline()   去国外杀死一定数量的指定的怪物。
		blankline()   每次接取远征任务需消耗70体力值，可获取1.5倍经验或丰厚道具奖励。
		blankline()   60级之后，接取任务消耗3倍体力值，可获取2.5倍经验。
		blankline()   每天可完成1次，hot(周五完成可获得150%经验奖励)。周五完成任务所获得的数字，将在周六抽奖时使用。
		blankline()   exp(大量)
		)
	]]
	return parseToDesc(msg)
end

--任务经验
function RoleTaskInfo30026:GetTaskBaseExp(uid)
	local monster,number,param = RoleTaskInfo30026:GetMonster(uid)
	local level =  s_getTaskVar(uid,30026,10)
	if level == 0 then
		level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	end
	local pass_color = s_getTaskVar(uid,30026,12)
	local pass = 1
	if pass_color > 0 then
		pass = self.pass_rates[pass_color]
	end
	local exp = math.floor(param * (30 + level^1.5)*pass)

	--接任务经验显示正确
	if s_getTaskValue(uid,30026,TaskValue_Process) == TaskProcess_None then
		local itemid = s_getVar(uid,30026,200)
		if itemid ~= VALUE_FAIL then
			local quality = s_getItemValue(uid,itemid,Item_Attribute_Quality)
			exp = math.floor(exp * self.pass_rates[quality+1])
		end
	end
	return exp
end

function RoleTaskInfo30026:GetTaskExp(uid)
	local exp = self:GetTaskBaseExp(uid)
	local tiledtimes = 1
	if s_getVar(uid, 30026, TvarIndex_TiledMode) == 1 then
		if s_getVar(uid, 30026, TvarIndex_TiledTimes) == 1 then tiledtimes = 1.5 end
		if s_getVar(uid, 30026, TvarIndex_TiledTimes) == 3 then tiledtimes = 2.5 end
	end
	exp = math.floor(exp * tiledtimes)
	return exp
end

--任务描述
function RoleTaskInfo30026:GetSubTaskDescText(uid,taskid,subtaskid)
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
		<n font="3" color="GXColorYellow">远征</n>
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
		<n font="3" color="GXColorYellow">远征</n>
		<newline/>
		<image pack="INTERFACE_PACK" infoname="INTERFACE_40_4_P"/>
		<newline/>
		<n font="3" color="GXColorYellow">任务进程：</n>
		<newline/>
		<n>    去中立区帝都的</n><n color='GXColorGreen'>天使禁猎区</n><n>。天使禁猎区可通过</n><goto id="335" mapid="8" flagpoint="1" taskid="30026"/><n>处跳转。</n>
		<newline/>
		<n>    消灭指定数量</n><goto id="88888" mapid="8" flagpoint="1" taskid="30026"/>
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
	local countryid = s_getTaskVar(uid,30026,11)
	if countryid ~= nil and countryid ~= 0 then
		local name = s_getCountryName(countryid)
		text = string.gsub(text,"xx",name)
	end
	local monster,number,param = RoleTaskInfo30026:GetMonster(uid)
	text = string.gsub(text,"77777",number)
	text = string.gsub(text,"88888",monster)
	return text
end

--任务追踪
function RoleTaskInfo30026:GetTaskTraceText(uid)
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
	local countryid = s_getTaskVar(uid,30026,11)
	local name = s_getCountryName(countryid)
	if name == nil then name = "" end
	local monster,number,param = RoleTaskInfo30026:GetMonster(uid)
	msg = FormatString(msg,name,monster)
	return msg
end

--检查是否可以接受任务
function RoleTaskInfo30026:CheckAccept(uid)
	local process = s_getTaskValue(uid,30250,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end

	local process = s_getTaskValue(uid,30026,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local minLevel = s_getTaskValue(uid,30026,TaskValue_MinLevel)
	local maxLevel = s_getTaskValue(uid,30026,TaskValue_MaxLevel)
	if minLevel ~= nil and minLevel > level then
		return VALUE_FAIL
	end
	if maxLevel ~= nil  and maxLevel < level then
		return VALUE_FAIL
	end
	if CheckRoundAndRing(uid, 30026) == VALUE_FAIL then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30026:CheckAcceptTiled1(uid)
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_USABLE_TILED_POINT) < 75 then
		return VALUE_FAIL
	end
	return self:CheckAccept(uid)
end

function RoleTaskInfo30026:CheckAcceptTiled3(uid)
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_USABLE_TILED_POINT) < 225 then
		return VALUE_FAIL
	end
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL) < 61 then
		return VALUE_FAIL
	end
	return self:CheckAccept(uid)
end

--接受任务对话
function RoleTaskInfo30026:ShowAccept(uid)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local country = GetQBTaskTargetCountry(homeland)
	local msg = GetSubTaskAcceptText(uid,30026,1)
	local call = "RoleTaskInfo30026:AddTask($1,"..country ..")"
	ShowNpcMenuBottomStyle(uid,msg,"确定(3)",call,"离开(3)")
end

function RoleTaskInfo30026:OnAcceptTask(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	s_addTaskVar(uid,30026,10,level)

	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local countryid = s_getCountryVar(homeland,1,15)
	s_addTaskVar(uid,30026,11,countryid)

	local monster,number,param = RoleTaskInfo30026:GetMonster(uid)
	s_setTaskValue(uid,30026,TaskValue_State,number)

	--s_addTaskVar(uid,30026,MvarIndex_Prestige,50)

	--检查是否使用通行证
	--local thisid = RoleTaskInfo30026:CheckPutPass(uid)
	local thisid = s_getVar(uid,30026,200)
	if thisid ~= VALUE_FAIL then
		local pass_color = s_getItemValue(uid,thisid,Item_Attribute_Quality)
		if s_deleteItemByThisID(uid,thisid,1,"RoleTaskInfo30026") == VALUE_OK then
			s_addTaskVar(uid,30026,12,pass_color+1)
		end
		--重新计算任务经验(通行证影响经验)
		s_addTaskVar(uid,30026,MvarIndex_Exp,0)
	end

	--国家发布时间，做标记
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local step = s_getEvent(Relation_Country,homeland,CountryEv_YuanZheng)
	if step == EventStep_Run then
		s_addTaskVar(uid,30026,13,1)
	end
end


--接受任务
function RoleTaskInfo30026:AddTask(uid,countryid)
	AddRoleSubTask(uid,30026,1,100,0)

	--扣体力
	if s_getVar(uid, 30026, TvarIndex_TiledTimes) == 1 then
		s_subValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_USABLE_TILED_POINT, 75)
	elseif s_getVar(uid, 30026, TvarIndex_TiledTimes) == 3 then
		s_subValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_USABLE_TILED_POINT, 225)
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level <= 55 then
		s_sysInfo(uid,"<n>    新手出国要小心，我先给你加个隐身状态，潜伏过去吧！</n><newline/><n color='GXColorBlueSky'>（注意，使用技能或道具会强制解除隐身）</n>",ChatPos_MsgBox)
		s_addbuff(SCENE_ENTRY_PLAYER,uid,10211,1,3*60)
	end

end

--是否显示交付任务
function RoleTaskInfo30026:CheckFinish(uid,minlevel,maxlevel)
	local process = s_getTaskValue(uid,30026,TaskValue_Process)
	if process == TaskProcess_None or process == nil then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--显示完成任务对话
function RoleTaskInfo30026:ShowFinish(uid)
	local process = s_getTaskValue(uid,30026,TaskValue_Process)
	if process == TaskProcess_Doing then
		local msg = [[快去完成远征吧]]
		ShowNpcMenuBottomStyle(uid,msg,"离开(3)")
		return
	end
	local msg = GetSubTaskFinishText(uid,30026,1)
	local call = "RoleTaskInfo30026:FinishTask($1)"
	ShowNpcMenuBottomStyle(uid,msg,"完成(3)",call,"离开(3)")
end

--避免CommonTaskReward
function RoleTaskInfo30026:TaskReward(uid, taskid, subtaskid)
end

--交付任务
function RoleTaskInfo30026:FinishTask(uid)
	s_addSevenDay(uid,6)
	local exp = GetTaskExp(uid,30026) --获得经验
	s_refreshExp(uid,exp,ExpType_OptionalTask,30026)

	exp = self:GetTaskBaseExp(uid)
	local weekday = s_getCurTime(TIME_CURWDAYS)
	if weekday == 5 then
		s_addLuckyCard(uid,5)
		local exp_extra = math.floor(exp*0.5)
		s_refreshExp(uid,exp_extra,ExpType_OptionalTask,30026)
		s_sysInfo(uid,"远征日获得额外经验加成:" ..exp)
	end

	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local worldlevel = s_getWorldLevel()
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local countrystate = s_getCountryState(homeland)
	local rate = GetWorldLevelExp(level,worldlevel,countrystate)
	local worldexp = math.floor(exp*rate*0.01)
	if worldexp ~= 0 then
		s_refreshExp(uid,worldexp,ExpType_OptionalTask,30026)
		s_sysInfo(uid,"获得人类进程及国家状态经验加成:" .. worldexp)
	end

	--国家发布时间获得额外奖励
	local step = s_getEvent(Relation_Country,homeland,CountryEv_YuanZheng)
	local step1 = s_getEvent(Relation_World,homeland,WorldEv_Time)
	if step == EventStep_Run and s_getTaskVar(uid,30026,13) == 1 then
		local extra_exp = math.floor(exp*0.50)
		s_refreshExp(uid,extra_exp,ExpType_OptionalTask,30026)
		local var = s_getCountryVar(homeland,1,8)
		s_addCountryVar(homeland,1,8,var + 1)
		s_sysInfo(uid,"国家远征时间获得额外经验奖励:"..extra_exp)
		if s_getVar(uid,130,15) == 0 then
			s_addVar(uid,130,15,1)
			s_addVar(uid,130,200,s_getVar(uid,130,200)+1)
			s_debugUser(uid,"国家活力点，国家远征，参与度：1")
		end
	elseif step ~= EventStep_Run and step1 ~= EventStep_Run then
		local specialbuff = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,31071)
		if specialbuff ~= nil and specialbuff ~= 0 then
			local extra_exp = math.floor(exp*0.5)
			s_refreshExp(uid,extra_exp,ExpType_OptionalTask,30026)
			s_sysInfo(uid,"特殊状态额外经验加成"..extra_exp)
		end
	end
	if step1 == EventStep_Run and (step ~= EventStep_Run or s_getTaskVar(uid,30026,13) ~= 1) then
		local extra_exp = math.floor(exp*0.5)
		s_refreshExp(uid,extra_exp,ExpType_OptionalTask,30026)
		s_sysInfo(uid,"系统活动时间获得额外经验奖励为"..extra_exp)
	end

	if s_getCurTime(TIME_ALLDAYS) >= 15329 and s_getCurTime(TIME_ALLDAYS) <= 15348 then
		s_addItem(uid,31265,0,1,0,"","圣诞活动")
	end
	AddRoleTaskOperate(uid,13051)

	FinishRoleTask(uid,30026)
	local process = s_getTaskValue(uid,30309,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30309)
	end

	--体力宝箱
	if s_getVar(uid, 30026, TvarIndex_TiledMode) == 2 then
		s_addItem(uid,29303,0,1,0,"1-1","RoleTaskInfo30026")
	end
	--发放获得经验的道具
	Dealtaskexpitem(uid)
	--活力点
	s_addVigorPoint(uid, 16)
	s_debugUser(uid,"完成远征，获得16点活力点")

	local medal = s_getTaskValue(uid,30026,TaskValue_ExpMedal)
	s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_EXP_MEDAL,medal)
	s_addActivePoint(uid,ActivePointType_Task,30)
	s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_ALL_PRESTIGE,30)
	--中秋活动
	--[[local month = s_getCurTime(TIME_CURMONTHS) + 1
	local mday = s_getCurTime(TIME_CURMDAYS)
	if month == 9 then
	if mday >= 29 then
	s_addItem(uid,55000,3,1,0,"1-1","国庆礼包")
	end
	elseif month == 10 then
	if mday <= 8 then
	s_addItem(uid,55000,3,1,0,"1-1","国庆礼包")
	end
	end]]--
	--s_addItem(uid,63393,3,1,0,"1-1","5元的打折卡")	 --端午打折卡活动
	--老兵回归-
	local process = s_getTaskValue(uid,16005,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,16005)
	end
	--AddRoleTaskOperate(uid,15242)

	--完成前线速递任务得“幸运大礼包”
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local rand = math.random(1,100)
	if	rand <= 40 then
		s_addItem(uid,63394,3,1,0,"1-1","幸运大礼包")
		s_sysInfo(uid,"意外获得了1个幸运大礼包，快拆开看看吧！")
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>完成日常任务时，好运降临，获得丰厚道具！</n></p>",ChatPos_Sys)
	end
end

--NPC菜单
--AppendMenuToNpc(197,"远征(2)","RoleTaskInfo30026:ShowAcceptWithPass($1)","RoleTaskInfo30026:CheckAccept($1)")
AppendMenuToNpc(197,"远征- 75体力（1.5倍经验）(2)","RoleTaskInfo30026:ShowAcceptWithPassTiled1_1($1)","RoleTaskInfo30026:CheckAcceptTiled1($1)")
AppendMenuToNpc(197,"远征- 75体力（1倍经验+宝箱）(2)","RoleTaskInfo30026:ShowAcceptWithPassTiled1_2($1)","RoleTaskInfo30026:CheckAcceptTiled1($1)")
AppendMenuToNpc(197,"远征- 225体力（2.5倍经验）(2)","RoleTaskInfo30026:ShowAcceptWithPassTiled3_1($1)","RoleTaskInfo30026:CheckAcceptTiled3($1)")
AppendMenuToNpc(197,"远征(2)","RoleTaskInfo30026:ShowFinish($1)","RoleTaskInfo30026:CheckFinish($1)")

--怪物死亡注册
function RoleTaskInfo30026:AddOperate(uid,npcid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local process = s_getTaskValue(uid,30026,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		return
	end
	local monster,number,param = RoleTaskInfo30026:GetMonster(uid)
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
	local tar_country = s_getTaskVar(uid,30026,11)
	if level <= 100 then
		if country ~= tar_country then
			return
		end
	end
	AddRoleTaskOperate(uid,30026)
end

function RoleTaskInfo30026:RegisterMonsterEvent()
	for i,v in ipairs(self.monster) do
		local npcid = v[3]
		local callback = string.format("RoleTaskInfo30026:AddOperate($1,%u)",npcid)
		RegisterNpcDeadEvent(npcid,callback)
	end
end
RoleTaskInfo30026:RegisterMonsterEvent()

--是否显示通行证菜单
function RoleTaskInfo30026:CheckAcceptWithPass(uid)
	local level = s_getTaskVar(uid,30026,10)
	local minLevel = s_getTaskValue(uid,30026,TaskValue_MinLevel)
	local maxLevel = s_getTaskValue(uid,30026,TaskValue_MaxLevel)
	if minLevel ~= nil and minLevel > level then
		return VALUE_FAIL
	end
	if maxLevel ~= nil  and maxLevel < level then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30026:AddTaskWithPass(uid,baseid,thisid,num)
	if baseid ~= 0 then
		if baseid ~=  31147 then
			s_sysInfo(uid,"通行证不正确")
			return
		end
	end
	s_addVar(uid,30026,200,thisid)
	RoleTaskInfo30026:ShowAccept(uid)
end

function RoleTaskInfo30026:ShowAcceptWithPass(uid)
	local msg = [[请放入不同颜色的远征通行证，可以提高远征任务的经验奖励]]
	local userlevel = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local baseid = 31147
	ShowTaskPack(uid,"远征-通行证",msg,"确定","RoleTaskInfo30026:AddTaskWithPass($1,$2,$3,$4)",baseid)
end

function RoleTaskInfo30026:ShowAcceptWithPassTiled1_1(uid)
	s_addVar(uid, 30026, TvarIndex_TiledTimes, 1)
	s_addVar(uid, 30026, TvarIndex_TiledMode, 1)
	self:ShowAcceptWithPass(uid)
	--[[
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local country = GetQBTaskTargetCountry(homeland)
	self:AddTask(uid,country)
	--]]
end

function RoleTaskInfo30026:ShowAcceptWithPassTiled1_2(uid)
	s_addVar(uid, 30026, TvarIndex_TiledTimes, 1)
	s_addVar(uid, 30026, TvarIndex_TiledMode, 2)
	self:ShowAcceptWithPass(uid)
	--[[
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local country = GetQBTaskTargetCountry(homeland)
	self:AddTask(uid,country)
	]]--
end

function RoleTaskInfo30026:ShowAcceptWithPassTiled3_1(uid)
	s_addVar(uid, 30026, TvarIndex_TiledTimes, 3)
	s_addVar(uid, 30026, TvarIndex_TiledMode, 1)
	self:ShowAcceptWithPass(uid)
	--[[
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local country = GetQBTaskTargetCountry(homeland)
	self:AddTask(uid,country)
	]]--
end

--AppendMenuToNpc(197,"远征-通行证(2)","RoleTaskInfo30026:ShowAcceptWithPass($1)","RoleTaskInfo30026:CheckAcceptWithPass($1)")
