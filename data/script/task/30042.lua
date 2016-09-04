--收集材料
RoleTaskInfo30042 =
{
	ring = 3,
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	targetlevel = 0,
	content =
	{
		--minlevel,maxlevel,num,level,levelparam
		{28,	60,		20,		0,	20},
		{61,	70,		25,		0,	25},
		{71,	80,		4,		2,	30},
		{81,	90,		5,		2,	35},
		{91,	100,	6,		2,	40},
	},
}

--玩家变量
--30042-11 任务当前颜色
--30042-12 收集内容(1-药材，2-矿石)
--30042-13 刷颜色标记
--30042-14 刷新颜色次数

--检查是否是每天第一次任务（免费刷次颜色)
function RoleTaskInfo30042:CheckFirstTimeDay(uid)
	if s_getVar(uid,30042,11) == 0 and s_getVar(uid,30042,13) == 0 then
		local rand = math.random(1,100)
		local color = nil
		if rand <= 25 then
			color = TaskColor_White
		elseif rand <= 60 then
			color = TaskColor_Blue
		elseif rand <= 85 then
			color = TaskColor_Yellow
		elseif rand <= 97  then
			color = TaskColor_Green
		else
			color = TaskColor_Purple
		end
		s_addVar(uid,30042,11,color)
		s_addVar(uid,30042,13,1)
	end
end

--任务简介
function RoleTaskInfo30042:GetTaskIntroText(uid)
	local msg =
		[[
title(收集材料)
body(
blankline()   替goto(60049,3)搜集指定的蓝荧石或白玉兰。每天最多可完成3次，完成次数越多，获取的经验越高。
blankline()   每天可完成3次,hot(周三完成任务可获双倍经验)。周三完成任务所获得的数字，将在周六抽奖时使用。
blankline()   exp(大量)
)
]]
	msg = parseToDesc(msg)
	return msg
end

--完成任务
function RoleTaskInfo30042:OnFinishTask(uid)
	s_addVar(uid,30042,11,0)
	s_addVar(uid,30042,12,0)
	s_addVar(uid,30042,13,0)
	s_addVar(uid,30042,14,0)
end

--任务追踪
function RoleTaskInfo30042:GetTaskTraceText(uid)
	local msg = "body(%s)"
	--local color = s_getVar(uid,30042,11)
	local targetinfo = RoleTaskInfo30042:GetTargetInfo(uid,0)
	msg = string.format(msg,targetinfo)
	return parseToDesc(msg)
end

--任务经验
function RoleTaskInfo30042:GetTaskExp(uid)
	local curRound, curRing = GetTaskCurRoundAndRing(uid, 30042)
	local times = curRing
	local color = s_getVar(uid,30042,11)
	local colorrates = {1,	1.3,	1.6,	2.2,	3}
	local colorrate = colorrates[color+1]
	local level = s_getVar(uid,30042,10)
	_,_,_,param = RoleTaskInfo30042:GetTargetInfo(uid,color)
	local exp = math.floor(param * (1+(times-1)*0.5) * (30+level^1.5)*colorrate)
	return exp
end

--任务描述
function RoleTaskInfo30042:GetSubTaskDescText(uid,taskid,subtaskid)
	local text = [[title(收集材料)
body(
   %s交给goto(60049,3)。
blankline()hot2(任务描述:)blankline()
   矿洞探险者正在大量收集各种蓝荧石与白玉兰。blankline()   勇敢的冒险者啊，财富与荣耀正在那阴冷幽森的矿洞中向你们招手！每天最多可完成3次，完成次数越多，获取的经验越高。blankline())]]
	local color = s_getVar(uid,30042,11)
	local targetinfo = RoleTaskInfo30042:GetTargetInfo(uid,color)
	text = string.format(text,targetinfo)
	text = parseToDesc(text)
	return text
end

