--白色情人节

--DEMON_IV_41644_1 = "7-1,102-1,104-5,105-5,106-5,107-5,108-25,109-725,115-880,116-880,117-880,118-880,119-880,122-150,125-100,126-100,161-40014,162-40113"
--DEMON_IV_41644_2 = "7-2,102-1,104-5,105-5,106-5,107-5,108-25,109-725,115-1100,116-1100,117-1100,118-1100,119-1100,122-190,125-100,126-100,161-40014,162-40113"
--DEMON_IV_41644_3 = "7-3,102-1,104-5,105-5,106-5,107-5,108-25,109-725,115-1150,116-1150,117-1150,118-1150,119-1150,122-230,125-100,126-100,161-40014,162-40113"
--DEMON_IV_41644_4 = "7-4,102-1,104-5,105-5,106-5,107-5,108-25,109-725,115-1250,116-1250,117-1250,118-1250,119-1250,122-270,125-100,126-100,161-40014,162-40113"

function OnUseItemEvent_31368(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	--s_addItem(uid,50033,3,1,1,"1-0","OnUseItemEvent_31368")--双人坐骑
	s_addItem(uid,20644,3,1,0,"1-1,3-2592000","OnUseItemEvent_31368")--羽翼
	--s_addItem(uid,55078,3,1,0,"1-1","OnUseItemEvent_31368")--头顶状态
	s_addItem(uid,42023,3,1,0,"1-1,3-2592000","OnUseItemEvent_31368")--宠物幻化
	return VALUE_OK
end

function OnUseItemEvent_31369(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20644,3,1,0,"1-1,3-1555200","OnUseItemEvent_31369")--羽翼
	s_addItem(uid,55079,3,1,0,"1-1","OnUseItemEvent_31369")--头顶状态
	s_addItem(uid,42023,3,1,0,"1-1,3-1555200","OnUseItemEvent_31369")--宠物幻化
	return VALUE_OK
end

function OnUseItemEvent_31370(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55080,3,1,0,"1-1","OnUseItemEvent_31370")--头顶状态
	s_addItem(uid,42023,3,1,0,"1-1,3-1555200","OnUseItemEvent_31370")--宠物幻化
	return VALUE_OK
end

function OnUseItemEvent_31371(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55081,3,1,0,"1-1","OnUseItemEvent_31371")--头顶状态
	s_addItem(uid,20192,3,1,1,"1-1,7-1,3-604800","OnUseItemEvent_31371")--时装
	return VALUE_OK
end

-------------------------------------------------------------------------------------
function OnUseItemEvent_31372(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	--s_addItem(uid,50033,3,1,1,"1-0","OnUseItemEvent_31372")--双人坐骑
	s_addItem(uid,20643,3,1,0,"1-1,3-2592000","OnUseItemEvent_31372")--羽翼
	--s_addItem(uid,55075,3,1,0,"1-1","OnUseItemEvent_31372")--头顶状态
	s_addItem(uid,42022,3,1,0,"1-1,3-2592000","OnUseItemEvent_31372")--宠物幻化
	return VALUE_OK
end

function OnUseItemEvent_31373(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20643,3,1,0,"1-1,3-1555200","OnUseItemEvent_31373")--羽翼
	s_addItem(uid,55076,3,1,0,"1-1","OnUseItemEvent_31373")--头顶状态
	s_addItem(uid,42022,3,1,0,"1-1,3-1555200","OnUseItemEvent_31373")--宠物幻化
	return VALUE_OK
end

function OnUseItemEvent_31374(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55077,3,1,0,"1-1","OnUseItemEvent_31374")--头顶状态
	s_addItem(uid,42022,3,1,0,"1-1,3-1555200","OnUseItemEvent_31374")--宠物幻化
	return VALUE_OK
end

function OnUseItemEvent_31375(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55081,3,1,0,"1-1","OnUseItemEvent_31375")--头顶状态
	s_addItem(uid,20193,3,1,1,"1-1,7-1,3-604800","OnUseItemEvent_31375")--时装
	return VALUE_OK
end
