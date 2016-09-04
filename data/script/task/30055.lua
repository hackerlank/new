--收集情报2
RoleTaskInfo30055 =
{
	ring = 2,
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	--颜色经验倍率
	color_rates = {1,	1.3,	1.6,		2.2,		3},
}

--////////////////////////////////////////////
--任务变量意义
--11 目标国家ID
--12 接任务时是否处于国家发布时间
--13 接任务的刷新时间限制
--14 不知道什么变量
--15 多少次以后必绿
--////////////////////////////////////////////

function RoleTaskInfo30055:GetTaskIntroText(uid)
	local msg =
		[[
title(收集情报)
body(
blankline()  去国外收集情报，并将获得的情报交给goto(165,7)。
blankline()  每次接取远征任务需消耗35体力值，可获取1.5倍经验或丰厚道具奖励。
blankline()  60级之后，接取任务消耗3倍体力值，可获取2.5倍经验。
blankline()  不同颜色的任务品质，奖励的经验也不相同。任务颜色由低至高，为“白色＜蓝色＜黄色＜绿色＜紫色”。
blankline()  每天最多可完成2次，hot(周二接取任务必出黄色或黄色以上情报)。周二完成任务所获得的数字，将在周六抽奖时使用。
blankline()  exp(大量)
)
]]
	return parseToDesc(msg)
end

--任务追踪
function RoleTaskInfo30055:GetTaskTraceText(uid)
	local msg = [[<p><n>  目标国：$1</n><event hotkeyid="89" eid="100" cid="0" text="领团魔甲"/><newline/><n> 跳转NPC：</n><goto id="126" mapid="7" /><newline/><n> 去找：</n><goto id="60102" mapid="7" /><newline/><n> 或找：</n><goto id="60178" mapid="5" /></p>]]
	local countryid = s_getTaskVar(uid,30055,11)
	local name = s_getCountryName(countryid)
	if name == nil then name = "" end
	msg = FormatString(msg,name)
	return msg
end

--任务经验
function RoleTaskInfo30055:GetTaskBaseExp(uid)
	--70*(50+0.1*人物等级^2.2)*颜色倍率*次数及发布加成
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local base_exp = 70*(50+0.1*level^2.2)
	local color = s_getTaskValue(uid,30055,TaskValue_Color)
	if color == nil then
		color = 0
	end
	local curRound, curRing = GetTaskCurRoundAndRing(uid, 30055)
	local times = curRing
	local timerate = ((times-1)*0.2+1)
	return math.floor(base_exp * self.color_rates[color+1] * timerate)
end

function RoleTaskInfo30055:GetTaskExp(uid)
	local exp = self:GetTaskBaseExp(uid)
	local tiledtimes = 1
	if s_getVar(uid, 30055, TvarIndex_TiledMode) == 1 then
		if s_getVar(uid, 30055, TvarIndex_TiledTimes) == 1 then tiledtimes = 1.5 end
		if s_getVar(uid, 30055, TvarIndex_TiledTimes) == 3 then tiledtimes = 2.5 end
	end
	return math.floor(exp * tiledtimes)
end

--任务描述
function RoleTaskInfo30055:GetSubTaskDescText(uid, taskid, subtaskid)
	local text = nil
	local subinfo = GetSubTaskInfo(taskid, subtaskid)
	if subinfo ~= nil and subinfo.desctext ~= "" then
		text = subinfo.desctext
	end
	if text == nil or text == "" then return end
	local countryid = s_getTaskVar(uid,30055,11)
	if countryid ~= nil and countryid ~= 0 then
		local name = s_getCountryName(countryid)
		text = string.gsub(text,"xx",name)
	end
	local offline = s_getVar(uid,8,13)*0.1
	text = string.gsub(text,"$OFFLINE",offline)
	return text
end

