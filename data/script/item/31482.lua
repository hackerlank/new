--音乐盒
function OnUseItemEvent_31482(uid,thisid,targetid)
	local process = s_getTaskValue(uid,30265,TaskValue_Process)
	if process == TaskProcess_None then
		s_sysInfo(uid,"未接取情缘任务，不可使用音乐盒")
		return VALUE_FAIL
	end
	if s_getField(uid, UserVar_LovePartner) ~= targetid then
		s_sysInfo(uid,"对方不是你的有缘人，不可使用音乐盒")
		return VALUE_FAIL
	end
	if s_getField(targetid, UserVar_LoveInviter) ~= uid then
		s_sysInfo(uid,"对方已取消和您的情缘任务，请重选有缘人")
		return VALUE_FAIL
	end
	local targetcountry = 0
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == FEMALE then
		targetcountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	end
	local sex1 = s_getValue(SCENE_ENTRY_PLAYER,targetid,VALUE_TYPE_SEX)
	if sex1 == FEMALE then
		targetcountry = s_getValue(SCENE_ENTRY_PLAYER,targetid,VALUE_TYPE_HOMELAND)
	end
	if sex == sex1 then
		s_sysInfo(uid,"暂不开放同性之间进行此类操作")
		return VALUE_FAIL
	end
	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	if curcountry ~= targetcountry then
		s_sysInfo(uid,"请前往指定国家，进行情缘任务")
		return VALUE_FAIL
	end
	local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	if map ~= 156 then
		s_sysInfo(uid,"请前往指定地图，进行情缘任务")
		return VALUE_FAIL
	end
	s_sysInfo(uid,"你选择了为对方播放一曲献给爱丽丝表达你的情意，请耐心等待对方接受，音乐盒播放音乐时会持续增长个人阅历哦...",ChatPos_MsgBox)
	local msg = "对方想向您播放一曲献给爱丽丝表达一份情意，您是否接受邀请？音乐盒播放音乐时会持续增长个人阅历哦…"
	local buttons = "我愿意|3|Enter|我拒绝|4|Esc|再想想|5|Esc"
	local call = "MusicBox($1,$2," .. uid .. ","..thisid..")"
	s_registerMsgBox(targetid,call,buttons,msg,300)
	return VALUE_OK
end

function MusicBox(targetid, ret, uid, thisid)
	if ret ~= Button_Yes then
		s_sysInfo(uid,"对方拒绝了您的邀请，请再接再厉！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31482") ~= VALUE_OK then
		s_sysInfo(uid,"删除音乐盒失败，请检查自己的包裹")
		return VALUE_FAIL
	end
	local process = s_getTaskValue(uid,30265,TaskValue_Process)
	if process == TaskProcess_None then
		s_sysInfo(uid,"请领取情缘任务后再使用音乐盒")
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60813)
	if npcid ~= 0 then
		s_setValue(SCENE_ENTRY_NPC,npcid, VALUE_TYPE_MASTER, uid)
		s_setValue(SCENE_ENTRY_NPC,npcid, VALUE_TYPE_TASK_LOVE_PARTNER,targetid);
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*3*1000)
		--完成任务
		RoleTaskInfo30265:FinishTask(uid)
	end
	s_sysInfo(uid,"对方接受了您的情意，要加油哦~")
end
