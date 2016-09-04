RoleTaskInfo20001 =
{
	desctext = parseToDesc([[团建设任务的 desctext]]),

	round = 1,
	ring = 10,

	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{s_checkCorps,{}},
			{s_checkCorpsState,{0}},
			{s_checkInOwnCorpsBase,{}},
		},

		onaccept =
		{
			{s_actionTaskCorpsGlory,{1}},
			{s_actionTaskAllGlory,{1}},
		},
		--测试
		--[[randomtask =
		{
		{ 15,100,
		{
		22414,22418
		}
		},
		{ 33,100,
		{
		22414,22418
		}
		},
		{100,100,
		{
		22414,22418
		}
		},
		},]]--

		--几率设置 收集材料 15% ，打怪 5% ，寻人 35%，交装备 10%，采集15%，护送5%，扩展15%
		randomtask =
		{
			{15,100, --收集材料任务
				{
					--22101,22102,22103,22104,22105,22106,22107,22108,22109,22110,22111,22112,22113,22114,22115,22116, --交矿石、药材 7
					22201,22202,22203,22204,22205,22206		--交采集材料 1
			},
			},
			{20,100, --杀怪任务
				{
					21901,21902,21903,21904,21905,21906,21907,21908,21909,21910,21911,21912,21913,21914,21915,21916,21917,21918,21919,21920, --杀怪 1
					21101,21102,21103,21104,21105,21106,21107,21108,21109,21110,21111,21112,21113,21114,21115,21116, --杀怪 1
					21201,21202,21203,21204,21205,21206,21207,21208,21209,21210,21211,21212,21213,21214,21215,21216, --杀怪 1
					22401,22402,22403,22404,22405,22406,22407,22408,22409,22410,22411,22412 --杀怪 1
			},
			},
			{55,100, --寻人
				{
					21001,21002,21003,21004,21005,21006,21007,21008,21009,21010,21011,21012,21013,21014,21015,21016,21017,21018,21019,  --寻人 3
					21601,21602,21603,21604,21605,21606,21607,21608,21609,21610,21611,21612,21613,21614,21615,21616,21617,21618,21619, --送信
					21701,21702,21703,21704,21705,21706,21707,21708,21709,21710,21711,21712,21713,21714,21715,21716,21717,21718,21719, --取物
			},
			},
			{65,100, --交装备
				{
					21401,21402,21403,21404,21405,21406,21407,21408,  --收集武器 2
					21301,21302,21303,21304,21305,21306,21307,21308,  --收集装备 2
			},
			},
			{75,100, --采集
				{
					21801,21802,21803,21804, --修雷达
					22001,22002,22003,22004,22005,22006,22007,22008,22009,22010,22011,22012,22013, --勘探 1
			},
			},
			{90,100, --扩展任务
				{
					22413,22414,22415,22416,22417,22418,
			},
			},
			{100,100,--护送
				{
					21501,21502,21503,21504,21505,21506,21507,21508,21509,21510,21511,21512,21513,  --护送 1
			},
			},
		},
		task = {s_taskRandomTask, {45112}},

		onfinishcheck =
		{
			{s_checkCorps,{}},
			{s_checkInOwnCorpsBase,{}},
		},
	},

	-- 第一轮贡献奖励
	taskContrib =
	{2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0},
	-- 刷新费用
	taskLuckMoney =
	{30,50,65,85,105,130,155,185,215,245,275,305,340},
}


--任务简介
function RoleTaskInfo20001:GetTaskIntroText(uid)
	local msg =
		[[
	title(团建设任务)
	body(
	blankline()   团建设任务每日一轮hot(每轮10环任务)。
	blankline()   任务可删除，但删除后hot(该轮任务失败)，开始计算下一轮！
	blankline()   exp(大量)
	)
	]]
	return parseToDesc(msg)
end

--隔天检查更新刷新次数
function RoleTaskInfo20001:RefreshLuckTimes(uid)
	local taskid = 20001

	--刷新次数更新
	local nowDay = s_getCurTime(TIME_ALLDAYS)
	local lastDay = s_getVar(uid,taskid,TvarIndex_Day)
	if lastDay == 0 or lastDay ~= nowDay then
		s_addVar(uid,taskid,TvarIndex_LuckTimes,3)
	end
	return VALUE_OK
end