--检查是否可以接受任务
function RoleTaskInfo30055:CheckAccept(uid)
	local process = s_getTaskValue(uid,30055,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local minLevel = s_getTaskValue(uid,30055,TaskValue_MinLevel)
	local maxLevel = s_getTaskValue(uid,30055,TaskValue_MaxLevel)
	if minLevel ~= nil and minLevel > level then
		return VALUE_FAIL
	end
	if maxLevel ~= nil  and maxLevel < level then
		return VALUE_FAIL
	end
	if CheckRoundAndRing(uid, 30055) == VALUE_FAIL then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30055:CheckAcceptTiled1(uid)
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_USABLE_TILED_POINT) < 35 then
		return VALUE_FAIL
	end
	return self:CheckAccept(uid)
end

function RoleTaskInfo30055:CheckAcceptTiled3(uid)
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_USABLE_TILED_POINT) < 105 then
		return VALUE_FAIL
	end
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL) < 61 then
		return VALUE_FAIL
	end
	return self:CheckAccept(uid)
end


--接受任务对话
function RoleTaskInfo30055:ShowAccept(uid)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local country = GetQBTaskTargetCountry(homeland)
	local msg = GetSubTaskAcceptText(uid,30055,1)
	local call = "RoleTaskInfo30055:AddTask($1,"..country ..")"
	ShowNpcMenuBottomStyle(uid,msg,"确定(3)",call,"离开(3)")
end

function RoleTaskInfo30055:ShowAcceptTiled1_1(uid)
	s_addVar(uid, 30055, TvarIndex_TiledTimes, 1)
	s_addVar(uid, 30055, TvarIndex_TiledMode, 1)
	self:ShowAccept(uid)
end

function RoleTaskInfo30055:ShowAcceptTiled1_2(uid)
	s_addVar(uid, 30055, TvarIndex_TiledTimes, 1)
	s_addVar(uid, 30055, TvarIndex_TiledMode, 2)
	self:ShowAccept(uid)
end

function RoleTaskInfo30055:ShowAcceptTiled3_1(uid)
	s_addVar(uid, 30055, TvarIndex_TiledTimes, 3)
	s_addVar(uid, 30055, TvarIndex_TiledMode, 1)
	self:ShowAccept(uid)
end

function RoleTaskInfo30055:OnAcceptTask(uid)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local countryid = s_getCountryVar(homeland,1,15)
	s_addTaskVar(uid,30055,11,countryid)
end

--接受任务
function RoleTaskInfo30055:AddTask(uid,countryid)
	OnOfflineTaskExpEvent(uid,6)
	s_addVar(uid,8,113,s_getCurTime(TIME_ALLDAYS))

	AddRoleSubTask(uid, 30055, 1, 1, 0)
	--情报任务刷新次数重置
	s_addTaskVar(uid,30055,15,0)

	--扣体力
	if s_getVar(uid, 30055, TvarIndex_TiledTimes) == 1 then
		s_subValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_USABLE_TILED_POINT, 35)
	elseif s_getVar(uid, 30055, TvarIndex_TiledTimes) == 3 then
		s_subValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_USABLE_TILED_POINT, 105)
	end

	--国家发布时间，做标记
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local step = s_getEvent(Relation_Country,homeland,CountryEv_QingBao)
	if step == EventStep_Run then
		s_addTaskVar(uid,30055,12,1)
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_getVar(uid,114,7) == 0 and level <= 50 then
		s_addVar(uid,114,7,1)
		s_resetTrafficType(uid)
		s_addbuff(SCENE_ENTRY_PLAYER,uid,94,1,20*60)
	end
end

--是否显示交付任务
function RoleTaskInfo30055:CheckFinish(uid,minlevel,maxlevel)
	local process = s_getTaskValue(uid,30055,TaskValue_Process)
	if process == TaskProcess_None then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--显示完成任务对话
function RoleTaskInfo30055:ShowFinish(uid)
	local process = s_getTaskValue(uid,30055,TaskValue_Process)
	if process == TaskProcess_Doing then
		local msg = [[收集到情报再来找我吧]]
		ShowNpcMenuBottomStyle(uid,msg,"离开(3)")
		return
	end
	local msg = GetSubTaskFinishText(uid,30055,1)
	local call = "RoleTaskInfo30055:FinishTask($1)"
	ShowNpcMenuBottomStyle(uid,msg,"完成(3)",call,"离开(3)")
end

--避免CommonTaskReward
function RoleTaskInfo30055:TaskReward(uid, taskid, subtaskid)
end

