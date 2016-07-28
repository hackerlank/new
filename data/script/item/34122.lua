--血战宝箱奖励
function OnUseItemEvent_34122(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_34122") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level < 61 then
		s_addItem(uid,29026,0,10,0,"","OnUseItemEvent_34122")
		s_addItem(uid,27108,0,30,0,"","OnUseItemEvent_34122")
		s_addItem(uid,34123,0,1,0,"","OnUseItemEvent_34122")
	elseif level >= 60 and level <= 100 then
		s_addItem(uid,29026,0,10,0,"","OnUseItemEvent_34122")
		s_addItem(uid,27108,0,30,0,"","OnUseItemEvent_34122")
		s_addItem(uid,34123,0,1,0,"","OnUseItemEvent_34122")
	elseif level >= 101 then
		s_addItem(uid,29026,0,10,0,"","OnUseItemEvent_34122")
		s_addItem(uid,27109,0,30,0,"","OnUseItemEvent_34122")
		s_addItem(uid,34123,0,1,0,"","OnUseItemEvent_34122")
	end
	return VALUE_OK
end
