--婚礼礼包（小）
function OnUseItemEvent_31249(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31249") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,31252,0,1,0,"1-1","婚礼礼包（小）")
	s_addItem(uid,31253,0,1,0,"1-1","婚礼礼包（小）")
	s_addItem(uid,31230,0,3,0,"1-1","婚礼礼包（小）")
	s_addItem(uid,30006,0,10,0,"1-1","婚礼礼包（小）")
	s_addItem(uid,30007,0,10,0,"1-1","婚礼礼包（小）")
	s_addItem(uid,30008,0,10,0,"1-1","婚礼礼包（小）")
	s_addItem(uid,30009,0,10,0,"1-1","婚礼礼包（小）")
	return VALUE_OK
end

--婚礼礼包（中）
function OnUseItemEvent_31250(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31250") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,31252,0,2,0,"1-1","婚礼礼包（中）")
	s_addItem(uid,31253,0,2,0,"1-1","婚礼礼包（中）")
	s_addItem(uid,31254,0,2,0,"1-1","婚礼礼包（中）")
	s_addItem(uid,31255,0,2,0,"1-1","婚礼礼包（中）")
	s_addItem(uid,31276,0,5,0,"1-1","婚礼礼包（中）")
	s_addItem(uid,31230,0,5,0,"1-1","婚礼礼包（中）")
	s_addItem(uid,31231,0,5,0,"1-1","婚礼礼包（中）")
	s_addItem(uid,30006,0,30,0,"1-1","婚礼礼包（中）")
	s_addItem(uid,30007,0,30,0,"1-1","婚礼礼包（中）")
	s_addItem(uid,30008,0,30,0,"1-1","婚礼礼包（中）")
	s_addItem(uid,30009,0,30,0,"1-1","婚礼礼包（中）")
	s_addItem(uid,22059,0,1,0,"7-3","婚礼礼包（中）")
	s_addItem(uid,22059,0,1,0,"7-3","婚礼礼包（中）")
	s_addItem(uid,20164,0,1,0,"3-7776000","婚礼礼包（中）")
	s_addItem(uid,20170,0,1,0,"3-7776000","婚礼礼包（中）")
	return VALUE_OK
end

--婚礼礼包（大）
function OnUseItemEvent_31251(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31251") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,31252,0,3,0,"1-1","婚礼礼包（大）")
	s_addItem(uid,31253,0,3,0,"1-1","婚礼礼包（大）")
	s_addItem(uid,31254,0,3,0,"1-1","婚礼礼包（大）")
	s_addItem(uid,31255,0,2,0,"1-1","婚礼礼包（大）")
	s_addItem(uid,31258,0,2,0,"1-1","婚礼礼包（大）")
	s_addItem(uid,31276,0,10,0,"1-1","婚礼礼包（大）")
	s_addItem(uid,31230,0,40,0,"1-1","婚礼礼包（大）")
	s_addItem(uid,31231,0,40,0,"1-1","婚礼礼包（大）")
	s_addItem(uid,30006,0,100,0,"1-1","婚礼礼包（大）")
	s_addItem(uid,30007,0,100,0,"1-1","婚礼礼包（大）")
	s_addItem(uid,30008,0,100,0,"1-1","婚礼礼包（大）")
	s_addItem(uid,30009,0,100,0,"1-1","婚礼礼包（大）")
	s_addItem(uid,30005,0,100,0,"1-1","婚礼礼包（大）")
	s_addItem(uid,22060,0,1,0,"7-4","婚礼礼包（大）")
	s_addItem(uid,22060,0,1,0,"7-4","婚礼礼包（大）")
	s_addItem(uid,22059,0,1,0,"7-3","婚礼礼包（大）")
	s_addItem(uid,22059,0,1,0,"7-3","婚礼礼包（大）")
	s_addItem(uid,20166,0,1,0,"3-62208000","婚礼礼包（大）")
	s_addItem(uid,20168,0,1,0,"3-62208000","婚礼礼包（大）")
	s_addItem(uid,50025,0,1,1,"1-1,3-62208000","双人坐骑",0)
	return VALUE_OK
end
