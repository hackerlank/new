--巴士游戏逆袭礼包(1级)
function OnUseItemEvent_63304(uid,thisid)
	local worldlevel = s_getWorldLevel()
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63304") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63305,0,1,0,"1-1","巴士游戏逆袭礼包(1级)")
	s_addItem(uid,6,0,1,0,"1-1","巴士游戏逆袭礼包(1级)")
	s_addItem(uid,63114,0,1,0,"1-1","巴士游戏逆袭礼包(1级)")
	return VALUE_OK
end

--巴士游戏逆袭礼包(10级)
function OnUseItemEvent_63305(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63305") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63306,0,1,0,"1-1","巴士游戏逆袭礼包(10级)")
	s_addItem(uid,47001,0,3,0,"1-1,7-2","巴士游戏逆袭礼包(10级)")
	s_addItem(uid,6,0,2,0,"1-1","巴士游戏逆袭礼包(10级)")
	return VALUE_OK
end

--巴士游戏逆袭礼包(20级)
function OnUseItemEvent_63306(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63306") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63307,0,1,0,"1-1","巴士游戏逆袭礼包(20级)")
	s_addItem(uid,6,0,4,0,"1-1","巴士游戏逆袭礼包(20级)")
	s_addItem(uid,63115,0,1,0,"1-1","巴士游戏逆袭礼包(1级)")
	return VALUE_OK
end

--巴士游戏逆袭礼包(30级)
function OnUseItemEvent_63307(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63307") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63308,0,1,0,"1-1","巴士游戏逆袭礼包(30级)")
	s_addItem(uid,6,0,10,0,"1-1","巴士游戏逆袭礼包(30级)")
	s_addItem(uid,55152,0,10,0,"1-1","巴士游戏逆袭礼包(30级)")
	s_addItem(uid,29026,0,60,0,"1-1","巴士游戏逆袭礼包(30级)")
	s_addItem(uid,29066,0,3,0,"1-1,7-2","巴士游戏逆袭礼包(30级)")
	s_addItem(uid,55158,0,10,0,"1-1","巴士游戏逆袭礼包(30级)")
	return VALUE_OK
end

--巴士游戏逆袭礼包(40级)
function OnUseItemEvent_63308(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63308") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20189,0,1,1,"1-1,7-0,3-259200","巴士游戏逆袭礼包(40级)")
	else
		s_addItem(uid,20181,0,1,1,"1-1,7-0,3-259200","巴士游戏逆袭礼包(40级)")
	end
	s_addItem(uid,63309,0,1,0,"1-1","巴士游戏逆袭礼包(40级)")
	s_addItem(uid,6,0,15,0,"1-1","巴士游戏逆袭礼包(40级)")
	s_addItem(uid,26128,0,50,0,"1-1","巴士游戏逆袭礼包(40级)")
	s_addItem(uid,23051,0,20,0,"1-1","巴士游戏逆袭礼包(40级)")
	return VALUE_OK
end

--巴士游戏逆袭礼包(50级)
function OnUseItemEvent_63309(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63309") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63310,0,1,0,"1-1","巴士游戏逆袭礼包(50级)")
	s_addItem(uid,6,0,20,0,"1-1","巴士游戏逆袭礼包(50级)")
	s_addItem(uid,27108,0,100,0,"1-1","巴士游戏逆袭礼包(50级)")
	s_addItem(uid,26102,0,50,0,"1-1","巴士游戏逆袭礼包(50级)")
	s_addItem(uid,29003,0,1,0,"1-1","巴士游戏逆袭礼包(50级)")
	s_addItem(uid,31147,0,3,0,"1-1,7-2","巴士游戏逆袭礼包(50级)")
	s_addItem(uid,26018,0,5,0,"1-1","巴士游戏逆袭礼包(50级)")
	return VALUE_OK
end

--巴士游戏逆袭礼包(60级)
function OnUseItemEvent_63310(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63310") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63311,0,1,0,"1-1","巴士游戏逆袭礼包(60级)")
	s_addItem(uid,6,0,30,0,"1-1","巴士游戏逆袭礼包(60级)")
	s_addItem(uid,26149,0,100,0,"1-1","巴士游戏逆袭礼包(60级)")
	s_addItem(uid,35208,0,1,0,"1-1","巴士游戏逆袭礼包(60级)")
	s_addItem(uid,26104,0,2,0,"1-1","巴士游戏逆袭礼包(60级)")
	s_addItem(uid,26018,0,5,0,"1-1","巴士游戏逆袭礼包(60级)")
	s_addItem(uid,31145,0,3,0,"1-1,7-2","巴士游戏逆袭礼包(60级)")
	s_addItem(uid,63116,0,1,0,"1-1","巴士游戏逆袭礼包(1级)")
	return VALUE_OK
end

--巴士游戏逆袭礼包(70级)
function OnUseItemEvent_63311(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63311") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,50,0,"1-1","巴士游戏逆袭礼包(70级)")
	s_addItem(uid,26102,0,50,0,"1-1","巴士游戏逆袭礼包(70级)")
	s_addItem(uid,52028,0,1,0,"1-1,3-259200,8-259200,","巴士游戏逆袭礼包(70级)")
	s_addItem(uid,23051,0,50,0,"1-1","巴士游戏逆袭礼包(70级)")
	s_addItem(uid,26141,0,1,0,"1-1","巴士游戏逆袭礼包(70级)")
	s_addItem(uid,32215,0,1,0,"1-1","巴士游戏逆袭礼包(70级)")
	s_addItem(uid,26018,0,10,0,"1-1","巴士游戏逆袭礼包(70级)")
	return VALUE_OK
end