--检查是否可以接受任务
function RoleTaskInfo30042:CheckAccept(uid)
	local process = s_getTaskValue(uid,30042,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local minLevel = s_getTaskValue(uid,30042,TaskValue_MinLevel)
	local maxLevel = s_getTaskValue(uid,30042,TaskValue_MaxLevel)
	if minLevel ~= nil and minLevel > level then
		return VALUE_FAIL
	end
	if maxLevel ~= nil  and maxLevel < level then
		return VALUE_FAIL
	end
	if CheckRoundAndRing(uid, 30042) == VALUE_FAIL then
		return VALUE_FAIL
	end
	s_addVar(uid,30042,10,level)
	return VALUE_OK
end

function RoleTaskInfo30042:ShowAccept(uid)
	RoleTaskInfo30042:CheckFirstTimeDay(uid)
	local color = s_getVar(uid,30042,11)
	local msg = GetSubTaskAcceptText(uid,30042,1)
	local addcall = "RoleTaskInfo30042:AddTask($1)"
	local refreshcall = "RoleTaskInfo30042:RefreshTaskColor($1)"
	ShowNpcMenuBottomStyle(uid,msg,"接受(3)",addcall,"刷新颜色(3)",refreshcall)
end

function RoleTaskInfo30042:GetSubTaskAcceptText(uid,taskid,subtaskid)
	local taskcolor = s_getVar(uid,30042,11)
	--确定收集内容
	if s_getVar(uid,30042,12) == 0 then
		local rand = math.random(1,2)
		s_addVar(uid,30042,12,rand)
	end
	local msg = [[body(   1.矿洞探险家的收集委托任务将会提供大量的升级经验，每天可完成3次。blankline()   2.任务等级分白、蓝、黄、绿、紫五种状态，奖励随颜色的不同大幅提升。blankline()   3.可以用命运骰子刷新任务颜色。blankline()   4.每天最多可完成3次，完成次数越多，获取的经验越高。blankline()   %s %s blankline())]]
	local targetinfo = RoleTaskInfo30042:GetTargetInfo(uid,taskcolor)
	local COLOR = {"白","   蓝","   黄","   绿","   紫"}
	local hot = ""
	if taskcolor == TaskColor_White then
		hot = COLOR[taskcolor+1] .. "色收集委托:"
	elseif taskcolor == TaskColor_Blue then
		hot = "hot3(" .. COLOR[taskcolor+1] .. "色收集委托:)"
	elseif taskcolor == TaskColor_Yellow then
		hot = "hot2(" .. COLOR[taskcolor+1] .. "色收集委托:)"
	elseif taskcolor == TaskColor_Green then
		hot = "hot(" .. COLOR[taskcolor+1] .. "色收集委托:)"
	elseif taskcolor == TaskColor_Purple then
		hot=  "hot5(" .. COLOR[taskcolor+1] .. "色收集委托:)"
	end
	msg = string.format(msg,hot,targetinfo )
	msg = parseToTalk(msg)
	return msg
end

function RoleTaskInfo30042:GetTargetInfo(uid,taskcolor)
	local curRound,curRing = GetTaskCurRoundAndRing(uid,30042)
	local times = curRing
	local level = s_getVar(uid,30042,10)
	local targetnum = 0
	local levelparam = 0
	for i = 1, table.getn(self.content) do
		if level >= self.content[i][1] and level <= self.content[i][2] then
			targetnum = self.content[i][3] * 2 ^ (times -1)
			self.targetlevel = self.content[i][4]
			levelparam = self.content[i][5]
			break
		end
	end
	local names = {"白玉兰","蓝荧石"}
	local name = names[s_getVar(uid,30042,12)]
	local targetinfo = ""
	if taskcolor == TaskColor_White then
		targetinfo = ""
	elseif taskcolor == TaskColor_Blue then
		targetinfo = "hot3"
	elseif taskcolor == TaskColor_Yellow then
		targetinfo = "hot2"
	elseif taskcolor == TaskColor_Green then
		targetinfo = "hot"
	elseif taskcolor == TaskColor_Purple then
		targetinfo = "hot5"
	end
	if taskcolor == TaskColor_White then
		targetinfo = string.format("%s收集%d个%s",targetinfo,targetnum,name)
	else
		targetinfo = string.format("%s(收集%d个%s)",targetinfo,targetnum,name)
	end
	return targetinfo, targetnum, self.targetlevel,levelparam
end

--添加任务
function RoleTaskInfo30042:AddTask(uid)
	local color = s_getVar(uid,30042,11)
	local num = 0
	local level = 0
	_,num,level = RoleTaskInfo30042:GetTargetInfo(uid,color)
	AddRoleSubTask(uid,30042,1,num,0,color)
	--添加任务收集材料
	local itemlist = {27113,27112}
	local item = itemlist[s_getVar(uid,30042,12)]
	s_addTaskMaterial(uid,30042,{{item,level,num}})
end

--刷新任务颜色
function RoleTaskInfo30042:RefreshTaskColor(uid)
	local color = s_getVar(uid,30042,11)
	if color == TaskColor_Purple then
		RoleTaskInfo30042:ShowAccept(uid)
		s_sysInfo(uid,"已经是最高品质")
		return
	end
	--扣除物品，生成新颜色
	if s_deleteItemByBaseID(uid,26130,1,"刷新收集材料任务颜色") == VALUE_OK then
		local var = s_getVar(uid,30042,14)
		if var >= 50 then
			color = TaskColor_Purple
			s_addVar(uid,30042,14,0)
		end
		if color ~= TaskColor_Purple then
			local rand = math.random(1,100)
			if rand <= 30 then
				color = TaskColor_White
			elseif rand <= 63 then
				color = TaskColor_Blue
			elseif rand <= 87 then
				color = TaskColor_Yellow
			elseif rand <= 97  then
				color = TaskColor_Green
			else
				color = TaskColor_Purple
			end
		end
		s_addVar(uid,30042,11,color)
		s_addVar(uid,30042,14,s_getVar(uid,30042,14)+1)
	else
		s_openNewStore(uid,50)
		local name = s_getItemBaseValue(26130,5)
		local msg = string.format("没有%s，无法刷新",name)
		s_sysInfo(uid,msg)
	end
	RoleTaskInfo30042:ShowAccept(uid)
end

--删除任务
function RoleTaskInfo30042:OnDeleteTask(uid)
	RoleTaskInfo30042:OnFinishTask(uid)
end

--检查是否显示完成菜单
function RoleTaskInfo30042:CheckFinish(uid)
	local process = s_getTaskValue(uid,30042,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_OK
	end
	return VALUE_FAIL
end

--显示交付任务菜单
function RoleTaskInfo30042:ShowFinish(uid)
	local process = s_getTaskValue(uid,30042,TaskValue_Process)
	if process == TaskProcess_Doing then
		local doing = s_getTaskValue(uid,30042,TaskValue_PromptText)
		doing = trim(doing)
		ShowNpcMenuBottomStyle(uid,doing,"离开(5)")
	elseif process == TaskProcess_CanDone then
		local itemlist = {27113,27112}
		local needitem = itemlist[s_getVar(uid,30042,12)]
		local msg = [[请将收集的材料放入下面的格子中]]
		local call = "RoleTaskInfo30042:recycMaterial($1,$2,$3,$4)"
		ShowTaskPack(uid,"收集物品",msg,"确定",call,needitem,self.targetlevel,0)
	end
end
function RoleTaskInfo30042:recycMaterial(uid,baseid,thisid,num)
	if thisid == 0 or thisid == nil then
		return
	end
	_,neednum,needlevel = RoleTaskInfo30042:GetTargetInfo(uid,color)
	local itemlist = {27113,27112}
	local needitem = itemlist[s_getVar(uid,30042,12)]

	if needitem ~= baseid then
		s_sysInfo(uid,"不是需要收集的物品，无法交付",ChatPos_Sys + ChatPos_Important)
		return
	end
	if num < neednum then
		s_sysInfo(uid,"物品数量不符合要求，无法交付",ChatPos_Sys + ChatPos_Important)
		return
	end
	local level = s_getItemValue(uid,thisid,Item_Attribute_Level)
	if level < needlevel then
		s_sysInfo(uid,"物品等级不符合要求，无法交付",ChatPos_Sys + ChatPos_Important)
		return
	end
	RoleTaskInfo30042:FinishTask(uid)
	if FinishRoleTask(uid,30042) == VALUE_OK then
		s_deleteItemByThisID(uid,thisid, neednum,"RoleTaskInfo30042")
	end
end

--避免CommonTaskReward
function RoleTaskInfo30042:TaskReward(uid, taskid, subtaskid)
end

--交付任务
function RoleTaskInfo30042:FinishTask(uid)
	local exp = GetTaskExp(uid,30042)
	--周三收集日，经验2倍
	s_refreshExp(uid,exp,ExpType_OptionalTask,30042)
	s_addVar(uid,30042,11,0)
	s_addVar(uid,30042,12,0)
	--周三收集日，奖励收集卡
	--[[local weekday = s_getCurTime(TIME_CURWDAYS)
	if weekday == 3 then
	s_addLuckyCard(uid,3)
	s_refreshExp(uid,exp,ExpType_OptionalTask,30042)
	end]]--
	AddRoleTaskOperate(uid,10001)
	AddRoleTaskOperate(uid,10002)

	--活力点
	s_addVigorPoint(uid, 1)
	s_debugUser(uid,"完成收集材料，获得1点活力点")
end

--NPC菜单
AppendMenuToNpc(60049,"收集材料(2)","RoleTaskInfo30042:ShowAccept($1)","RoleTaskInfo30042:CheckAccept($1)")
AppendMenuToNpc(60049,"收集材料(2)","RoleTaskInfo30042:ShowFinish($1)","RoleTaskInfo30042:CheckFinish($1)")

