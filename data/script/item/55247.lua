--解封庆祝礼包
function OnUseItemEvent_55247(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"解封庆祝礼包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32219,3,1,0,"1-1","5星合金")
	s_addItem(uid,32211,3,5,0,"1-1","三绿宝箱")
	s_addItem(uid,29026,3,40,0,"1-1","血精石")
	s_addItem(uid,6,3,50,0,"1-1","100绑银券")
	return VALUE_OK
end
