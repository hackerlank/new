--情人节

DEMON_IV_41644_1 = "7-1,102-1,104-5,105-5,106-5,107-5,108-25,109-725,115-880,116-880,117-880,118-880,119-880,122-150,125-100,126-100,161-40014,162-40113"
DEMON_IV_41644_2 = "7-2,102-1,104-5,105-5,106-5,107-5,108-25,109-725,115-1100,116-1100,117-1100,118-1100,119-1100,122-190,125-100,126-100,161-40014,162-40113"
DEMON_IV_41644_3 = "7-3,102-1,104-5,105-5,106-5,107-5,108-25,109-725,115-1150,116-1150,117-1150,118-1150,119-1150,122-230,125-100,126-100,161-40014,162-40113"
DEMON_IV_41644_4 = "7-4,102-1,104-5,105-5,106-5,107-5,108-25,109-725,115-1250,116-1250,117-1250,118-1250,119-1250,122-270,125-100,126-100,161-40014,162-40113"

function OnUseItemEvent_31325(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20193,0,1,0,"1-1,3-86400","OnUseItemEvent_31325")--时装
	s_addItem(uid,41644,0,1,0,DEMON_IV_41644_1,"OnUseItemEvent_31325")--宠物
	s_addTitle(SCENE_ENTRY_PLAYER,uid,39)
	return VALUE_OK
end
function OnUseItemEvent_31326(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20193,0,1,0,"1-1,3-86400","OnUseItemEvent_31325")--时装
	s_addItem(uid,41644,0,1,0,DEMON_IV_41644_2,"OnUseItemEvent_31325")--宠物
	s_addTitle(SCENE_ENTRY_PLAYER,uid,40)
	return VALUE_OK
end
function OnUseItemEvent_31327(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20193,0,1,0,"1-1,3-604800","OnUseItemEvent_31325")--时装
	s_addItem(uid,41644,0,1,0,DEMON_IV_41644_3,"OnUseItemEvent_31325")--宠物
	s_addTitle(SCENE_ENTRY_PLAYER,uid,41)
	return VALUE_OK
end
function OnUseItemEvent_31328(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20193,0,1,0,"1-1,3-604800","OnUseItemEvent_31325")--时装
	s_addItem(uid,41644,0,1,0,DEMON_IV_41644_4,"OnUseItemEvent_31325")--宠物
	s_addTitle(SCENE_ENTRY_PLAYER,uid,42)
	return VALUE_OK
end
-------------------------------------------------------------------------------------
function OnUseItemEvent_31329(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20192,0,1,0,"1-1,3-86400","OnUseItemEvent_31325")--时装
	s_addItem(uid,41645,0,1,0,DEMON_IV_41644_1,"OnUseItemEvent_31325")--宠物
	s_addTitle(SCENE_ENTRY_PLAYER,uid,43)
	return VALUE_OK
end
function OnUseItemEvent_31330(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20192,0,1,0,"1-1,3-86400","OnUseItemEvent_31325")--时装
	s_addItem(uid,41645,0,1,0,DEMON_IV_41644_2,"OnUseItemEvent_31325")--宠物
	s_addTitle(SCENE_ENTRY_PLAYER,uid,44)
	return VALUE_OK
end
function OnUseItemEvent_31331(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20192,0,1,0,"1-1,3-604800","OnUseItemEvent_31325")--时装
	s_addItem(uid,41645,0,1,0,DEMON_IV_41644_3,"OnUseItemEvent_31325")--宠物
	s_addTitle(SCENE_ENTRY_PLAYER,uid,45)
	return VALUE_OK
end
function OnUseItemEvent_31332(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20192,0,1,0,"1-1,3-604800","OnUseItemEvent_31325")--时装
	s_addItem(uid,41645,0,1,0,DEMON_IV_41644_4,"OnUseItemEvent_31325")--宠物
	s_addTitle(SCENE_ENTRY_PLAYER,uid,46)
	return VALUE_OK
end
