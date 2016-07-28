--中秋追捕狼击败狼族指挥官活动任务

function s_actionRoleTaskInfo50040_Summon(uid, taskid, subtaskid, paramlist)
	local cid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
	s_sysSummon(56031,cid,math.random(9,31),math.random(57,69))
	s_sysSummon(56032,cid,math.random(9,31),math.random(57,69))
	s_sysSummon(56033,cid,math.random(9,31),math.random(57,69))
	local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	local cid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
	if map == 192 then  --地图ID
		s_setSceneVar(cid, 102, 1, 1)	 --1018副本变量
	end
end

function s_actionRoleTaskInfo50040_Summon1(uid, taskid, subtaskid, paramlist)
	local cid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
	s_sysSummon(56034,cid,33,12)
	s_sysSummon(56034,cid,63,13)
	s_sysSummon(56034,cid,25,140)
	s_sysSummon(56034,cid,7,101)
	--s_sysSummon(56034,cid,0,0)
	s_sysSummon(56034,cid,88,99)
	s_sysSummon(56034,cid,63,137)
	--s_sysSummon(56034,cid,0,0)
	local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	local cid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
	if map == 192 then  --地图ID
		s_setSceneVar(cid, 103, 1, 1)	 --1018副本变量
	end
end

RoleTaskInfo50040 =
{
	subtasknum = 2,
	subtask1 =
	{
		desctext =([[<p><newline/><n font="3" color="GXColorYellow">[活动]驱逐饿狼</n><newline/><image pack="INTERFACE_PACK" infoname="INTERFACE_40_4_P"/><newline/><n font="3" color="GXColorYellow">任务进程：</n><newline/><n color="GXColorGreen">    第一步：变身后追捕驱逐饥饿的狼押送至指定区域</n><newline/><n>    第二步：在寻找并击败祸乱的根源3个驱使它们的狼族指挥官</n><newline/><newline/><n font="3" color="GXColorYellow">任务描述：</n><newline/><n>    黑夜来临了，饥饿的狼又出来觅食了，小兔子们都吓的睡不着觉了，嫦娥给你施了个法术，变成只老虎，吓跑它们吧。</n><newline/><newline/><n font="3" color="GXColorYellow">任务描述：</n><newline/><n>    活动任务，需完成后才可获得</n><n color='GXColorGreen'>海量经验和道具奖励</n><n>。每天活动任务可进行一次,任务状态中如掉线出副本后请删除该任务再接！请尽量在副本内完成活动后再出副本噢.</n><newline/></p>]]),
		prompttext = [[   需将3头饥饿的狼赶到指定区域后，才可进行下一步任务~~~]],
		accepttext = [[<p><n>		我需要你帮助我。饥饿的狼又出来觅食了，小兔子们都吓的睡不着觉了，变成只老虎，吓跑它们吧！</n></p>]],
		tracebegin = [[<p><newline/><n>驱逐3头饥饿的狼道指定区域后回复：</n><goto id="365" mapid="192" flagpoint="1" taskid="50040"/></p>]],
		traceend = [[<p><newline/><n>驱逐3头饥饿的狼道指定区域后回复：</n><goto id="365" mapid="192" flagpoint="1" taskid="50040"/></p>]],
		finishtext = parseToTalk([[body(    能够将饥饿的狼赶跑证明了你的实力。)]]),
		onaccept =
		{
			{s_actionRoleTaskInfo50040_Summon,{}},
			{s_actionChangeToNpc,{52063,60*10}},
		},
		onfinish =
		{
			{s_actionChangeToNpc,{0,0}},
		},
	},

	subtask2=
	{
		desctext =([[<p><newline/><n font="3" color="GXColorYellow">[活动]驱逐饿狼</n><newline/><image pack="INTERFACE_PACK" infoname="INTERFACE_40_4_P"/><newline/><n font="3" color="GXColorYellow">任务进程：</n><newline/><n color="GXColorGreen">    第一步：变身后追捕驱逐饥饿的狼押送至指定区域</n><newline/><n color="GXColorGreen">     第二步：在寻找并击败祸乱的根源3个驱使它们的狼族指挥官</n><newline/><newline/><n font="3" color="GXColorYellow">任务描述：</n><newline/><n>    终于驱逐了狼群，现在祸乱的根源，出现在地图的边缘位置，请寻找并击败3个狼族指挥官。</n><newline/><newline/><n font="3" color="GXColorYellow">任务描述：</n><newline/><n>    活动任务，需完成后才可获得</n><n color='GXColorGreen'>海量经验和道具奖励</n><n>。每天活动任务可进行一次,任务状态中如掉线出副本后请删除该任务再接！请尽量在副本内完成活动后再出副本噢.</n><newline/></p>]]),
		prompttext = [[   击败3个狼族指挥官，可在本地图中寻找，记得仔细找出它们噢~~~]],
		accepttext = [[<p><n>		祸乱的根源出现了，我需要你去寻找地图周边出现的狼族指挥官，并击败3个！</n></p>]],
		tracebegin = [[<p><newline/><n>击败3个狼族指挥官后回复：</n><newline/><goto id="365" mapid="192" flagpoint="1" taskid="50040"/></p>]],
		traceend = [[<p><newline/><n>击败3个狼族指挥官后回复：</n><newline/><goto id="365" mapid="192" flagpoint="1" taskid="50040"/></p>]],
		accepttext = parseToTalk([[body(    击败祸乱的源头狼族指挥官，可在本地图中寻找，请击败3个哦~~~)]]),
		finishtext = parseToTalk([[body(    你如果感到有困难可以加强您的能力噢。)]]),
		task = {s_taskKillNpc,{365,365,56034,3}},
		onaccept =
		{
			{s_actionRoleTaskInfo50040_Summon1,{}},
			{s_copyClearNpcByBaseID,{56031}	},
			{s_copyClearNpcByBaseID,{56032}	},
			{s_copyClearNpcByBaseID,{56033}	},
		},
		onfinish=
		{
			{s_actionAddItem,{55227, 0, 1, 0, "1-1", "RoleTaskInfo50040"}},
			{s_actionAddItem,{55228, 0, 1, 0, "1-1", "RoleTaskInfo50040"}},

		},
	},

}

function RoleTaskInfo50040:GetTaskExp(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 87* (50 + 0.1*level^2.2)
	return math.floor(exp)
end

