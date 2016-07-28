--英格兰时装礼包
function OnUseItemEvent_55279(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55279") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20216,3,1,1,"7-3,1-1,3-604800","英格兰球队时装男")
	else
		s_addItem(uid,20232,3,1,1,"7-3,1-1,3-604800","英格兰球队时装女")
	end
	return VALUE_OK
end

