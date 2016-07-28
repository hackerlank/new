--“小有名气”宝盒
function OnUseItemEvent_55181(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"小有名气") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,10,3,5,0,"1-1","100赠点券")
	s_addItem(uid,6,3,20,0,"1-1","100绑银券")
	return VALUE_OK
end

--“名声大振”宝盒
function OnUseItemEvent_55182(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"名声大振") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,10,3,5,0,"1-1","100赠点券")
	s_addItem(uid,6,3,30,0,"1-1","100绑银券")
	s_addItem(uid,26018,3,25,0,"1-1","复活盾")
	return VALUE_OK
end

--“大名鼎鼎”宝盒
function OnUseItemEvent_55183(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"大名鼎鼎") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,10,3,5,0,"1-1","100赠点券")
	s_addItem(uid,6,3,30,0,"1-1","100绑银券")
	s_addItem(uid,26018,3,25,0,"1-1","复活盾")
	return VALUE_OK
end

--“如雷贯耳”宝盒
function OnUseItemEvent_55184(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"如雷贯耳") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,10,3,10,0,"1-1","100赠点券")
	s_addItem(uid,6,3,30,0,"1-1","100绑银券")
	s_addItem(uid,63036,3,5,0,"1-1","符文碎片盒")
	return VALUE_OK
end

--“远近闻名”宝盒
function OnUseItemEvent_55185(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"远近闻名") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,10,3,15,0,"1-1","100赠点券")
	s_addItem(uid,6,3,30,0,"1-1","100绑银券")
	s_addItem(uid,26018,3,25,0,"1-1","复活盾")
	s_addItem(uid,63036,3,3,0,"1-1","符文碎片盒")
	return VALUE_OK
end

--“家喻户晓”宝盒
function OnUseItemEvent_55186(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"家喻户晓") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,10,3,15,0,"1-1","100赠点券")
	s_addItem(uid,6,3,30,0,"1-1","100绑银券")
	s_addItem(uid,63036,3,3,0,"1-1","符文碎片盒")
	s_addItem(uid,22054,3,1,0,"1-1","空间法令")
	return VALUE_OK
end

--“威名远扬”宝盒
function OnUseItemEvent_55187(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"威名远扬") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,10,3,15,0,"1-1","100赠点券")
	s_addItem(uid,6,3,30,0,"1-1","100绑银券")
	s_addItem(uid,26018,3,25,0,"1-1","复活盾")
	s_addItem(uid,63036,3,3,0,"1-1","符文碎片盒")
	return VALUE_OK
end

--“闻名遐迩”宝盒
function OnUseItemEvent_55188(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"闻名遐迩") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,10,3,15,0,"1-1","100赠点券")
	s_addItem(uid,6,3,30,0,"1-1","100绑银券")
	s_addItem(uid,26018,3,50,0,"1-1","复活盾")
	s_addItem(uid,63036,3,3,0,"1-1","符文碎片盒")
	s_addItem(uid,31156,3,1,0,"1-1","神兵魔武宝箱")
	return VALUE_OK
end

--“声名显赫”宝盒
function OnUseItemEvent_55189(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"声名显赫") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,10,3,15,0,"1-1","100赠点券")
	s_addItem(uid,6,3,30,0,"1-1","100绑银券")
	s_addItem(uid,26018,3,50,0,"1-1","复活盾")
	s_addItem(uid,63036,3,3,0,"1-1","符文碎片盒")
	s_addItem(uid,55199,3,1,0,"1-1","九天坐骑时装")
	return VALUE_OK
end
