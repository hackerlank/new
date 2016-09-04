--收集装备任务
RoleTaskInfo30002 =
{
	ring = 3,
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	taskID = 30002,
	prefixs = {"普通的","优质的","完美的"},
	qualitys = {"白色",[[蓝色]],[[黄色]]},
	quality_color = {"<n>",[[<n color="GXColorBlue">]],[[<n color="GXColorYellowP">]],[[<n color="GXColorGreen">]]},
	--经验倍率
	rates = {1,     1.3,    1.6,    2.2,    3},
	--颜色随机概率表
	quality_table = {
		--minlevel,maxlevel,first-color,second-color,third-color,first-num,second-num,third-num,levelparam
		{6,		20,		0,		1,		2,		5,		1,		1,		10},
		{21,	40,		0,		1,		2,		5,		2,		1,		12},
		{41,	60,		0,		1,		2,		7,		3,		2,		16},
		{61,	70,		0,		1,		2,		9,		3,		2,		18},
		{71,	80,		1,		2,		2,		3,		2,		4,		23},
		{81,	90,		1,		2,		2,		4,		2,		4,		26},
		{91,	100,	1,		2,		2,		5,		2,		4,		29},
	},
}
-----------------------------------------------------------------------------------------------
--玩家变量
--30002-11 目标装备颜色
--30002-12 目标装备数量
--30002-13 目标装备部分
--30002-14 任务颜色
--30002-15 是否已经生成随机目标装备
--30002-16 免费刷颜色标记
--30002-17 刷新任务颜色次数
--30002-18 装备最低等级

--任务追踪
function RoleTaskInfo30002:GetTaskTraceText(uid)
	local msg = "<p><n>  收集委托：" .. RoleTaskInfo30002:getObjectName(uid,3)
	local minlevel = s_getTaskVar(uid,self.taskID,18)
	msg = msg .."</n><newline/><n>  装备等级需要达到"..minlevel..[[级以上</n><newline/><n>  任务回复:</n><goto id="60065" mapid="2" flagpoint="1" flagdrawrect="1"/></p>]]
	return msg
end

--任务简介
function RoleTaskInfo30002:GetTaskIntroText(uid)
	local msg =
		[[
title(收集装备)
body(
blankline()   替goto(60065,3)搜集一些指定的装备。
blankline()   每天可完成3次,hot(周三完成任务可获双倍经验)。周三完成任务所获得的数字，将在周六抽奖时使用。每天最多可完成3次，完成次数越多，获取的经验越高。
blankline()   exp(大量)
)
]]
	msg = parseToDesc(msg)
	return msg
end
-----------------------------------------------------------------------------------------------
--检查是否免费刷次颜色
function RoleTaskInfo30002:CheckTaskColor(uid)
	if s_getVar(uid,30002,14) == 0 and s_getVar(uid,30002,16) == 0 then
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
		s_addVar(uid,30002,14,color)
		s_addVar(uid,30002,16,1)
	end
end

function RoleTaskInfo30002:OnFinishTask(uid)
	s_addVar(uid,self.taskID,11,0)
	s_addVar(uid,self.taskID,12,0)
	s_addVar(uid,self.taskID,13,0)
	s_addVar(uid,self.taskID,14,0)
	s_addVar(uid,self.taskID,15,0)
	s_addVar(uid,self.taskID,16,0)
	s_addVar(uid,self.taskID,17,0)
	s_addVar(uid,self.taskID,18,0)
end

function RoleTaskInfo30002:OnDeleteTask(uid)
	RoleTaskInfo30002:OnFinishTask(uid)
end

function RoleTaskInfo30002:getRandObject(uid)
	if s_getVar(uid,self.taskID,15) > 0 then
		return
	end
	local curRound,curRing = GetTaskCurRoundAndRing(uid, self.taskID)
	local times = curRing
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local info = self.quality_table
	local quality = 0; local number = 1;
	for i=1, table.getn(info) do
		if level >= info[i][1] and level <= info[i][2] then
			quality = info[i][2+times]
			number = info[i][5+times]
			break
		end
	end
	--保存所有属性
	s_addVar(uid,self.taskID,11,quality)
	s_addVar(uid,self.taskID,12,number)
	s_addVar(uid,self.taskID,15,1)
	local user = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
end

function RoleTaskInfo30002:getObjectName(uid,format)
	local quality = s_getVar(uid,self.taskID,11)
	local number = s_getVar(uid,self.taskID,12)
	if quality >= 3 then
		quality = 0
	end
	local name = "装备"
	local minlevel = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	minlevel = 1
	if minlevel > 65 then
		minlevel = minlevel-10
	end
	if format == 1  then
		local taskcolor = s_getVar(uid,self.taskID,14)
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
			return string.format("%d个%d级以上（含%d级）的%s%s",number,minlevel,minlevel,self.qualitys[quality+1],name)
		else
			return string.format("%s(%d个%d级以上（含%d级）的%s%s)",targetinfo,number,minlevel,minlevel,
				self.qualitys[quality+1],name)
		end
	elseif format == 2 then
		return string.format("%d个</n>%s%d级以上（含%d级）的%s%s</n><n>",number,self.quality_color[quality+1],
			minlevel,minlevel,self.qualitys[quality+1],name)
	elseif format == 3 then
		return string.format("%d个%d级以上（含%d级）的%s%s",number,minlevel,minlevel,self.qualitys[quality+1],name)
	end
