--达芬奇密码
--20 刷新类子任务的标记 在60806 60807能刷
RoleTaskInfo31000 =
{
	ring = 1,
	subtasknum = 1,
	subtask1 =
	{
		random =
		{
			{{0,100},{0,100},{10,100},{30,100},{100,100}},		--black
			{{1,100},{4,100},{14,100},{44,100},{100,100}},		--white
			{{2,100},{7,100},{22,100},{62,100},{100,100}},		--blue
			{{5,100},{15,100},{40,100},{90,100},{100,100}},	--yellow
			{{10,100},{30,100},{80,100},{100,100},{0,100}},	--green
			{{20,100},{70,100},{100,100},{0,100},{0,100}},	--purple
		},

		randomtask =
		{
			{ 0, 0,{33500,33500,33501,33501,33500,33500,33501,33501,33502,33503,33504,33505,33506,33507,33508,33509,33510,33511,33512,33513,33514,33511,33512,33513,33514,33515,33516,33517,33518,33515,33516,33517,33518,33519,33519,33519,33519,33519,33519,33519,33519,33520,33520,33520,33520,33520,33520,33520,33520} },
			{ 0, 0,{33000,33000,33001,33001,33000,33000,33001,33001,33002,33003,33004,33005,33006,33007,33008,33009,33010,33011,33012,33013,33014,33011,33012,33013,33014,33015,33016,33017,33018,33015,33016,33017,33018,33019,33019,33019,33019,33019,33019,33019,33019,33020,33020,33020,33020,33020,33020,33020,33020} },
			{ 0, 0,{32500,32500,32500,32500,32500,32500,32500,32500,32502,32503,32504,32505,32506,32507,32508,32509,32510,32511,32512,32513,32514,32511,32512,32513,32514,32515,32516,32517,32518,32515,32516,32517,32518,32519,32519,32519,32519,32519,32519,32519,32519,32520,32520,32520,32520,32520,32520,32520,32520} },
			{ 0, 0,{32000,32000,32000,32000,32000,32000,32000,32000,32002,32003,32004,32005,32006,32007,32008,32009,32010,32011,32012,32013,32014,32011,32012,32013,32014,32015,32016,32017,32018,32015,32016,32017,32018,32019,32019,32019,32019,32019,32019,32019,32019,32020,32020,32020,32020,32020,32020,32020,32020} },
			{ 0, 0,{31500,31500,31500,31500,31500,31500,31500,31500,31502,31503,31504,31505,31506,31507,31508,31509,31510,31511,31512,31513,31514,31511,31512,31513,31514,31515,31516,31517,31518,31515,31516,31517,31518,31519,31519,31519,31519,31519,31519,31519,31519,32019,32019,32019,32019,32019,32019,32019,32019} },
		},
		task = {s_taskCustom, {0,0,0,0}},
	},
}


--检测是否为最高品质任务
function RoleTaskInfo31000:IsPurpleTask(uid)
	local taskid = 31000
	local subtaskid = 1

	--当前的随机子任务
	local randomtaskid = s_getVar(uid,taskid,TvarIndex_RandomTaskID)
	if randomtaskid == nil or randomtaskid == 0 then
		return
	end

	local subinfo = GetSubTaskInfo(taskid, subtaskid)
	if subinfo == nil then return VALUE_FAIL end

	--检测是否为最高品质任务
	for i=1, table.getn(subinfo.randomtask[1][3]), 1 do
		if randomtaskid == subinfo.randomtask[1][3][i] then
			return VALUE_OK
		end
	end
	return VALUE_FAIL
end


