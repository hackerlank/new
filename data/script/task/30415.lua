--要人警护
RoleTaskInfo30415 =
{
	ring = 1,
	subtasknum = 1,
	subtask1 =
	{
		task = {s_taskCustom,{0,0,0,0}},
	},

	--要人 公主特使
	guards = {
		{1,	60971},		--公主特使（白）
		{2,	60972},		--公主特使（蓝）
		{3, 60973},		--公主特使（黄）
		{4, 60974},		--公主特使（绿）
		{5, 60975},		--公主特使（紫）
	},
}

--////////////////////////////////////////////
--任务变量意义
--11 补给车是否被劫
--12 目标NPC ID
--13 目标NPC 地图ID
--////////////////////////////////////////////

--任务简介
function RoleTaskInfo30415:GetTaskIntroText(uid)
	local msg =
		[[
title(要人警护)
body(
blankline()   在goto(60559,5)处接受护送公主特使的任务，并将它押送到指定的目的地。
blankline()   将获得海量经验，越多团员参与，经验越高。
)
]]
	return parseToDesc(msg)
end

--获得交付目标NPC
function RoleTaskInfo30415:GetTargetNpc(uid)
	local npc = s_getTaskVar(uid,30415,12)
	local mapid = s_getTaskVar(uid,30415,13)
	if npc ~= 0 and mapid ~= 0 then
		return  npc,mapid
	end
	local target = 126
	local map = 7
	s_addTaskVar(uid,30415,12,target)
	s_addTaskVar(uid,30415,13,map)
	return target,map
end

--任务追踪
function RoleTaskInfo30415:GetTaskTraceText(uid)
	local msg = [[body( 任务回复：goto(%u,%u))]]
	local npcid,mapid = RoleTaskInfo30415:GetTargetNpc(uid)
	msg = string.format(msg,npcid,mapid)
	return parseToDesc(msg)
end

--任务描述
function RoleTaskInfo30415:GetSubTaskDescText(uid, taskid, subtaskid)
	local target,map = RoleTaskInfo30415:GetTargetNpc(uid)
	local text = nil
	local subinfo = GetSubTaskInfo(taskid, subtaskid)
	if subinfo ~= nil and subinfo.desctext ~= "" then
		text = subinfo.desctext
	end
	if text == nil or text == "" then return end
	text = string.gsub(text,"99999",target)
	text = string.gsub(text,"66666",map)
	local foregift = 1000
	text = string.gsub(text,"$FOREGIFT",foregift)
	local offline = s_getVar(uid,8,11)*0.1
	text = string.gsub(text,"$OFFLINE",offline)
	return text
end

--每天次数
function RoleTaskInfo30415:RefreshTaskRing(uid)
	--速递日可完成4次
	local weekday = s_getCurTime(TIME_CURWDAYS)
	if weekday == 0 then
		self.ring = 3
		return
	end
	self.ring = 2
	return
end

--获得补给车ID
function RoleTaskInfo30415:GetGuardID(uid,color)
	if color == -1 then	return 60976 end --破损的
	for i = 1, table.getn(self.guards) do
		if color ==  self.guards[i][1] then
			return self.guards[i][2]
		end
	end
end

