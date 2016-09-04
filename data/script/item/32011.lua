--pubwin激战卡

--使用1级激战卡礼包
function OnUseItemEvent_32011(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32011") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,29520,0,1,0,"1-1","pubwin激战卡")
	else
		s_addItem(uid,29521,0,1,0,"1-1","pubwin激战卡")
	end
	s_addItem(uid,32012,0,1,0,"1-1","pubwin激战卡")
	s_addItem(uid,6,0,1,0,"1-1","pubwin激战卡")
	s_addItem(uid,23031,0,5,0,"1-1","pubwin激战卡")
	s_addItem(uid,23041,0,5,0,"1-1","pubwin激战卡")
	return VALUE_OK
end
