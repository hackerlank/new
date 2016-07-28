--宠物乐园小礼包
function OnUseItemEvent_55091(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55091") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,43007,3,5,0,"1-1","OnUseItemEvent_55091")
	s_addItem(uid,43009,3,20,0,"1-1","OnUseItemEvent_55091")
	return VALUE_OK
end

--宠物乐园中礼包
function OnUseItemEvent_55092(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55092") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55097,3,1,0,"1-1","OnUseItemEvent_55092")
	s_addItem(uid,43009,3,100,0,"1-1","OnUseItemEvent_55092")
	return VALUE_OK
end

--宠物乐园大礼包
function OnUseItemEvent_55093(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55093") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55097,3,2,0,"1-1","OnUseItemEvent_55093")
	s_addItem(uid,43007,3,15,0,"1-1","OnUseItemEvent_55093")
	return VALUE_OK
end
