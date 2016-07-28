function OnUseItemEvent_26018(uid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP)
	if hp ~= 0 then
		s_sysInfo(uid,"非死亡状态下不能使用")
		return VALUE_FAIL
	end
	--检测副本是否允许使用
	if DealReliveItem(uid) ~= VALUE_OK then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_26018") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_relive(SCENE_ENTRY_PLAYER,uid)
	return VALUE_OK
end