end

--检查该物品是否符合要求
function RoleTaskInfo30002:checkObject(uid,itemid)
	local name = s_getItemValue(uid,itemid,Item_Base_Name)
	if checkEquip(uid,itemid) ~= VALUE_OK then
		s_sysInfo(uid,name.."不是装备，无法交付")
		return
	end
	if s_getItemValue(uid,itemid,Item_Attribute_Judge) == 0 then
		s_sysInfo(uid,name.."是未鉴定的装备不能交付")
		return
	end
	local quality = s_getVar(uid,self.taskID,11)
	if s_getItemValue(uid,itemid,Item_Attribute_Quality) ~= quality then
		s_sysInfo(uid,name.."装备品质不符合要求，无法交付")
		return VALUE_FAIL
	end
	return VALUE_OK
end

--接任务文本定义
function RoleTaskInfo30002:GetSubTaskAcceptText(uid,taskid,subtaskid)
	local msg = [[body(    1.商人杰克的收集委托任务将会提供大量的升级经验，每天可完成3次newline()    2.任务等级分为白，蓝，黄，绿，紫五种状态，奖励随颜色的不同大幅提升newline()    3.可以用命运骰子刷新任务颜色blankline()    4.每天最多可完成3次，完成次数越多，获取的经验越高。blankline()    收集委托: %s %s blankline())]]
	RoleTaskInfo30002:getRandObject(uid)
	local objectstr = RoleTaskInfo30002:getObjectName(uid,1)
	local taskcolors = {" (白色任务)","hot3( (蓝色任务))","hot2( (黄色任务))","hot( (绿色任务))","hot5( (紫色任务))"}
	local tcolor = s_getVar(uid,self.taskID,14)
	local tcolorname = taskcolors[tcolor + 1]
	msg = string.format(msg,objectstr,tcolorname)
	msg = parseToTalk(msg)
	return msg
end

--任务描述
function RoleTaskInfo30002:GetSubTaskDescText(uid,taskid,subtaskid)
	local text = nil
	local subinfo = GetSubTaskInfo(taskid, subtaskid)
	if subinfo ~= nil and subinfo.desctext ~= "" then
		text = subinfo.desctext
	end
	if text == nil or text == "" then return end

	local name = RoleTaskInfo30002:getObjectName(uid,2)
	local text = string.gsub(text,"$NAME",name)
	local minlevel = s_getTaskVar(uid,self.taskID,18)
	if minlevel == 0 then
		local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
		minlevel = 1
		if level > 65 then
			minlevel = level - 10
		end
		s_addTaskVar(uid,self.taskID,18,minlevel)
	end
	text = string.gsub(text,"$MINLEVEL",minlevel)

	return text
end

