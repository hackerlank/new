function RoleTaskInfo3111_oncheck(uid, taskid, subtaskid, paramlist)
	if paramlist[2] ~= nil then
		s_sysInfo(uid,paramlist[2],ChatPos_Sys + ChatPos_Important)
	end

end


RoleTaskInfo3111 =
{
	subtasknum = 4,

	subtask1 =
	{
		prompttext = [[   1无法交付。]],
		accepttext = parseToTalk([[body(    那么，接下来首先要破除4个女神的封印了！)]]),
		finishtext = parseToTalk([[body(    1交付)]]),
		onstartbar =
		{
			{s_actionSysInfo, {"", 34}},
		},
		onendbar =
		{
			{s_actionSysInfo, {"", 34}},
		},
		onsuccess =
		{
			{s_actionSysInfo, {"", 34}},
		},
		onfail =
		{
			{s_actionSysInfo, {"", 34}},
		},
		clicknpc = {60201, 1, 0, 3500, 100, 100},
		task = {s_taskClickNpc, {5064,60202}},
		autofinish = true,
		onfinish =
		{
			{s_taskplay,{201}, },
		},

	},
	subtask2 =
	{
		prompttext = [[   2无法交付。]],
		accepttext = parseToTalk([[body(    2接取)]]),
		finishtext = parseToTalk([[body(    2交付)]]),
		oncheck =
		{
			{RoleTaskInfo3111_oncheck, {0, ""}},
		},
		onstartbar =
		{
			{s_actionSysInfo, {"", 34}},
		},
		--[[onendbar =
		{
		{s_actionSysInfo, {"嗯，就在这里做个标志，瑞恩应该能跟上了。", 34}},
		},]]--
		onsuccess =
		{
			{s_actionSysInfo, {"", 34}},
		},
		onfail =
		{
			{s_actionSysInfo, {"", 34}},
		},
		clicknpc = {60202, 1, 0, 3500, 100, 100},
		task = {s_taskClickNpc, {60202, 60203}},
		autofinish = true,
		onfinish =
		{
			{s_taskplay,{202}, },
		},

	},
	subtask3 =
	{
		prompttext = [[   3无法交付。]],
		accepttext = parseToTalk([[body(    3接取)]]),
		finishtext = parseToTalk([[body(    3交付)]]),
		oncheck =
		{
			{RoleTaskInfo3111_oncheck, {0, ""}},
		},
		onstartbar =
		{
			{s_actionSysInfo, {"", 34}},
		},
		--[[onendbar =
		{
		{s_actionSysInfo, {"嗯，就在这里做个标志，瑞恩应该能跟上了。", 34}},
		},]]--
		onsuccess =
		{
			{s_actionSysInfo, {"", 34}},
		},
		onfail =
		{
			{s_actionSysInfo, {"", 34}},
		},
		clicknpc = {60203, 1, 0, 3500, 100, 100},
		task = {s_taskClickNpc, {60203, 60204}},
		autofinish = true,
		onfinish =
		{
			{s_taskplay,{203}, },
		},

	},

	subtask4 =
	{
		prompttext = [[   4无法交付。]],
		accepttext = parseToTalk([[body(    4接取)]]),
		finishtext = parseToTalk([[body(    哈哈哈哈，老子要出来了！退后一点，小心我的神龙余威伤到你。)]]),
		oncheck =
		{
			{RoleTaskInfo3111_oncheck, {0, ""}},
		},
		onstartbar =
		{
			{s_actionSysInfo, {"", 34}},
		},
		--[[onendbar =
		{
		{s_actionSysInfo, {"嗯，就在这里做个标志，瑞恩应该能跟上了。", 34}},
		},]]--
		onsuccess =
		{
			{s_actionSysInfo, {"", 34}},
			{s_taskplay,{204}, },
		},
		onfail =
		{
			{s_actionSysInfo, {"", 34}},
		},
		clicknpc = {60204, 1, 0, 3500, 100, 100},
		task = {s_taskClickNpc, {60204, 5064}},
		onfinish =
		{
			{s_taskplay,{102}, },
		},

	},
}
--任务描述
function RoleTaskInfo3111:GetSubTaskDescText(uid,taskid,subtaskid)


	local text = [[<p>
		<n></n>
		</p>
		]]	
	if subtaskid ==1 then
		text =(
			[[
			<p>
			<newline/>
			<n font="3" color="GXColorYellow">女神封印</n>
			<newline/>
			<image pack="INTERFACE_PACK" infoname="INTERFACE_40_4_P"/>
			<newline/>
			<n font="3" color="GXColorYellow">任务进程：</n>
			<newline/>
			<n color='GXColorGreen'>操纵</n><goto id="60201" mapid="1" flagpoint="1" taskid="3111"/><n>，破除封印。只有破除四个女神封印才能救出神龙。</n>
			<newline/>
			<image pack="INTERFACE_PACK" infoname="INTERFACE_40_4_P"/>
			<newline/>
			<n font="3" color="GXColorYellow">任务描述：</n>
			<newline/>
			<n>    解开第一个封印：风之女神的封印。</n>
			</p>]]
			)
	elseif subtaskid ==2 then
		text =(
			[[
			<p>
			<newline/>
			<n font="3" color="GXColorYellow">女神封印</n>
			<newline/>
			<image pack="INTERFACE_PACK" infoname="INTERFACE_40_4_P"/>
			<newline/>
			<n font="3" color="GXColorYellow">任务进程：</n>
			<newline/>
			<n color='GXColorGreen'>操纵</n><goto id="60202" mapid="1" flagpoint="1" taskid="3111"/><n>，破除封印。只有破除四个女神封印才能救出神龙。</n>
			<newline/>
			<image pack="INTERFACE_PACK" infoname="INTERFACE_40_4_P"/>
			<newline/>
			<n font="3" color="GXColorYellow">任务描述：</n>
			<newline/>
			<n>    解开第二个封印：土之女神的封印。</n>
			</p>]]
			)
	elseif subtaskid ==3 then
		text =(
			[[
			<p>
			<newline/>
			<n font="3" color="GXColorYellow">女神封印</n>
			<newline/>
			<image pack="INTERFACE_PACK" infoname="INTERFACE_40_4_P"/>
			<newline/>
			<n font="3" color="GXColorYellow">任务进程：</n>
			<newline/>
			<n color='GXColorGreen'>操纵</n><goto id="60203" mapid="1" flagpoint="1" taskid="3111"/><n>，破除封印。只有破除四个女神封印才能救出神龙。</n>
			<newline/>
			<image pack="INTERFACE_PACK" infoname="INTERFACE_40_4_P"/>
			<newline/>
			<n font="3" color="GXColorYellow">任务描述：</n>
			<newline/>
			<n>    解开第三个封印：水之女神的封印。</n>
			</p>]]
			)
	elseif subtaskid ==4 then
		text =(
			[[
			<p>
			<newline/>
			<n font="3" color="GXColorYellow">女神封印</n>
			<newline/>
			<image pack="INTERFACE_PACK" infoname="INTERFACE_40_4_P"/>
			<newline/>
			<n font="3" color="GXColorYellow">任务进程：</n>
			<newline/>
			<n color='GXColorGreen'>操纵</n><goto id="60204" mapid="1" flagpoint="1" taskid="3111"/><n>，破除封印。只有破除四个女神封印才能救出神龙。</n>
			<newline/>
			<image pack="INTERFACE_PACK" infoname="INTERFACE_40_4_P"/>
			<newline/>
			<n font="3" color="GXColorYellow">任务描述：</n>
			<newline/>
			<n>    解开最后一个封印：水之女神的封印。</n>
			</p>]]
			)
	end
	text = parseToDesc(text)
	return text