--交付任务
function RoleTaskInfo30055:FinishTask(uid)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,94)
	--获得经验
	local exp = GetTaskExp(uid,30055)
	s_refreshExp(uid,exp,ExpType_OptionalTask,30055)

	local offline = s_getVar(uid,8,13)*0.1
	if offline ~= 0 then
		s_addVar(uid,8,13,0)
		local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
		local exp = math.floor(70*1.5*offline*(50+0.1*level^2.2))
		s_refreshExp(uid,exp,ExpType_OptionalTask,30055)
		s_sysInfo(uid,"获得经验累积补偿:" .. exp,ChatPos_MsgBox)
	end

	exp = self:GetTaskBaseExp(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local worldlevel = s_getWorldLevel()
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local countrystate = s_getCountryState(homeland)
	local rate = GetWorldLevelExp(level,worldlevel,countrystate)
	local worldexp = math.floor(exp*rate*0.01)
	if worldexp ~= 0 then
		s_refreshExp(uid,worldexp,ExpType_OptionalTask,30055)
		s_sysInfo(uid,"获得人类进程及国家状态经验加成:" .. worldexp)
	end

	--国家发布时间获得额外奖励
	local step = s_getEvent(Relation_Country,homeland,CountryEv_QingBao)
	local step1 = s_getEvent(Relation_World,homeland,WorldEv_Time)
	if step == EventStep_Run and s_getTaskVar(uid,30055,12) == 1 then
		local extra_exp = math.floor(exp*0.5)
		s_refreshExp(uid,extra_exp,ExpType_OptionalTask,30055)
		local var = s_getCountryVar(homeland,1,6)
		s_addCountryVar(homeland,1,6,1+var)
		s_sysInfo(uid,"国家情报时间获得额外经验奖励为"..extra_exp)
		if s_getVar(uid,130,16) == 0 then
			s_addVar(uid,130,16,1)
			s_addVar(uid,130,200,s_getVar(uid,130,200)+1)
			s_debugUser(uid,"国家活力点，国家情报，参与度：1")
		end
	elseif step ~= EventStep_Run and step1 ~= EventStep_Run then
		local specialbuff = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,31071)
		if specialbuff ~= nil and specialbuff ~= 0 then
			local extra_exp = math.floor(exp*0.5)
			s_refreshExp(uid,extra_exp,ExpType_OptionalTask,30055)
			s_sysInfo(uid,"特殊状态额外经验加成"..extra_exp)
		end
	end
	if step1 == EventStep_Run and (step ~= EventStep_Run or s_getTaskVar(uid,30055,12) ~= 1) then
		local extra_exp = math.floor(exp*0.5)
		s_refreshExp(uid,extra_exp,ExpType_OptionalTask,30055)
		s_sysInfo(uid,"系统活动时间获得额外经验奖励为"..extra_exp)
	end

	--体力宝箱
	if s_getVar(uid, 30055, TvarIndex_TiledMode) == 2 then
		s_addItem(uid,29303,0,1,0,"1-1","RoleTaskInfo30055")
	end
	--发放获得经验的道具
	Dealtaskexpitem(uid)
	--活力点
	s_addVigorPoint(uid, 10)
	s_debugUser(uid,"完成情报任务，获得10点活力点")
	--成就
	local color = s_getTaskValue(uid,30055,TaskValue_Color)
	if color >= 3 then
		AddAchieveTaskOperate(uid,40004,1)
	end
	local username = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_NAME)
	if color == 0 then
		s_debug(username.."完成白色情报任务")
	elseif color == 1 then
		s_debug(username.."完成蓝色情报任务")
	elseif color == 2 then
		s_debug(username.."完成黄色情报任务")
	elseif color == 3 then
		s_debug(username.."完成绿色情报任务")
	elseif color == 4 then
		s_debug(username.."完成紫色情报任务")
	end
	--完成引导任务
	local curRound, curRing = GetTaskCurRoundAndRing(uid, 30055)
	if curRing == 1 then
		AddRoleTaskOperate(uid,13041)
	elseif curRing == 2 then
		AddRoleTaskOperate(uid,13042)
	elseif curRing == 3 then
		AddRoleTaskOperate(uid,13043)
	end

	--周二情报日给予情报卡
	local weekday = s_getCurTime(TIME_CURWDAYS)
	if weekday == 2 then
		s_addLuckyCard(uid,2)
	end

	if s_getCurTime(TIME_ALLDAYS) >= 15329 and s_getCurTime(TIME_ALLDAYS) <= 15348 then
		s_addItem(uid,31265,0,1,0,"","圣诞活动")
	end

	FinishRoleTask(uid,30055)
	local process = s_getTaskValue(uid,30307,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30307)
	end
	AddRoleTaskOperate(uid,1495)
	AddRoleTaskOperate(uid,30099)
	AddRoleTaskOperate(uid,30100)
	AddRoleTaskOperate(uid,30101)
	AddRoleTaskOperate(uid,16003)
	--AddRoleTaskOperate(uid,15241)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,84)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,90)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,91)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,92)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,93)

	local medal = s_getTaskValue(uid,30055,TaskValue_ExpMedal)
	s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_EXP_MEDAL,medal)
	s_addActivePoint(uid,ActivePointType_Task,30)
	s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_ALL_PRESTIGE,30)
	--中秋活动
	--[[local times = curRing
	local month = s_getCurTime(TIME_CURMONTHS) + 1
	local mday = s_getCurTime(TIME_CURMDAYS)
	if month == 9 then
	if mday >= 29 then
	if	times == 2 then
	s_addItem(uid,55000,3,1,0,"1-1","国庆礼包")
	end
	end
	elseif month == 10 then
	if mday <= 8 then
	if	times == 2 then
	s_addItem(uid,55000,3,1,0,"1-1","国庆礼包")
	end
	end
	end]]--
	--s_addItem(uid,63393,3,1,0,"1-1","5元的打折卡")	 --端午打折卡活动

	--完成任务得“幸运大礼包”
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local rand = math.random(1,100)
	if	rand <= 40 then
		s_addItem(uid,63394,3,1,0,"1-1","幸运大礼包")
		s_sysInfo(uid,"意外获得了1个幸运大礼包，快拆开看看吧！")
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>完成日常任务时，好运降临，获得丰厚道具！</n></p>",ChatPos_Sys)
	end
