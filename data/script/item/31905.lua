--发型宝箱
function OnUseItemEvent_31905(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31905") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_openPalace(uid,31905,1)
	else
		s_openPalace(uid,31905,2)
	end
	return VALUE_OK
end
