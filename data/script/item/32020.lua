--钓鱼大师的宝箱
function OnUseItemEvent_32020(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 61 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32020") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 61 then
		s_openPalace(uid,32020,0)
	end
	return VALUE_OK
end
