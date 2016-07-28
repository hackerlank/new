--12 刺杀目标国家
--13 要杀的官职

function RoleTaskInfo30417_showTask(uid,taskid,subtaskid,paramlist)
	local worldlevel = s_getWorldLevel()
	if worldlevel < 3 then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30417_acceptTask(uid,taskid,subtaskid,paramlist)
	local targetCountry = 0
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if homeland == 0 or homeland == nil then
		return VALUE_FAIL
	end

	--优先设置刺杀国家为非盟国的今日情报远征国
	local expeditionCountry = s_getCountryVar(homeland,1,15)
	if (expeditionCountry ~= 0) and (s_isFriendCountry(homeland,expeditionCountry) ~= VALUE_OK) then
		targetCountry = expeditionCountry
	else
		local list = pack(s_getCountryList())
		for i = 1, table.getn(list) do
			index = math.random(1, table.getn(list))
			targetCountry = list[index]
			if (targetCountry ~= homeland) and targetCountry ~= 13 and (s_isFriendCountry(homeland,targetCountry) ~= VALUE_OK) then
				break
			end
		end
		if targetCountry == homeland or s_isFriendCountry(homeland,targetCountry) == VALUE_OK or targetCountry == 13 then
			for i = 1, table.getn(list) do
				if (list[i] ~= homeland) and list[i] ~= 13 and (s_isFriendCountry(homeland,list[i]) ~= VALUE_OK) then
					targetCountry = list[i]
					break
				end
			end
		end
	end
	s_addTaskVar(uid,taskid,12,targetCountry)
	--国王等官职为1-8
	local targetFun = 0
	targetFun = math.random(1,6)
	if targetFun == 6 then
		targetFun = 8
	end
	s_addTaskVar(uid,taskid,13,targetFun)
	s_setTaskValue(uid,taskid,TaskValue_Process,TaskProcess_Doing)
	s_refreshTaskTrace(uid, 30417, RoleTaskInfo30417:GetTaskTraceText(uid))
	local desc = GetSubTaskDescText(uid,taskid,1)
	s_setTaskValue(uid,taskid,TaskValue_Desc,desc,1)
end

function RoleTaskInfo30417_award(uid, taskid, subtaskid, paramlist)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	if name == 0 or name == nil then
		return
	end
	local country = s_getCountryName(s_getTaskVar(uid,taskid,12))
	local functionName = s_getFunctionNameByType(s_getTaskVar(uid,30417,13))
	s_worldInfo(name .. " 成功刺杀" .. country .. "的 " .. functionName .. " ，获得侠盗罗宾的奖赏。")
	s_addItem(uid,55096,0,1,0,"1-1","刺客信条奖励")
end

RoleTaskInfo30417 =
{
	subtasknum = 1,
	subtask1 =
	{
		onacceptcheck =
		{
			{RoleTaskInfo30417_showTask,{}},
		},
		onaccept =
		{
			{RoleTaskInfo30417_acceptTask,{}},
		},
		onfinish =
		{
			{RoleTaskInfo30417_award,{}},
		},
		task = {s_taskCustom, {60994,60994,1,0}},
	}
}

--任务追踪
function RoleTaskInfo30417:GetTaskTraceText(uid)
	local taskProcess = s_getTaskValue(uid,30417,TaskValue_Process)
	local msg = [[<p>
		<n></n>
		</p>
		]]
	if taskProcess ~= TaskProcess_CanDone then
		msg = [[<p>
		<n>	 刺杀目标国家：$1</n>
		<newline/>
		<n>	刺杀目标官职：$2</n>
		</p>
		]]
	else
		msg = [[<p>
		<n>  回复</n>
		<n>  </n><goto id="60994" mapid="5" flagpoint="1" taskid="30417" />
		</p>
		]]
	end
	local country = s_getCountryName(s_getTaskVar(uid,30417,12))
	local functionName = s_getFunctionNameByType(s_getTaskVar(uid,30417,13))
	msg = FormatString(msg,country,functionName)
	return msg
end

