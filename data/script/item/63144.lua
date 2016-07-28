--U9逆袭礼包(1级)
function OnUseItemEvent_63144(uid,thisid)
	local worldlevel = s_getWorldLevel()
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63144") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63145,0,1,0,"1-1","U9逆袭礼包(1级)")
	s_addItem(uid,6,0,1,0,"1-1","U9逆袭礼包(1级)")
	s_addItem(uid,24093,0,1,0,"1-1","U9逆袭礼包(1级)")
	return VALUE_OK
end

--U9逆袭礼包(10级)
function OnUseItemEvent_63145(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63145") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63146,0,1,0,"1-1","U9逆袭礼包(10级)")
	s_addItem(uid,47001,0,3,0,"1-1,7-2","U9逆袭礼包(10级)")
	s_addItem(uid,6,0,2,0,"1-1","U9逆袭礼包(10级)")
	return VALUE_OK
end

--U9逆袭礼包(20级)
function OnUseItemEvent_63146(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63146") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63147,0,1,0,"1-1","U9逆袭礼包(20级)")
	s_addItem(uid,6,0,4,0,"1-1","U9逆袭礼包(20级)")
	s_addItem(uid,24094,0,1,0,"1-1","U9逆袭礼包(1级)")
	return VALUE_OK
end

--U9逆袭礼包(30级)
function OnUseItemEvent_63147(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63147") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63148,0,1,0,"1-1","U9逆袭礼包(30级)")
	s_addItem(uid,6,0,10,0,"1-1","U9逆袭礼包(30级)")
	s_addItem(uid,55152,0,10,0,"1-1","U9逆袭礼包(30级)")
	s_addItem(uid,29026,0,60,0,"1-1","U9逆袭礼包(30级)")
	s_addItem(uid,29066,0,3,0,"1-1,7-2","U9逆袭礼包(30级)")
	s_addItem(uid,55158,0,10,0,"1-1","U9逆袭礼包(30级)")
	return VALUE_OK
end

--U9逆袭礼包(40级)
function OnUseItemEvent_63148(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63148") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20189,0,1,1,"1-1,7-0,3-259200","U9逆袭礼包(40级)")
	else
		s_addItem(uid,20181,0,1,1,"1-1,7-0,3-259200","U9逆袭礼包(40级)")
	end
	s_addItem(uid,63149,0,1,0,"1-1","U9逆袭礼包(40级)")
	s_addItem(uid,6,0,15,0,"1-1","U9逆袭礼包(40级)")
	s_addItem(uid,26128,0,50,0,"1-1","U9逆袭礼包(40级)")
	s_addItem(uid,23051,0,20,0,"1-1","U9逆袭礼包(40级)")
	return VALUE_OK
end

--U9逆袭礼包(50级)
function OnUseItemEvent_63149(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63149") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63150,0,1,0,"1-1","U9逆袭礼包(50级)")
	s_addItem(uid,6,0,20,0,"1-1","U9逆袭礼包(50级)")
	s_addItem(uid,27108,0,100,0,"1-1","U9逆袭礼包(50级)")
	s_addItem(uid,26102,0,50,0,"1-1","U9逆袭礼包(50级)")
	s_addItem(uid,29003,0,1,0,"1-1","U9逆袭礼包(50级)")
	s_addItem(uid,31147,0,3,0,"1-1,7-2","U9逆袭礼包(50级)")
	s_addItem(uid,26018,0,5,0,"1-1","U9逆袭礼包(50级)")
	return VALUE_OK
end

--U9逆袭礼包(60级)
function OnUseItemEvent_63150(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63150") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63151,0,1,0,"1-1","U9逆袭礼包(60级)")
	s_addItem(uid,6,0,30,0,"1-1","U9逆袭礼包(60级)")
	s_addItem(uid,26149,0,100,0,"1-1","U9逆袭礼包(60级)")
	s_addItem(uid,35208,0,1,0,"1-1","U9逆袭礼包(60级)")
	s_addItem(uid,26104,0,2,0,"1-1","U9逆袭礼包(60级)")
	s_addItem(uid,26018,0,5,0,"1-1","U9逆袭礼包(60级)")
	s_addItem(uid,31145,0,3,0,"1-1,7-2","U9逆袭礼包(60级)")
	s_addItem(uid,24095,0,1,0,"1-1","U9逆袭礼包(1级)")
	return VALUE_OK
end

--U9逆袭礼包(70级)
function OnUseItemEvent_63151(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63151") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,50,0,"1-1","U9逆袭礼包(70级)")
	s_addItem(uid,26102,0,50,0,"1-1","U9逆袭礼包(70级)")
	s_addItem(uid,52028,0,1,0,"1-1,3-259200,8-259200,","U9逆袭礼包(70级)")
	s_addItem(uid,23051,0,50,0,"1-1","U9逆袭礼包(70级)")
	s_addItem(uid,26141,0,1,0,"1-1","U9逆袭礼包(70级)")
	s_addItem(uid,32215,0,1,0,"1-1","U9逆袭礼包(70级)")
	s_addItem(uid,26018,0,10,0,"1-1","U9逆袭礼包(70级)")
	return VALUE_OK
end
