--百度至尊逆袭礼包(1级)
function OnUseItemEvent_63331(uid,thisid)
	local worldlevel = s_getWorldLevel()
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63331") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if worldlevel < 2 then
	--s_addItem(uid,26,0,1,0,"1-1,192-32,193-1","百度至尊逆袭礼包(1级)")
	--s_addItem(uid,23,0,1,0,"1-1,192-62,193-10","百度至尊逆袭礼包(1级)")
	end
	s_addItem(uid,63332,0,1,0,"1-1","百度至尊逆袭礼包(1级)")
	s_addItem(uid,6,0,2,0,"1-1","百度至尊逆袭礼包(1级)")
	s_addItem(uid,63339,0,1,0,"1-1","百度至尊逆袭礼包(1级)")
	return VALUE_OK
end

--百度至尊逆袭礼包(10级)
function OnUseItemEvent_63332(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63332") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63333,0,1,0,"1-1","百度至尊逆袭礼包(10级)")
	s_addItem(uid,47001,0,3,0,"1-1,7-2","百度至尊逆袭礼包(10级)")
	s_addItem(uid,6,0,4,0,"1-1","百度至尊逆袭礼包(10级)")
	return VALUE_OK
end

--百度至尊逆袭礼包(20级)
function OnUseItemEvent_63333(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63333") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29556,0,1,0,"1-1","百度至尊逆袭礼包(20级)")
	s_addItem(uid,63334,0,1,0,"1-1","百度至尊逆袭礼包(20级)")
	s_addItem(uid,6,0,8,0,"1-1","百度至尊逆袭礼包(20级)")
	s_addItem(uid,63340,0,1,0,"1-1","百度至尊逆袭礼包(20级)")
	s_addItem(uid,52027,0,1,0,"1-1,3-259200,8-259200,","百度至尊逆袭礼包(20级)")
	return VALUE_OK
end

--百度至尊逆袭礼包(30级)
function OnUseItemEvent_63334(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63334") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63335,0,1,0,"1-1","百度至尊逆袭礼包(30级)")
	s_addItem(uid,6,0,20,0,"1-1","百度至尊逆袭礼包(30级)")
	s_addItem(uid,55152,0,10,0,"1-1","百度至尊逆袭礼包(30级)")
	s_addItem(uid,29026,0,60,0,"1-1","百度至尊逆袭礼包(30级)")
	s_addItem(uid,29066,0,3,0,"1-1,7-2","百度至尊逆袭礼包(30级)")
	s_addItem(uid,55158,0,10,0,"1-1","百度至尊逆袭礼包(30级)")
	return VALUE_OK
end

--百度至尊逆袭礼包(40级)
function OnUseItemEvent_63335(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63335") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20189,0,1,1,"1-1,7-0,3-259200","百度至尊逆袭礼包(40级)")
	else
		s_addItem(uid,20181,0,1,1,"1-1,7-0,3-259200","百度至尊逆袭礼包(40级)")
	end
	s_addItem(uid,63336,0,1,0,"1-1","百度至尊逆袭礼包(40级)")
	s_addItem(uid,6,0,30,0,"1-1","百度至尊逆袭礼包(40级)")
	s_addItem(uid,26128,0,50,0,"1-1","百度至尊逆袭礼包(40级)")
	s_addItem(uid,23051,0,20,0,"1-1","百度至尊逆袭礼包(40级)")
	return VALUE_OK
end

--百度至尊逆袭礼包(50级)
function OnUseItemEvent_63336(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63336") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63337,0,1,0,"1-1","百度至尊逆袭礼包(50级)")
	s_addItem(uid,6,0,40,0,"1-1","百度至尊逆袭礼包(50级)")
	s_addItem(uid,27108,0,100,0,"1-1","百度至尊逆袭礼包(50级)")
	s_addItem(uid,26102,0,50,0,"1-1","百度至尊逆袭礼包(50级)")
	s_addItem(uid,29003,0,1,0,"1-1","百度至尊逆袭礼包(50级)")
	s_addItem(uid,31147,0,3,0,"1-1,7-2","百度至尊逆袭礼包(50级)")
	s_addItem(uid,26018,0,5,0,"1-1","百度至尊逆袭礼包(50级)")
	return VALUE_OK
end

--百度至尊逆袭礼包(60级)
function OnUseItemEvent_63337(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63337") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63338,0,1,0,"1-1","百度至尊逆袭礼包(60级)")
	s_addItem(uid,6,0,60,0,"1-1","百度至尊逆袭礼包(60级)")
	s_addItem(uid,26149,0,100,0,"1-1","百度至尊逆袭礼包(60级)")
	s_addItem(uid,63341,0,1,0,"1-1","百度至尊逆袭礼包(60级)")
	s_addItem(uid,26104,0,2,0,"1-1","百度至尊逆袭礼包(60级)")
	s_addItem(uid,26018,0,5,0,"1-1","百度至尊逆袭礼包(60级)")
	s_addItem(uid,31145,0,3,0,"1-1,7-2","百度至尊逆袭礼包(60级)")
	s_addItem(uid,35208,0,1,0,"1-1","百度至尊逆袭礼包(60级)")
	return VALUE_OK
end

--百度至尊逆袭礼包(70级)
function OnUseItemEvent_63338(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63338") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,100,0,"1-1","百度至尊逆袭礼包(70级)")
	s_addItem(uid,26102,0,50,0,"1-1","百度至尊逆袭礼包(70级)")
	s_addItem(uid,52028,0,1,0,"1-1,3-259200,8-259200,","百度至尊逆袭礼包(70级)")
	s_addItem(uid,23051,0,50,0,"1-1","百度至尊逆袭礼包(70级)")
	s_addItem(uid,26141,0,1,0,"1-1","百度至尊逆袭礼包(70级)")
	s_addItem(uid,32215,0,1,0,"1-1","百度至尊逆袭礼包(70级)")
	s_addItem(uid,26018,0,10,0,"1-1","百度至尊逆袭礼包(70级)")
	return VALUE_OK
end