end

--完成次数
function RoleTaskInfo30055:OnTaskDailyChanged(uid)
	RefreshTaskDailyInfo(uid, 30082)
end

--NPC菜单
--AppendMenuToNpc(165,"收集情报(2)","RoleTaskInfo30055:ShowAccept($1)","RoleTaskInfo30055:CheckAccept($1)")
AppendMenuToNpc(165,"收集情报- 35体力（1.5倍经验）(2)","RoleTaskInfo30055:ShowAcceptTiled1_1($1)","RoleTaskInfo30055:CheckAcceptTiled1($1)")
AppendMenuToNpc(165,"收集情报- 35体力（1倍经验+宝箱）(2)","RoleTaskInfo30055:ShowAcceptTiled1_2($1)","RoleTaskInfo30055:CheckAcceptTiled1($1)")
AppendMenuToNpc(165,"收集情报- 105体力（2.5倍经验）(2)","RoleTaskInfo30055:ShowAcceptTiled3_1($1)","RoleTaskInfo30055:CheckAcceptTiled3($1)")
AppendMenuToNpc(165,"收集情报(2)","RoleTaskInfo30055:ShowFinish($1)","RoleTaskInfo30055:CheckFinish($1)")

--//====================================================================================
--// 中间对话NPC
--//====================================================================================
--检查NPC对当前任务是否有效
function RoleTaskInfo30055:CheckEffectNpc(uid)
	local process = s_getTaskValue(uid,30055,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		return VALUE_FAIL
	end
	local target_country = s_getTaskVar(uid,30055,11)
	local scene_country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	if target_country ~= scene_country then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--请求获得情报(进度条)
function RoleTaskInfo30055:RequestQingBao(uid,npcid)
	local callback = "RoleTaskInfo30055:GetQingbao($1,".. npcid ..")"
	local traffic = s_getTrafficType(uid)
	if traffic == TrafficType_Armyequip then
		s_showbar(uid,10000,callback,0,1)
	else
		s_showbar(uid,10000,callback,0,4)
	end
end

function RoleTaskInfo30055:GetQingbao(uid,npcid)
	local process = s_getTaskValue(uid,30055,TaskValue_Process)
	if process == TaskProcess_None then
		return
	end

	local now = s_getCurTime(TIME_ALLSECONDS)
	s_addTaskVar(uid,30055,13,now)
	s_addTaskVar(uid,30055,14,now)

	AddRoleTaskOperate(uid,30055,"获得情报")
	local cold = RequestVerifyQingBao30055(uid,npcid)--给情报加剩余时间BUFF
	s_removebuff(SCENE_ENTRY_PLAYER,uid,156)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,156,1,cold)
	--有概率重新刷新任务颜色(30%白/33%蓝/24%黄/10%绿/3zi)
	local rand = math.random(1,100)
	local color = TaskColor_White
	if rand <= 30 then
		color = TaskColor_White
	elseif rand <= 63 then
		color = TaskColor_Blue
	elseif rand <= 87 then
		color = TaskColor_Yellow
	elseif rand <= 97 then
		color = TaskColor_Green
	else
		color = TaskColor_Purple
	end
	--周二情报日必出黄色
	local weekday = s_getCurTime(TIME_CURWDAYS)
	if weekday == 2 then
		rand = math.random(1,100)
		if rand <= 70 then
			color = TaskColor_Yellow
		elseif rand <= 95 then
			color = TaskColor_Green
		else
			color = TaskColor_Purple
		end
	end
	--buffid=150时，必出绿色
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,150) ~= 0 then
		rand = math.random(1,100)
		if rand <= 97 then
			color = TaskColor_Green
		else
			color = TaskColor_Purple
		end
		s_removebuff(SCENE_ENTRY_PLAYER,uid,150)
	end
	--刷新次数决定情报颜色
	if s_getTaskVar(uid,30055,15) >= 15 then
		rand = math.random(1,100)
		if rand <= 97 then
			color = TaskColor_Green     --必绿
		else
			color = TaskColor_Purple
		end
	end
	--国王勋章官员
	local fun = s_getFunction(uid,Relation_Country)
	if fun == FunctionType_Marshal or s_getMedal(uid) ~= 0 then
		if color < TaskColor_Green then
			color = TaskColor_Green
		end
	end
	s_removebuff(SCENE_ENTRY_PLAYER,uid,90)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,84)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,91)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,92)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,93)
	if color == TaskColor_White then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,90) < 1 then
			s_addbuff(SCENE_ENTRY_PLAYER,uid,90,1,120)
		end
	elseif color == TaskColor_Blue then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,84) < 1 then
			s_addbuff(SCENE_ENTRY_PLAYER,uid,84,1,120)
		end
	elseif color == TaskColor_Yellow then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,91) < 1 then
			s_addbuff(SCENE_ENTRY_PLAYER,uid,91,1,120)
		end
	elseif color == TaskColor_Green then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,92) < 1 then
			s_addbuff(SCENE_ENTRY_PLAYER,uid,92,1,120)
		end
	elseif color == TaskColor_Purple then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,93) < 1 then
			s_addbuff(SCENE_ENTRY_PLAYER,uid,93,1,120)
		end
	end
	RoleTaskInfo30055:RefreshTaskColor(uid,color)
	local names = {"白色","蓝色","黄色","绿色","紫色"}
	s_sysInfo(uid,string.format("居然获得了%s情报",names[color+1]))
	--给刷情报计算次数
	s_addTaskVar(uid,30055,15,s_getTaskVar(uid,30055,15)+1)
