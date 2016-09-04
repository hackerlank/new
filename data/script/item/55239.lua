--金蛇狂舞时装礼包
function OnUseItemEvent_55239(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55239") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20288,3,1,1,"1-1,7-3,3-604800","金蛇狂舞男")
	else
		s_addItem(uid,20289,3,1,1,"1-1,7-3,3-604800","金蛇狂舞女")
	end
	return VALUE_OK
end