--返回任务的经验
--12*(0.8+0.2*环数)*(50+0.1*人物等级^2.2)
function RoleTaskInfo20001:GetTaskExp(uid)
	local curRound, curRing = GetTaskCurRoundAndRing(uid, 20001)
	local userlevel = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	return math.floor(12 * (0.8 + 0.2*curRing) * (50 + 0.1 * userlevel^2.2))
end


--返回子任务接受时的描述
function RoleTaskInfo20001:GetSubTaskAcceptText(uid, taskid, subtaskid)
	local text1 = ""
	local subinfo = GetSubTaskInfo(taskid, subtaskid)
	if subinfo ~= nil and subinfo.accepttext ~= "" then
		text1 = subinfo.accepttext
	end

	local curRound, curRing = GetTaskCurRoundAndRing(uid, taskid)
	local warn = [[<p><n color=\"GXColorRed\">]] .. [[即将开始第]] .. curRing .. [[次任务</n></p>]]
	text1 = text1 .. warn
	return text1
end

--任务接取时的操作：按照环数计算奖励什么的
function RoleTaskInfo20001:OnAcceptTask(uid)
	local taskid = 20001
	local curRound, curRing = GetTaskCurRoundAndRing(uid, taskid)

	--经验
	local exp = self:GetTaskExp(uid)
	s_addTaskVar(uid,taskid,MvarIndex_Exp,tonumber(exp))

	--团勋章
	s_addTaskVar(uid,taskid,MvarIndex_Offer,self.taskContrib[curRing])
end


--任务完成时的操作
function RoleTaskInfo20001:OnFinishTask(uid)
	self:RefreshLuckTimes(uid)
	--命运女神的垂青
	local process = s_getTaskValue(uid,30557,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30557)
	end
	local process = s_getTaskValue(uid,30567,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30567)
	end
	local process = s_getTaskValue(uid,30577,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30577)
	end
	local process = s_getTaskValue(uid,30587,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30587)
	end
	local process = s_getTaskValue(uid,30617,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30617)
	end
	local process = s_getTaskValue(uid,30637,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,30637)
	end

end


--删除任务
function RoleTaskInfo20001:OnDeleteTask(uid)
	--任务完成清除刷活力点次数
	s_addVar(uid,101,51,0)
	--[[s_subField(uid,UserVar_Offer,2)
	local corps = s_getCorpsId(uid)
	if corps > 0 then
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	if name == nil or name == "" then
	name = "未知角色名"
	end
	local subnum = 5
	local money = s_getCorpsField(corps,CorpVar_Money)
	if money > 0 then
	subnum = subnum * 10
	if money < subnum then subnum = money end
	s_subCorpsField(corps,CorpVar_Money,subnum)
	local fun,str = s_getFunction(uid,Relation_Corps)
	s_corpsInfo(corps, str .. "[" .. name .. "]删除团建设任务扣除".. subnum .."团资金")
	end
	end]]--
end

--任务奖励
function RoleTaskInfo20001:TaskReward(uid, taskid, subtaskid)
	local corps = s_getCorpsId(uid)
	if corps == 0 then
		s_debug("任务20001异常")
		return
	end

	local curRound, curRing = GetTaskCurRoundAndRing(uid, 20001)

	--普通奖励
	CommonTaskReward(uid, 20001)

	--经验
	local exp = self:GetTaskExp(uid)
	local rand = math.random(1,100)
	local exptype = 1
	if rand <= 15 then
		exptype = 2
	end
	self:AddLuckExp(uid,{exptype,exp})

	--加体力值
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL) >= 70 then
		s_addValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_USABLE_TILED_POINT, 10)
	end

	--活力点
	s_addVigorPoint(uid, 2)
	s_debugUser(uid,"完成团建设任务，获得2点活力点")
	--任务完成清除刷活力点次数
	s_addVar(uid,101,51,0)
	--中秋活动
	local process = s_getTaskValue(uid,50004,TaskValue_Process)
	if process == TaskProcess_Doing then
		AddRoleTaskOperate(uid,50004)
	end
	--10环送东西
	local times = curRing
	local month = s_getCurTime(TIME_CURMONTHS) + 1
	local mday = s_getCurTime(TIME_CURMDAYS)
	local list = {55048,55048}
	if times == 10 then
		if month == 3 then
		--[[if mday >= 4 and mday <= 10 then
		s_addItem(uid,list[math.random(1,table.getn(list))],3,2,0,"1-1","10环奖励")
		end	]]
		--[[elseif month == 4 then
		if mday >= 1 and mday <= 8 then
		s_addItem(uid,list[math.random(1,table.getn(list))],3,1,0,"1-1","10环奖励")
		end	]]--
		end
	end
