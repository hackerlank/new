--战友同袍
function OnUseItemEvent_29201(uid,thisid)
	--判断战友
	if s_checkCompanion(SCENE_ENTRY_PLAYER,uid) ~= VALUE_OK then
		s_sysInfo(uid,"您现在还没有志同道合的战友！")
		return VALUE_FAIL
	end
	--使用次数
	--[[
	local today = s_getCurTime(TIME_ALLDAYS)
	if s_getVar(uid,116,17) == today then
	if s_getVar(uid,116,18) >= 3 then
	s_sysInfo(uid,"每天只可使用两次战友同袍")
	return VALUE_FAIL
	end
	end
	]]--
	if s_deleteItemByThisID(uid,thisid,1,"战友同袍") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,30014)
	if level > 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,30014)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,30014,1,600)
	end
	--[[
	if s_getVar(uid,116,17) == today then
	s_addVar(uid,116,18,s_getVar(uid,116,18)+1)
	else
	s_addVar(uid,116,17,today)
	s_addVar(uid,116,18,1)
	end
	]]--
	--	ShowAttack(50010,etype1,eid1,etype2,eid2)
	return VALUE_OK
end