--检查是否可以接受任务
function RoleTaskInfo30415:CheckAccept(uid)
	RoleTaskInfo30415:RefreshTaskRing(uid)
	local process = s_getTaskValue(uid,30415,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	local process = s_getTaskValue(uid,30022,TaskValue_Process)
	if process ~= TaskProcess_None then
		return VALUE_FAIL
	end
	local pretask = s_getTaskValue(uid,30415,TaskValue_PreTask)
	if pretask ~= nil and pretask ~= 0 then
		local process = s_getTaskValue(uid,pretask,TaskValue_Process)
		if process ~= TaskProcess_Done then
			return VALUE_FAIL
		end
	end

	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local minLevel = s_getTaskValue(uid,30415,TaskValue_MinLevel)
	local maxLevel = s_getTaskValue(uid,30415,TaskValue_MaxLevel)
	if minLevel ~= nil and minLevel > level then
		return VALUE_FAIL
	end
	if maxLevel ~= nil  and maxLevel < level then
		return VALUE_FAIL
	end
	if CheckRoundAndRing(uid, 30415) == VALUE_FAIL then
		return VALUE_FAIL
	end
	local corps = s_getCorpsId(uid)
	if corps == 0 then
		return VALUE_FAIL
	end
	if s_getCorpsVar(corps,1,34) == 0 then
		return VALUE_FAIL
	end
	local corpstask = s_getCorpsVar(corps,1,32)
	if corpstask < 33610 or corpstask >= 33620 then
		return VALUE_FAIL
	end
	if s_getCorpsVar(corps, 3, 7) == 1 then
		return VALUE_FAIL
	end
	local fun = s_getFunction(uid,Relation_Corps)
	if fun == nil or (fun ~= FunctionType_CLeader and fun ~= FunctionType_CBeauty) then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--接受任务对话
function RoleTaskInfo30415:ShowAccept(uid)
	if c_checkGuard(uid, 1) ~= VALUE_OK then return end

	local foregift = 1000
	if s_getMoney(uid,MoneyType_Money) < foregift then
		local msg = string.format("接取该任务需要押金银币%d，当前押金不足，无法接取。",foregift)
		s_sysInfo(uid,msg)
		return VALUE_FAIL
	end
	local msg = GetSubTaskAcceptText(uid,30415,1)
	local foregift = 1000
	msg = string.gsub(msg,"$FOREGIFT",foregift)
	local call = string.format("RoleTaskInfo30415:AddTask($1)")
	ShowNpcMenuBottomStyle(uid,msg,"接受(3)",call,"离开(3)")
end

--接受任务
function RoleTaskInfo30415:AddTask(uid)
	if RoleTaskInfo30415:CheckAccept(uid) ~= VALUE_OK then
		return VALUE_FAIL
	end
	if c_checkGuard(uid, 1) ~= VALUE_OK then
		return VALUE_FAIL
	end
	local corps = s_getCorpsId(uid)
	if corps == 0 then
		return VALUE_FAIL
	end
	local foregift = 1000
	if s_removeMoney(uid,MoneyType_Money,foregift,"前线速递押金") ~= VALUE_OK then
		local msg = string.format("接取该任务需要押金银币%d文，当前押金不足，无法接取。",foregift)
		s_sysInfo(uid,msg)
		return VALUE_FAIL
	end

	local color = s_getCorpsVar(corps,1,36)
	local guardid = RoleTaskInfo30415:GetGuardID(uid,color)
	local endnpc = RoleTaskInfo30415:GetTargetNpc(uid)
	local npc = s_summonGuard(uid,guardid,30415,endnpc,foregift)
	if npc == 0 or npc == nil then
		s_sysInfo(uid,"补给车召唤失败")
		return VALUE_FAIL
	end

	local worldlevel = s_getWorldLevel()
	if worldlevel == 3 then
		s_addbuff(SCENE_ENTRY_NPC,npc,105,0,10)
	elseif worldlevel == 4 then
		s_addbuff(SCENE_ENTRY_NPC,npc,105,4000,10)
	elseif worldlevel == 5 then
		s_addbuff(SCENE_ENTRY_NPC,npc,105,9000,10)
	elseif worldlevel == 6 then
		s_addbuff(SCENE_ENTRY_NPC,npc,105,18000,10)
	elseif worldlevel == 7 then
		s_addbuff(SCENE_ENTRY_NPC,npc,105,27000,10)
	elseif worldlevel == 8 then
		s_addbuff(SCENE_ENTRY_NPC,npc,105,38000,10)
	elseif worldlevel == 9 then
		s_addbuff(SCENE_ENTRY_NPC,npc,105,51000,10)
	elseif worldlevel == 10 then
		s_addbuff(SCENE_ENTRY_NPC,npc,105,65000,10)
	end

	AddRoleSubTask(uid,30415,1,1,1,color-1)
	s_addTaskVar(uid,30415,14,corps)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,21) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,21)
	end
	s_addbuff(SCENE_ENTRY_PLAYER,uid,21,1,60*60)

	-- 贵团发不了团拓展要人警护，是否立刻前往，保护特使视察？
	local sid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
	local x = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local y = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
	local msg = "贵团发布了团拓展要人警护，是否立刻前往，保护特使视察?"
	s_sysCallUp(Relation_Corps,corps,sid,x,y,msg,2,uid)
	--记录本团今日已接过此任务
	s_addCorpsVar(corps, 3, 7, 1)

	if color >= 4 then
		local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
		local countryname = s_getCountryName(homeland)
		local cname = s_getCorpsField(corps, CorpVar_Name)
		s_worldInfo(countryname.."的"..cname.."团担当要人警护，保护公主特使巡视沙漠边境。")
	end

	return VALUE_OK
end

--是否显示交付任务
function RoleTaskInfo30415:CheckShowFinish(uid,npcid)
	RoleTaskInfo30415:RefreshTaskRing(uid)
	local process = s_getTaskValue(uid,30415,TaskValue_Process)
	if process == TaskProcess_None then
		return VALUE_FAIL
	end
	local target = s_getTaskVar(uid,30415,12)
	if target ~= npcid then
		return VALUE_FAIL
	end
	return VALUE_OK