end

--高倍经验 param
function RoleTaskInfo20001:AddLuckExp(uid,param)
	local exptype = param[1]
	local exp = param[2]
	local corps = s_getCorpsId(uid)
	if corps == 0 then return end

	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	if name == nil or name == "" then
		name = "未知角色名"
	end
	local str = name.."完成团建设任务，为团的繁荣做出了贡献！"
	if exptype == 2 then
		str = name .. "完成团建设任务时，幸运的获得了多倍经验奖励，大家也要努力哦！"
	end
	s_corpsInfo(corps, str, ChatPos_Sys + ChatPos_Important)

	if exptype > 1 then
		s_refreshExp(uid, exp * (exptype-1), ExpType_OptionalTask,20001)
	end
end


-----------------------------------------------------------------------------------------------------
--刷新任务
function RoleTaskInfo20001:goodLuck(uid,todo)
	local taskid = 20001

	local taskProcess = s_getTaskValue(uid, taskid, TaskValue_Process)
	if taskProcess == TaskProcess_None then
		return
	end

	--[[local lucks = s_getVar(uid,taskid,TvarIndex_LuckTimes)
	if lucks == nil or lucks == 0 then
	return
	end--]]

	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then level = 21 end
	level = math.floor((level - 11)/10)
	if level > #self.taskLuckMoney then
		level = #self.taskLuckMoney
	end
	local time = s_getVar(uid,101,51) + 1
	local submoney = 30
	if time == 1 then
		submoney =  self.taskLuckMoney[level]
	elseif time == 2 then
		submoney =  self.taskLuckMoney[level] * 2
	elseif time >=3 then
		submoney =  self.taskLuckMoney[level] * 4
	end
	if todo ~= nil then
		if s_getMoney(uid,MoneyType_MoneyTicket) < submoney then
			s_sysInfo(uid,"本次任务刷新需要" .. GetMoneyString(submoney) .. "绑银",ChatPos_Sys)
			return
		end

		local fun = self.OnDeleteTask
		self.OnDeleteTask = nil
		s_delTask(uid, 20001)
		self.OnDeleteTask = fun

		SubRoundAndRing(uid, 20001)
		s_actionAddRoleTask(uid, 20001, 1, {20001})

		--[[lucks = lucks - 1
		s_addVar(uid,taskid,TvarIndex_LuckTimes,lucks)--]]
		s_removeMoney(uid,MoneyType_MoneyTicket, submoney, "团建设任务刷新")
		s_addVar(uid,101,51,s_getVar(uid,101,51)+1)
	else
		self:warnGoodLuck(uid,submoney)
	end
end

--刷新提示
function RoleTaskInfo20001:warnGoodLuck(uid,money)
	local msg = "刷新任务需要花费：" .. GetMoneyString(money) .. "绑银,是否刷新?"
	ShowNpcMenuBottomStyle(uid,msg,"确定(3)","RoleTaskInfo20001:goodLuck($1,1)","取消(3)")
end

--刷新显示
function RoleTaskInfo20001:showLuckMenu(uid)
	local corps = s_getCorpsId(uid)
	if corps == 0 then
		return VALUE_FAIL
	end

	if CopySceneCheck(uid,CopySceneType_CorpsBase,corps) == VALUE_FAIL then
		return VALUE_FAIL
	end

	local taskProcess = s_getTaskValue(uid, 20001, TaskValue_Process)
	if taskProcess == TaskProcess_None then
		return VALUE_FAIL
	end

	--[[local lucks = s_getVar(uid,20001,TvarIndex_LuckTimes)
	if lucks == nil or lucks == 0 then
	return VALUE_FAIL
	end--]]
	return VALUE_OK
end