end

--任务追踪
function RoleTaskInfo3111:GetTaskTraceText(uid)
	local subid = s_getTaskVar(uid,3111,MvarIndex_SubTask)
	local taskProcess = s_getTaskValue(uid,3111, TaskValue_Process)
	local msg = [[<p>
		<n></n>
		</p>
		]]	
	if subid ==1 then   --第一个任务未完成时的任务追踪
		msg = [[<p>
		<n> 破除：</n>
		<n> </n><goto id="60201" mapid="1" flagpoint="1" /><n>封印</n>
		</p>
		]]
	elseif subid ==2 then   --第二个任务未完成时的任务追踪
		msg = [[<p>
		<n> 破除：</n>
		<n> </n><goto id="60202" mapid="1" flagpoint="1" /><n>封印</n>
		</p>
		]]
	elseif subid ==3 then   --第三个任务未完成时的任务追踪
		msg = [[<p>
		<n> 破除：</n>
		<n> </n><goto id="60203" mapid="1" flagpoint="1" /><n>封印</n>
		</p>
		]]
	elseif subid ==4 then  --第四个任务未完成时的任务追踪
		msg = [[<p>
		<n> 破除：</n>
		<n> </n><goto id="60204" mapid="1" flagpoint="1" /><n>封印</n>
		</p>
		]]	
	if taskProcess == TaskProcess_CanDone then    ---任务可以交付时的任务追踪
		msg = [[<p>
			<n> 回复：</n>
			<n> </n><goto id="5064" mapid="1" flagpoint="1" />
			</p>
			]]	
	end
	end
	return msg
end