end
--显示完成任务对话
function RoleTaskInfo30415:ShowFinish(uid)
	--没有补给车，提示玩家放弃任务
	local guard = s_getGuardID(uid)
	if guard  == 0 then
		s_sysInfo(uid,"要人不在你身边,任务失败，请删除任务后重新接取 ")
		return
	end
	s_resetTrafficType(uid)
	local msg = GetSubTaskFinishText(uid,30415,1)
	local call = "RoleTaskInfo30415:FinishTask($1)"
	ShowNpcMenuBottomStyle(uid,msg,"完成(3)",call,"离开(3)")
end

--避免CommonTaskReward
function RoleTaskInfo30415:TaskReward(uid, taskid, subtaskid)
end

--交付任务
function RoleTaskInfo30415:FinishTask(uid)
	if s_commitGuard(uid,30415) ~= VALUE_OK then
		s_sysInfo(uid,"公主特使还没有护送回来")
		return
	end
	local corps = s_getCorpsId(uid)
	if corps == 0 then
		s_delTask(uid,30415,1)
		return
	end

	local member_num = 0
	local list = s_getNineEntry(SCENE_ENTRY_PLAYER ,uid,10)
	for i = 1,table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER and corps == s_getCorpsId(list[i+1]) then
			member_num = member_num+1
		end
	end
	local color_rate = {1,1.5,2,3,6}
	local color = s_getTaskValue(uid,30415,TaskValue_Color)

	--返还押金
	local foregift = 1000
	if s_getTaskVar(uid,30415,11) == 1 then
		foregift = 0
	end

	if foregift > 0 then
		s_addMoney(uid,MoneyType_Money,foregift,"前线速递押金返还")
	end

	local hour = s_getCurTime(TIME_CURHOURS)
	if s_getTaskVar(uid,30415,14) ~= corps or hour == 0 then
		s_delTask(uid,30415,1)
		return
	end

	local rand = math.random(1,100)
	local list = s_getNineEntry(SCENE_ENTRY_PLAYER ,uid,15)
	for i = 1,table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER and corps == s_getCorpsId(list[i+1]) then
			local level = s_getValue(SCENE_ENTRY_PLAYER,list[i+1],VALUE_TYPE_LEVEL)
			local exp = math.floor(100*(50+0.1*level^2.2)*color_rate[color+1]*math.min(1+member_num/15,2)) --获得经验
			if s_getTaskVar(uid,30415,11) == 1 then
				exp = math.floor(exp * 0.5)
			end
			--经验
			s_refreshExp(list[i+1],exp,ExpType_OptionalTask,30415)
			--协作点
			if s_getCorpsVar(corps,1,34) == 1 and s_getCorpsVar(corps,1,32) >= 33610 and
				s_getCorpsVar(corps,1,32) <= 33614 then
				if s_getTaskVar(uid,30415,11) == 1 then
					s_addField(list[i+1],UserVar_CooperationPoint,5)
				else
					s_addField(list[i+1],UserVar_CooperationPoint,10)
				end
			end
			if s_getVar(list[i+1],130,5) == 0 then
				s_addVar(list[i+1],130,5,1)
				s_addVar(list[i+1],130,100,s_getVar(list[i+1],130,100)+1);
				s_debugUser(list[i+1],"团活力，团拓展，参与度：1")
			end
			-- 特色奖励
			if rand <= 30 and color == 0 then
				s_addItem(list[i+1],55058,0,1,0,"1-1","要人警护特色奖励")
			elseif rand <= 40 and color == 1 then
				s_addItem(list[i+1],55058,0,1,0,"1-1","要人警护特色奖励")
			elseif rand <= 50 and color == 2 then
				s_addItem(list[i+1],55058,0,1,0,"1-1","要人警护特色奖励")
			elseif rand <= 80 and color == 3 then
				s_addItem(list[i+1],55058,0,1,0,"1-1","要人警护特色奖励")
			elseif color == 4 then
				s_addItem(list[i+1],55058,0,1,0,"1-1","要人警护特色奖励")
			end
		end
	end

	FinishRoleTask(uid,30415)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,21) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,21)
	end
end

function RoleTaskInfo30415:OnDeleteTask(uid)
	s_clearEscort(uid)
	s_killGuard(uid)
	s_removebuff(SCENE_ENTRY_PLAYER,uid,21)
end

--NPC菜单
AppendMenuToNpc(60559,"要人警护(2)","RoleTaskInfo30415:ShowAccept($1)","RoleTaskInfo30415:CheckAccept($1)")

