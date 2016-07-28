--激战补给包
function OnUseItemEvent_55173(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"激战补给包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,26020,3,1,0,"1-1,3-5400","复活盾")
	s_addItem(uid,23002,3,1,0,"1-1","狂暴药2级")
	s_addItem(uid,23022,3,1,0,"1-1","安神药2级")
	s_addItem(uid,30019,3,3,0,"1-1","国家万岁")
	return VALUE_OK
end

--跨区国战包
function OnUseItemEvent_55174(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"跨区国战包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,26020,3,1,0,"1-1,3-5400","复活盾")
	s_addItem(uid,52055,3,1,0,"1-1,3-5400","跨区白马时装")
	s_addItem(uid,30019,3,3,0,"1-1","国家万岁")
	return VALUE_OK
end