--直接完成所有任务
function RoleTaskInfo20001:QuickFinishAllTimes(uid)
	local corps = s_getCorpsId(uid)
	if corps == 0 then
		s_messageBox(uid,"您还没有团")
		return VALUE_FAIL
	end
	local taskid = 20001
	CheckRoundAndRing(uid, taskid)
	local curRound, curRing = GetTaskCurRoundAndRing(uid, 20001)
	if curRound >= 2 then
		s_messageBox(uid,"今天已经完成10环团建设任务了")
		return
	end
	--任务环数
	local curRing = s_getVar(uid, taskid, TvarIndex_CurRing) - 1
	local time = 10 - curRing
	local needmoney = 100
	--s_sysInfo(uid,"".. curRound..",".. curRing.."")
	if s_removeMoney(uid,MoneyType_Money,needmoney*time,"团建设任务直接完成") ~= VALUE_OK then
		s_messageBox(uid,"银币不足，需要".. needmoney*time .."银币")
		return VALUE_FAIL
	end
	local taskdoing = 0 --没接任务
	local taskProcess = s_getTaskValue(uid, taskid, TaskValue_Process)
	if taskProcess ~= TaskProcess_None then
		taskdoing = 1 --接了任务
	end

	--处理方式
	if taskdoing == 0 then
		if time < 0 then time = 0 s_debug("团建设直接完成发奖异常") end
		for i=1, time do
			RoleTaskInfo20001:TaskReward(uid, taskid, subtaskid) --发奖励
			AddRoundAndRing(uid, taskid)
			s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_EXP_MEDAL,1) --日常贡献
			--团繁荣度
			local corps = s_getCorpsId(uid)
			if corps ~= 0 then
				s_addCorpsField(corps,CorpVar_Glory,1)
				s_addField(uid,UserVar_AllGlory,1)
				--增加团勋章
				if i <= 5 then
					s_addField(uid,UserVar_Offer,2)
				else
					s_addField(uid,UserVar_Offer,1)
				end
			end
		end
	else
		FinishRoleTask(uid,20001)
		time = time - 1
		if time < 0 then time = 0 s_debug("团建设直接完成发奖异常") end
		for i=1, time do
			RoleTaskInfo20001:TaskReward(uid, taskid, subtaskid)
			AddRoundAndRing(uid, taskid)
			s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_EXP_MEDAL,1) --日常贡献
			--团繁荣度
			local corps = s_getCorpsId(uid)
			if corps ~= 0 then
				s_addCorpsField(corps,CorpVar_Glory,1)
				s_addField(uid,UserVar_AllGlory,1)
				--增加团勋章
				if i <= 5 then
					s_addField(uid,UserVar_Offer,2)
				else
					s_addField(uid,UserVar_Offer,1)
				end
			end
		end
	end
	s_addItem(uid,27115,3,1,0,"1-1","快速完成团任务")	--魔甲材料
	return VALUE_OK
end


--注册NPC菜单
AppendMenuToNpc(45112,"刷新团建设任务(3)","RoleTaskInfo20001:goodLuck($1)","RoleTaskInfo20001:showLuckMenu($1)")

--[[以前的制作几率，暂时留着
		randomtask =
		{
			{ 15,100,
				{
				21201,21202,21203,21204,21205,21206,21207,21208,21209,21210,21211,21212,21213,21214,21215,21216,
				21401,21402,21403,21404,21405,21406,21407,21408,
				21501,21502,21503,21504,21505,21506,21507,21508,21509,21510,21511,21512,21513,
				22201,22202,22203,22204,22205,22206
				}
			},
			{ 33,100,
				{
				21201,21202,21203,21204,21205,21206,21207,21208,21209,21210,21211,21212,21213,21214,21215,21216,
				21301,21302,21303,21304,21305,21306,21307,21308,
				21501,21502,21503,21504,21505,21506,21507,21508,21509,21510,21511,21512,21513,
				21901,21902,21903,21904,21905,21906,21907,21908,21909,21910,21911,21912,21913,21914,21915,21916,21917,21918,21919,21920,
				22101,22102,22103,22104,22105,22106,22107,22108,22109,22110,22111,22112,22113,22114,22115,22116,
				22201,22202,22203,22204,22205,22206,
				22401,22402,22403,22404,22405,22406,22407,22408,22409,22410,22411,22412,
				22201,22202,22203,22204,22205,22206
				}
			},
			{100,100,
				{
				21001,21002,21003,21004,21005,21006,21007,21008,21009,21010,21011,21012,21013,21014,21015,21016,21017,21018,21019,
				21101,21102,21103,21104,21105,21106,21107,21108,21109,21110,21111,21112,21113,21114,21115,21116,
				21601,21602,21603,21604,21605,21606,21607,21608,21609,21610,21611,21612,21613,21614,21615,21616,21617,21618,21619,
				21701,21702,21703,21704,21705,21706,21707,21708,21709,21710,21711,21712,21713,21714,21715,21716,21717,21718,21719,
				21801,21802,21803,21804,
				22001,22002,22003,22004,22005,22006,22007,22008,22009,22010,22011,22012,22013,
				22401,22402,22403,22404,22405,22406,22407,22408,22409,22410,22411,22412
				}
			},
		},
]]--
