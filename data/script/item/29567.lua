function OnUseItemEvent_29567(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29531,3,20,0,"1-1","国战勋章")
	s_addItem(uid,13,3,10,0,"1-1","战争勋章")
	s_addItem(uid,55048,3,1,0,"1-1,3-86400","白色神之水滴")
	s_addItem(uid,14,3,1,0,"1-1","1000赠点券")
	return VALUE_OK
end
