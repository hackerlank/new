--找回兔子任务召唤脚本
function s_actionRoleTaskInfo50039_Summon(uid, taskid, subtaskid, paramlist)
	local cid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
	for i = 1, math.random(15,25) do
		s_sysSummon(math.random(56025,56026),cid,math.random(0,95),math.random(0,107))
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == Charbase_Male then
		s_resetTrafficType(uid)
		s_setTrafficType(uid,TrafficType_RideChange,52029,600)
	else
		s_resetTrafficType(uid)
		s_setTrafficType(uid,TrafficType_RideChange,52030,600)
	end
	local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	local cid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
	if map == 191 then  --地图ID
		s_setSceneVar(cid, 101, 1, 1)	 --1017副本变量
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 87* (50 + 0.1*level^2.2)
	return math.floor(exp)
end

RoleTaskInfo50039 =
{
	subtasknum = 1,
	subtask1 =
	{
		onaccept =
		{
			{s_actionRoleTaskInfo50039_Summon, {}},
		},
		onendbar =
		{
			{s_actionSysInfo, {"快去抓兔子吧。", 34}},
		},
		collectitem =
		{
			{55226, 0, 10},
		},
		task = {s_taskCollect,{364, 364}},
		onfinish =
		{
			{s_actionDeleteItemByBaseID,{55226,10,"RoleTaskInfo50039"}},
			{s_actionChangeRide,{0,0}},

		},
	},
}