function RoleTaskInfo30417:GetSubTaskDescText(uid,taskid,subtaskid,paramlist)
	local text = [[<p>
		<n></n>
		</p>
		]]
	text =(
		[[
			<p>
			<newline/>
			<n font="3" color="GXColorYellow">刺客信条</n>
			<newline/>
			<n font="3" color="GXColorYellow">任务进程：</n>
			<newline/>
			<n>    刺杀</n><n color='GXColorGreen'>xx</n><n>的</n><n color='GXColorGreen'>yy。</n>
			<newline/>
			<n font="3" color="GXColorYellow">任务描述：</n>
			<newline/>
			<n>   我接到些令人愤怒的消息，有些国家的官员似乎肆意侵略邻国，对贫苦百姓施虐，我想，是时候给他们一些教训了！出国可以在</n><goto id="126" mapid="7" flagpoint="1" taskid="30407"/><n>处进行跳转。</n>
			<newline/>
			<n>   在任务完成后可以获得一个宝箱。</n>
			</p>
			]]
		)
	local country = s_getCountryName(s_getTaskVar(uid,taskid,12))
	if country ~= nil then
		text = string.gsub(text,"xx",country)
	end
	local functionName = s_getFunctionNameByType(s_getTaskVar(uid,taskid,13))
	if functionName ~= nil then
		text = string.gsub(text,"yy",functionName)
	end
	return text
end

function RoleTaskInfo30417:ShowRefreshTask(uid)
	local process = s_getTaskValue(uid,30417,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		return VALUE_FAIL
	end
	return VALUE_OK
end

function RoleTaskInfo30417:RefreshTarget(uid)
	local process = s_getTaskValue(uid,30417,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		s_sysInfo(uid,"除接取状态外，其他状态不可刷新任务！")
		return VALUE_FAIL
	end
	local curTargetCountry = s_getTaskVar(uid,30417,12)
	local curTargetFunc = s_getTaskVar(uid,30417,13)
	local newTargetCountry = 0
	local newTargetFunc = 0
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if homeland == 0 or homeland == nil then
		return VALUE_FAIL
	end
	if s_removeMoney(uid,MoneyType_MoneyTicket,500,"刷新刺客信条任务") ~= VALUE_OK then
		s_sysInfo(uid,"您身上的绑银不足500，无法刷新刺杀目标！")
		return VALUE_FAIL
	end
	local expeditionCountry = s_getCountryVar(homeland,1,15)
	if (expeditionCountry ~= 0) and (s_isFriendCountry(homeland,expeditionCountry) ~= VALUE_OK) then
		newTargetCountry = expeditionCountry
	else
		local list = pack(s_getCountryList())
		for i = 1, table.getn(list) do
			index = math.random(1, table.getn(list))
			newTargetCountry = list[index]
			if (newTargetCountry ~= homeland) and list[i] ~= 13 and (s_isFriendCountry(homeland,newTargetCountry) ~= VALUE_OK) then
				break
			end
		end
		if newTargetCountry == homeland or s_isFriendCountry(homeland,newTargetCountry) == VALUE_OK or newTargetCountry == 13 then
			for i = 1, table.getn(list) do
				if (list[i] ~= homeland) and list[i] ~= 13 and (s_isFriendCountry(homeland,list[i]) ~= VALUE_OK) then
					newTargetCountry = list[i]
					break
				end
			end
		end
	end
	s_addTaskVar(uid,30417,12,newTargetCountry)

	--国王等官职为1-8,不随即警务卿
	newTargetFunc = math.random(1,6)
	if newTargetFunc == 6 then
		newTargetFunc = 8
	end
	s_addTaskVar(uid,30417,13,newTargetFunc)
	s_refreshTaskTrace(uid, 30417, RoleTaskInfo30417:GetTaskTraceText(uid))
	s_setTaskValue(uid,30417,TaskValue_Desc,RoleTaskInfo30417:GetSubTaskDescText(uid,30417,1),1)
	return VALUE_OK
end

--重新刷新任务目标
AppendMenuToNpc(60994,"刷新刺杀目标（500绑银/次） (2)","RoleTaskInfo30417:RefreshTarget($1)","RoleTaskInfo30417:ShowRefreshTask($1)")