--任务经验
function RoleTaskInfo30002:GetTaskExp(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local curRound,curRing = GetTaskCurRoundAndRing(uid,self.taskID)
	local times = curRing
	local times_modulus = 1
	if times == 2 then
		times_modulus = 1.5
	elseif times == 3 then
		times_modulus = 2.5
	end
	local color = s_getVar(uid,self.taskID,14)
	local color_modulus = self.rates[color+1]
	local levelparam = 10
	local info = self.quality_table
	for i=1, table.getn(info) do
		if level >= info[i][1] and level <= info[i][2] then
			levelparam = info[i][9]
			break
		end
	end
	local exp = math.floor(levelparam * times_modulus * (30+level^1.5)*color_modulus)
	return exp
end

function RoleTaskInfo30002:checkShow(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_OK
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local minLevel = s_getTaskValue(uid,self.taskID,TaskValue_MinLevel)
	local maxLevel = s_getTaskValue(uid,self.taskID,TaskValue_MaxLevel)
	if minLevel ~= nil and minLevel > level then
		return VALUE_FAIL
	end
	if maxLevel ~= nil  and maxLevel < level then
		return VALUE_FAIL
	end
	if CheckRoundAndRing(uid, self.taskID) == VALUE_FAIL then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30002:start(uid)
	local taskprocess = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if taskprocess == TaskProcess_Doing or taskprocess == TaskProcess_CanDone then
		RoleTaskInfo30002:checkDoing(uid)
	elseif taskprocess == TaskProcess_None then
		RoleTaskInfo30002:CheckTaskColor(uid)
		local msg = GetSubTaskAcceptText(uid,self.taskID,1)
		local fresh = "RoleTaskInfo30002:fresh($1)"
		local call = "RoleTaskInfo30002:add($1)"
		ShowNpcMenuBottomStyle(uid,msg,"接受(3)",call,"刷新颜色(3)",fresh)
	end
end

function RoleTaskInfo30002:add(uid)
	local num = s_getVar(uid,self.taskID,12)
	local color = s_getVar(uid,self.taskID,14)
	AddRoleSubTask(uid,self.taskID,1,num,0,color)
end

--刷新任务颜色
function RoleTaskInfo30002:fresh(uid)
	local color = s_getVar(uid,30002,14)
	if color == TaskColor_Purple then
		RoleTaskInfo30002:start(uid)
		s_sysInfo(uid,"任务颜色已经是最高品质")
		return
	end
	if s_deleteItemByBaseID(uid,26130,1,"刷新收集装备任务颜色") == VALUE_OK then
		local var = s_getVar(uid,30002,17)
		if var >= 50 then
			color = TaskColor_Purple
			s_addVar(uid,30002,17,0)
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
		s_addVar(uid,30002,14,color)
		s_addVar(uid,30002,17,s_getVar(uid,30002,17)+1)
	else
		s_openNewStore(uid,50)
		local name = s_getItemBaseValue(26130,5)
		local msg = string.format("没有%s，无法刷新",name)
		s_sysInfo(uid,msg)
	end
	RoleTaskInfo30002:start(uid)
end

function RoleTaskInfo30002:doing(uid)
	local msg = string.format([[请将收集到的%s放入背包格子中]],RoleTaskInfo30002:getObjectName(uid,3))
	--ShowTaskPack(uid,"收集装备",msg,"确定","RoleTaskInfo30002:recycEquip($1,$2,$3,$4)" )
	ShowNinePack(uid,"收集装备",msg,"确定","CheckEquip_30002($1,$2,$3,$4,$5,$6,$7,$8,$9,$10)")
end

function CheckEquip_30002(uid, item1, item2, item3, item4, item5, item6, item7, item8, item9)
	local itemlist = {}
	if item1 ~= 0 then table.insert(itemlist, item1) end
	if item2 ~= 0 then table.insert(itemlist, item2) end
	if item3 ~= 0 then table.insert(itemlist, item3) end
	if item4 ~= 0 then table.insert(itemlist, item4) end
	if item5 ~= 0 then table.insert(itemlist, item5) end
	if item6 ~= 0 then table.insert(itemlist, item6) end
	if item7 ~= 0 then table.insert(itemlist, item7) end
	if item8 ~= 0 then table.insert(itemlist, item8) end
	if item9 ~= 0 then table.insert(itemlist, item9) end

	for i = 1,table.getn(itemlist) do
		local process = s_getTaskValue(uid,30002,TaskValue_Process)
		if process == TaskProcess_CanDone then
			break
		end
		local thisid = itemlist[i]
		if thisid ~= 0 then
			if RoleTaskInfo30002:checkObject(uid,thisid) ~= VALUE_OK then
				RoleTaskInfo30002:doing(uid)
				return
			end
			--必须是当前等级相差10级以内的装备
			local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
			local itemlevel = s_getItemValue(uid,thisid,Item_Base_NeedLevel)
			local minlevel = s_getTaskVar(uid,30002,18)
			if itemlevel < minlevel then
				s_sysInfo(uid,string.format("装备等级不得低于%d级",minlevel))
				return
			end
			if s_deleteItemByThisID(uid,thisid,1,"RoleTaskInfo30002") ~= VALUE_OK then
				return
			end
			AddRoleTaskOperate(uid,30002)
		end
	end
	local process = s_getTaskValue(uid,30002,TaskValue_Process)
	if process == TaskProcess_Doing then
		RoleTaskInfo30002:doing(uid)
	elseif process == TaskProcess_CanDone then
		RoleTaskInfo30002:finish(uid)
	end
end

function RoleTaskInfo30002:checkDoing(uid)
	local process = s_getTaskValue(uid,self.taskID,TaskValue_Process)
	if process == TaskProcess_Doing then
		RoleTaskInfo30002:doing(uid)
	elseif process == TaskProcess_CanDone then
		local msg = GetSubTaskFinishText(uid,self.taskID,1)
		local call = "RoleTaskInfo30002:finish("..uid..")"
		ShowNpcMenuBottomStyle(uid,msg,"确定(3)",call,"离开(3)")
	end
end

function RoleTaskInfo30002:finish(uid)
	--周三收集日，奖励收集卡
	--[[local weekday = s_getCurTime(TIME_CURWDAYS)
	if weekday == 3 then
	s_addLuckyCard(uid,3)
	local exp = GetTaskExp(uid,self.taskID)
	s_refreshExp(uid,exp,ExpType_OptionalTask,30002)
	end ]]--
	AddRoleTaskOperate(uid,10000)
	FinishRoleTask(uid,self.taskID)
	RoleTaskInfo30002:OnFinishTask(uid)

	--活力点
	s_addVigorPoint(uid, 1)
	s_debugUser(uid,"完成收集装备，获得1点活力点")
end

AppendMenuToNpc(60065,"收集装备(2)","RoleTaskInfo30002:start($1)","RoleTaskInfo30002:checkShow($1)")
AppendMenuToNpc(60105,"收集装备(2)","RoleTaskInfo30002:start($1)","RoleTaskInfo30002:checkShow($1)")
