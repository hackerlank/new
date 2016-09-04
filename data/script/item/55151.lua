--金蛇狂舞时装礼包
function OnUseItemEvent_55151(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55151") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20286,3,1,1,"7-3,3-604800","金蛇狂舞男")
	else
		s_addItem(uid,20287,3,1,1,"7-3,3-604800","金蛇狂舞女")
	end
	return VALUE_OK
end

