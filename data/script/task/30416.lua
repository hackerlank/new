--////////////////////////////////////////////
--任务变量意义
--////////////////////////////////////////////
function RoleTaskInfo30416_ShowRetreat(uid, taskid, subtaskid, paramlist)
	local curCountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	local invadeCountry = s_getCountryVar(curCountry,1,116)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if homeland ~= invadeCountry then
		s_sysInfo(uid,"只有奇袭发起国才能指挥奇袭!",ChatPos_Sys)
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30416_RetreatCheck(uid, taskid, subtaskid, paramlist)
	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	if curcountry == nil or curcountry == 0 then
		return VALUE_FAIL
	end
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if homeland == nil or homeland  == 0 then
		return VALUE_FAIL
	end
	--非奇袭本国国家
	if s_getCountryVar(curcountry,1,116) ~= homeland then
		return VALUE_FAIL
	end
	if s_getFunction(uid,Relation_Country) ~= FunctionType_Marshal and s_getFunction(uid,Relation_Country) ~= FunctionType_ViceMarshal then
		s_sysInfo(uid,"只有国王和元帅才能指挥奇袭!",ChatPos_Sys)
		return VALUE_FAIL
	end

	if s_getCountryVar(homeland,1,117) == 0 then
		s_sysInfo(uid,"难得来次，可不能空手而归！",ChatPos_Sys)
		return VALUE_FAIL
	end
	if s_getValue(SCENE_ENTRY_NPC,s_getCountryVar(curcountry,1,121),VALUE_TYPE_BASE_ID) ~= 60995 then
		return VALUE_FAIL
	end
	s_clearNpc(s_getCountryVar(curcountry,1,121))
	s_closeRobinInterface(uid)
	return VALUE_OK
end

function retreatDeal(uid, taskid, subtaskid, paramlist)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local robinGotMoney = s_getCountryVar(homeland,1,117)
	if robinGotMoney ~= 0 and robinGotMoney ~= nil then
		return
	end
end

function RoleTaskInfo30416_FinishDeal(uid, taskid, subtaskid, paramlist)
	local curCountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	local curCountryName = s_getCountryName(curCountry)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local homelandName = s_getCountryName(homeland)
	local money = s_getCountryVar(homeland,1,117)
	s_worldInfo("奇袭<" .. curCountryName .. ">的侠盗罗宾成功撤离，将" .. money .. "银币运回了<" .. homelandName .. ">金库！", ChatPos_Important + ChatPos_Sys)
	local ninePlayerList = s_getNineEntry(SCENE_ENTRY_PLAYER,uid,30)
	for i = 1, table.getn(ninePlayerList), 2 do
		if ninePlayerList[i] == SCENE_ENTRY_PLAYER then
			local level = s_getValue(SCENE_ENTRY_PLAYER,ninePlayerList[i+1],VALUE_TYPE_LEVEL)
			if s_getValue(SCENE_ENTRY_PLAYER,ninePlayerList[i+1],VALUE_TYPE_HOMELAND) == homeland then
				exp = math.floor(200 * (50 + 0.1 * level ^ 2.2))
				s_refreshExp(ninePlayerList[i+1],exp,ExpType_OptionalTask,0)
			elseif s_getValue(SCENE_ENTRY_PLAYER,ninePlayerList[i+1],VALUE_TYPE_HOMELAND) == curCountry then
				exp = math.floor(100 * (50 + 0.1 * level ^ 2.2))
				s_refreshExp(ninePlayerList[i+1],exp,ExpType_OptionalTask,0)
			end
		end
	end
	s_closeRobinInterface(uid)
	s_addCountryVar(curCountry,1,120,0)
	s_addCountryVar(curCountry,1,121,0)
end

function RoleTaskInfo30416_RetreatDeal(uid,taskid,subtaskid,paramlist)
	return VALUE_OK
end
RoleTaskInfo30416 =
{
	subtasknum = 1,
	subtask1 =
	{
		accepttext = parseToTalk([[
title(见好就收)
body(
blankline()   勇士们,请速将侠盗罗宾护送入城防密道，与前来接应的亚森汇合！
blankline()   任务成功完成，罗宾身上保管的银币将添加到本国王国金库，罗宾周围玩家能获得大量经验奖励。
blankline()   exp(大量)
)
]]),
		finishtext = parseToTalk([[body(	嘿，伙计，很高兴见到你安全回来！)]]),
		onacceptcheck =
		{
			{RoleTaskInfo30416_ShowRetreat,{}},
		},
		onacceptcheck1 =
		{
			{RoleTaskInfo30416_RetreatCheck,{}},
		},
		onaccept =
		{
			{RoleTaskInfo30416_RetreatDeal,{}},
		},
		onfinish =
		{
			{RoleTaskInfo30416_FinishDeal,{}},
		},

		task = {s_taskGuard, {60995,60998,60996,1}},
	},
}

function RoleTaskInfo30416:GetTaskExp(uid)
	local curCountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local list = s_getNineEntry(SCENE_ENTRY_PLAYER,uid,30)
	local exp = 0
	--[[
	for i = 1, table.getn(list), 2 do
	if list[i] == SCENE_ENTRY_PLAYER then
	if s_getValue(SCENE_ENTRY_PLAYER,list[i+1],VALUE_TYPE_HOMELAND) == homeland then
	exp = math.floor(200 * (50 + 0.1 * (s_getValue(SCENE_ENTRY_PLAYER,list[i+1], VALUE_TYPE_LEVEL) ^ 2.2)))
	elseif s_getValue(SCENE_ENTRY_PLAYER,list[i+1],VALUE_TYPE_HOMELAND) == curCountry then
	exp = math.floor(100 * (50 + 0.1 * (s_getValue(SCENE_ENTRY_PLAYER,list[i+1], VALUE_TYPE_LEVEL) ^ 2.2)))
	end
	end
	end
	]]
	return exp
end
