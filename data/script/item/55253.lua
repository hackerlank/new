--马到成功时装礼包
function OnUseItemEvent_55253(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55151") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20298,3,1,1,"7-3,3-604800","马到成功男")
	else
		s_addItem(uid,20299,3,1,1,"7-3,3-604800","马到成功女")
	end
	return VALUE_OK
end

