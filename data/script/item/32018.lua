--公会卡

--公会卡礼包
function OnUseItemEvent_32018(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32018") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level < 61 then
		s_addItem(uid,27108,0,50,0,"1-1","OnUseItemEvent_32018")
		s_addItem(uid,6,0,50,0,"1-1","OnUseItemEvent_32018")
		s_addItem(uid,29003,0,1,0,"1-1","OnUseItemEvent_32018")
		s_addItem(uid,26128,0,10,0,"1-1","OnUseItemEvent_32018")
		s_addItem(uid,26102,0,50,0,"1-1","OnUseItemEvent_32018")
		s_addItem(uid,29050,0,3,0,"1-1","OnUseItemEvent_32018")
		s_addItem(uid,29047,0,3,0,"1-1","OnUseItemEvent_32018")
	else
		s_addItem(uid,27108,0,50,0,"1-1","OnUseItemEvent_32018")
		s_addItem(uid,6,0,50,0,"1-1","OnUseItemEvent_32018")
		s_addItem(uid,29003,0,1,0,"1-1","OnUseItemEvent_32018")
		s_addItem(uid,26128,0,10,0,"1-1","OnUseItemEvent_32018")
		s_addItem(uid,26102,0,50,0,"1-1","OnUseItemEvent_32018")
		s_addItem(uid,29047,0,3,0,"1-1","OnUseItemEvent_32018")
		s_addItem(uid,26139,0,1,0,"1-1","OnUseItemEvent_32018")
	end
	return VALUE_OK
end