--任务随机，根据输入的运势
--fortune 运势（黑1,...）
function RoleTaskInfo31000:RandomTask(uid, fortune)
	--从随机任务列表中选一个子任务
	local taskid = 31000
	local subtaskid = 1
	local subinfo = GetSubTaskInfo(taskid, subtaskid)
	if subinfo == nil then return end
	if fortune > #subinfo.random then fortune = 1 end

	--选出符合玩家条件的子任务，先选中几率，再检查条件
	local rand = math.random(1,100)
	local group = 1
	for i=1, table.getn(subinfo.randomtask), 1 do
		if rand <= subinfo.random[fortune][i][1] then
			group = i
			break
		end
	end

	local listOriginTask = subinfo.randomtask[group][3]
	local listTask = {}
	for j=1, table.getn(listOriginTask), 1 do
		local randomTaskInfo = GetTaskInfo(listOriginTask[j])
		local randomTaskSubInfo = GetSubTaskInfo(listOriginTask[j], 1)
		if randomTaskInfo == nil then
			return 0
		end
		if randomTaskSubInfo == nil then
			return 0
		end
		if randomTaskInfo.parent == nil or randomTaskInfo.parent ~= taskid then
			return 0
		end
		if RunCheckList(uid, taskid, subtaskid, randomTaskSubInfo.onacceptcheck) == VALUE_OK and RunCheckList(uid, taskid, subtaskid, randomTaskSubInfo.onacceptcheck1) == VALUE_OK then
			table.insert(listTask, listOriginTask[j])
		end
	end

	local randomtaskid = 0
	if table.getn(listTask) > 0 then
		local rand = math.random(1, table.getn(listTask))
		randomtaskid = listTask[rand]
	end

	if randomtaskid == 0 then return end

	--记录随机子任务
	s_addVar(uid,taskid,TvarIndex_RandomTaskID,randomtaskid)
end


function RoleTaskInfo31000:Accept(uid)
	local taskid = 31000
	local subtaskid = 1
	local taskProcess = s_getTaskValue(uid,taskid,TaskValue_Process)
	if taskProcess ~= TaskProcess_Done and taskProcess ~= TaskProcess_None then
		return VALUE_FAIL
	end

	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_USABLE_TILED_POINT) < 100 then
		s_messageBox(uid,"体力值不够，需要100点，接取任务失败！")
		return VALUE_FAIL
	end

	--[[
	local lastday = s_getVar(uid, taskid, 3)
	local today = s_getCurTime(TIME_ALLDAYS)
	if today == lastday then
	return VALUE_FAIL
	end
	]]
	--获取子任务
	local randomtaskid = s_getVar(uid,taskid,TvarIndex_RandomTaskID)
	if randomtaskid == nil or randomtaskid == 0 then
		return
	end

	--再检查一下任务的可接性，随机任务和接任务之间，玩家的状态可能有变，比如拉车状态
	local randomTaskSubInfo = GetSubTaskInfo(randomtaskid, 1)
	if randomTaskSubInfo == nil then return end
	if RunCheckList(uid, 31000, 1, randomTaskSubInfo.onacceptcheck, 1) == VALUE_FAIL then return end
	if RunCheckList(uid, 31000, 1, randomTaskSubInfo.onacceptcheck1, 1) == VALUE_FAIL then return end

	--接受自身任务：子任务完成时，才能完成自身任务
	AddRoleSubTask(uid, taskid, subtaskid, 1, 0, 0, randomtaskid)

	--接受子任务
	s_actionAddRoleTask( uid, taskid, subtaskid, {randomtaskid} )

	--扣体力点
	s_subValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_USABLE_TILED_POINT, 100)

	--记录父任务和子任务变量
	s_addTaskVar(uid,randomtaskid,MvarIndex_Parent,taskid)
	s_addTaskVar(uid,taskid,MvarIndex_Child,randomtaskid)
	s_addVar(uid,taskid,TvarIndex_CurRandom,0)
	s_addVar(uid,116,28,0)

	--如果有团，发团消息
	local corps = s_getCorpsId(uid)
	if corps == nil or corps == 0 then
		return
	end
	local subinfo = GetSubTaskInfo(randomtaskid, 1)
	local color = subinfo.color
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local quality = ""
	if color == TaskColor_White then
		quality = quality .. "白色"
	elseif color == TaskColor_Blue then
		quality = quality .. "蓝色"
	elseif color == TaskColor_Yellow then
		quality = quality .. "黄色"
	elseif color == TaskColor_Green then
		quality = quality .. "绿色"
	elseif color == TaskColor_Purple then
		quality = quality .. "紫色"
	end
	local taskname = s_getTaskValue(uid,randomtaskid,TaskValue_Name)
	local msg = "本团的成员["..name.."]在[军乐城]的[超魔导师达芬奇]处接取了["..quality.."品质的]["..taskname.."]任务！"
	s_corpsInfo(corps, msg, ChatPos_Sys)
	s_nineInfo(uid,"["..name.."]在接取了["..quality.."品质的]["..taskname.."]任务！",ChatPos_Sys)