end

--检查是否显示获得情报接口
function RoleTaskInfo30055:ShowQingBao(uid)
	return RoleTaskInfo30055:CheckEffectNpc(uid)
end

--刷新任务颜色
function RoleTaskInfo30055:RefreshTaskColor(uid,color)
	s_setTaskValue(uid,30055,TaskValue_Color,color)
	--经验修改，重置任务描述
	if color ~= oldcolor then
		s_addTaskVar(uid,30055,MvarIndex_Exp,0)
		local text = GetSubTaskDescText(uid, 30055, 1)
		s_setTaskValue(uid,30055,TaskValue_Desc,text,1)
	end
	return VALUE_OK
end

--检查是否显示刷新任务颜色
function RoleTaskInfo30055:ShowRefresh60102(uid)
	local process = s_getTaskValue(uid,30055,TaskValue_Process)
	if process ~= TaskProcess_CanDone then
		return VALUE_FAIL
	end
	local target_country = s_getTaskVar(uid,30055,11)
	local scene_country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	if target_country ~= scene_country then
		return VALUE_FAIL
	end
	--[[2分钟冷却
	local last = s_getTaskVar(uid,30055,13)
	local now = s_getCurTime(TIME_ALLSECONDS)
	if now <= last or (now - last <= 120) then
	return VALUE_FAIL
	end
	]]
	return VALUE_OK
