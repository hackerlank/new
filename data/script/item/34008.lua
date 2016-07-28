--可交易经验秘宝
function OnUseItemEvent_34008(uid,thisid)
	local times = s_getVar(uid,10008,34008)
	if times >= 54 then
		s_messageBox(uid,"今天本道具已达使用上限")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	s_refreshExp(uid, 25 * (50 + 0.1 * math.pow(level,2.2)), ExpType_Exchange,0)
	s_messageBox(uid,"今天还可使用本道具".. 54 - times .. "个")
	times = times + 1
	s_addVar(uid,10008,34008,times)
	return VALUE_OK
end