end


function RoleTaskInfo31000:Show(uid)
	local process = s_getTaskValue(uid,31000,TaskValue_Process)
	if process == TaskProcess_None then
		CheckRoundAndRing(uid,31000)
	end

	local fortune = s_getField(uid,UserVar_Fortune)
	local randomtaskid = s_getVar(uid,31000,TvarIndex_RandomTaskID)
	local subinfo = GetSubTaskInfo(randomtaskid, 1)
	local msg = GetSubTaskAcceptText(uid,randomtaskid,1)
	local color = 0
	if subinfo  ~= nil then
		color = subinfo.color
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local percent = {1,1.5,2,3,6}
	local exp = math.floor(225*(50+0.1*(level^2.2))*percent[color+1] * 1.5) --获得经验
	ShowRandomTask(uid,msg,fortune,color,randomtaskid,exp)
	return VALUE_OK
end

function RoleTaskInfo31000:OnFinishTask(uid)
	--任务系数*完成度系数*(50+0.1*角色等级^2.2)*颜色倍率
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local randomtaskid = s_getVar(uid,31000,TvarIndex_RandomTaskID)
	if s_getVar(uid,116,28) ~= 0 then
		randomtaskid = s_getVar(uid,116,28)
	end
	local subinfo = GetSubTaskInfo(randomtaskid, 1)
	if subinfo == nil then
		return
	end
	local color = subinfo.color
	local percent = {1,1.5,2,3,6}
	local exp = math.floor(225*(50+0.1*(level^2.2))*percent[color+1] * 1.5) --获得经验
	s_addVar(uid,31000,TvarIndex_RandomTaskID,0)
	s_refreshExp(uid,exp,ExpType_OptionalTask,31000)
	s_addItem(uid,29303,0,1,0,"1-1","RoleTaskInfo31000")
	--活力点
	s_addVigorPoint(uid, 10)
	s_debugUser(uid,"完成达芬奇随机任务，获得10点活力点")
end

function RoleTaskInfo31000:GetTaskIntroText(uid)
	local msg =
		[[title(随机任务)blankline()   每次接取随机任务需消耗100体力值，可获取1.5倍经验。body(blankline()      超魔导师达芬奇，不但是光明神术大师，在黑暗魔法领域也一直无人可及。洞悉古今，堪破生死的他一直以来都是人类中最接近神的那一位。一千一百年前，他便在世间行走，获得了巨大的荣誉与声望。五百七十三年前，他突破虚空，进入诸神禁忌之地。据说他在那里获得了三张记载着惊天秘密的神秘羊皮卷。销声匿迹数百年的他，突然出现，并且公然求助来自各国的冒险者。这，不得不让人怀疑。也许就有什么惊天的秘密在等着你！blankline()   每天的hot(10：00)至hot(23：00)可在军乐城goto(60789,5)处接取。blankline()   exp(海量)！)]]
	return parseToDesc(msg)
end


--AppendMenuToNpc(60045,"达芬奇密码-刷颜色 (3)","RoleTaskInfo31000:RandomTask($1,".. 1 ..")","RoleTaskInfo31000:Show()")