end

--检查是否显示刷新任务颜色
function RoleTaskInfo30055:ShowRefresh60178(uid)
	local process = s_getTaskValue(uid,30055,TaskValue_Process)
	if process ~= TaskProcess_CanDone then
		return VALUE_FAIL
	end
	local target_country = s_getTaskVar(uid,30055,11)
	local scene_country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	if target_country ~= scene_country then
		return VALUE_FAIL
	end
	--[[30s冷却
	local last = s_getTaskVar(uid,30055,13)
	local now = s_getCurTime(TIME_ALLSECONDS)
	if now <= last or (now - last <= 45) then
	return VALUE_FAIL
	end
	]]
	return VALUE_OK
end

--请求核对情报的冷却时间的函数，多地方调用，所以整合为一个函数方便调用
function RequestVerifyQingBao30055(uid,npcid)
	local cold = 45
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local countrystate = s_getCountryState(homeland)
	if countrystate == CountryStateWeak then
		if npcid == 60102 then
			cold = 40
		elseif npcid == 60178 then
			cold = 20
		end
	else
		if npcid == 60102 then
			cold = 60
		elseif npcid == 60178 then
			cold = 30
		end
	end
	return cold
end

--请求核对情报
function RoleTaskInfo30055:RequestVerifyQingBao(uid,npcid)
	local cold = RequestVerifyQingBao30055(uid,npcid)
	local last = s_getTaskVar(uid,30055,13)
	local now = s_getCurTime(TIME_ALLSECONDS)
	if now <= last or (now - last <= cold) then
		local msg = string.format("  请%u秒后再来核对,核对15次后必定为绿色。",last + cold - now)
		ShowNpcMenuBottomStyle(uid,msg,"确定(3)")
		return
	end

	local callback = "RoleTaskInfo30055:GetQingbao($1,"..npcid..")"
	local traffic = s_getTrafficType(uid)
	if traffic == TrafficType_Armyequip then
		s_showbar(uid,10000,callback,0,1)
	else
		s_showbar(uid,10000,callback,0,4)
	end
end

--玩家死亡，丢失情报
function RoleTaskInfo30055:OnDead(uid)
	local process = s_getTaskValue(uid,30055,TaskValue_Process)
	if process == TaskProcess_CanDone then
	end
end

--玩家删除任务
function RoleTaskInfo30055:OnDeleteTask(uid)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,84)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,90)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,91)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,92)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,93)
end


--邦德
AppendMenuToNpc(60102,"情报任务(2)","RoleTaskInfo30055:RequestQingBao($1,60102)","RoleTaskInfo30055:ShowQingBao($1)")
AppendMenuToNpc(60102,"核对情报任务品质(2)","RoleTaskInfo30055:RequestVerifyQingBao($1,60102)","RoleTaskInfo30055:ShowRefresh60102($1)")
--辛西娅
AppendMenuToNpc(60178,"情报任务(2)","RoleTaskInfo30055:RequestQingBao($1,60178)","RoleTaskInfo30055:ShowQingBao($1)")
AppendMenuToNpc(60178,"核对情报任务品质(2)","RoleTaskInfo30055:RequestVerifyQingBao($1,60178)","RoleTaskInfo30055:ShowRefresh60178($1)")
