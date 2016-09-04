--未使用的明信片（圣诞节道具）

function OnUseItemEvent_31268(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31268") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,31267,0,1,0,"","OnUseItemEvent_31268")
	else
		s_addItem(uid,31266,0,1,0,"","OnUseItemEvent_31268")
	end
	return VALUE_OK
end
