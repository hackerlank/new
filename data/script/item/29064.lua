--洗红名
function OnUseItemEvent_29064(uid,thisid)
	local value = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_GOODVALUE)
	local state = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_GOODSTATE)
	if (state == 1 or state == 2 or state == 3) and value ~= 0 then
	else
		s_sysInfo(uid,"你是个好人,不需要使用这种道具")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_sysInfo(uid,"不知为什么,忽然感觉身上的罪孽轻了不少")
	s_subValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_GOODVALUE,30)
	return VALUE_OK
end
