--喵喵绑银宝箱
function OnUseItemEvent_32205(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32205") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,32205,0)
	return VALUE_OK
end
