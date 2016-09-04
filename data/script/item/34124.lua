--神器宝箱
function OnUseItemEvent_34124(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 51 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_34124") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 51 then
		s_openPalace(uid,34124,1)
	end
	return VALUE_OK
end