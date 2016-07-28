--战友呼唤
function OnUseItemEvent_29200(uid,thisid)
	local ctype = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_TYPE)
	if ctype ~= 0 then
		s_sysInfo(uid,"副本内不许执行此操作")
		return VALUE_FAIL
	end

	--判断战友
	if s_checkCompanion(SCENE_ENTRY_PLAYER,uid) ~= VALUE_OK then
		s_sysInfo(uid,"您现在还没有志同道合的战友！")
		return VALUE_FAIL
	end
	--判断使用次数
	--[[
	local today = s_getCurTime(TIME_ALLDAYS)
	if s_getVar(uid,116,19) == today then
	if s_getVar(uid,116,20) >= 2 then
	s_sysInfo(uid,"战友呼唤每日只可使用两次")
	return VALUE_FAIL
	end
	end
	]]--
	if s_deleteItemByThisID(uid,thisid,1,"战友呼唤") ~= VALUE_OK then
		return VALUE_FAIL
	end
	--[[
	if s_getVar(uid,116,19) == today then
	s_addVar(uid,116,20,s_getVar(uid,116,20)+1)
	else
	s_addVar(uid,116,19,today)
	s_addVar(uid,116,20,1)
	end
	]]--
	s_inviteCompanionToMe(SCENE_ENTRY_PLAYER,uid)
	AddAchieveTaskOperate(uid,43003,1)
	return VALUE_OK
end
