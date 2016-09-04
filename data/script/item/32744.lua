--多玩新手卡(1级)
function OnUseItemEvent_32744(uid,thisid)
	local worldlevel = s_getWorldLevel()
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32744") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if worldlevel < 2 then
	--s_addItem(uid,26,0,1,0,"1-1,192-32,193-1","多玩至尊逆袭礼包(1级)")
	--s_addItem(uid,23,0,1,0,"1-1,192-62,193-10","多玩至尊逆袭礼包(1级)")
	end
	s_addItem(uid,32745,0,1,0,"1-1","多玩至尊逆袭礼包(1级)")
	s_addItem(uid,6,0,1,0,"1-1","多玩至尊逆袭礼包(1级)")
	s_addItem(uid,24051,0,1,0,"1-1","多玩至尊逆袭礼包(1级)")
	return VALUE_OK
end

--多玩至尊逆袭礼包(10级)
function OnUseItemEvent_32745(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32745") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32746,0,1,0,"1-1","多玩至尊逆袭礼包(10级)")
	s_addItem(uid,47001,0,3,0,"1-1,7-2","多玩至尊逆袭礼包(10级)")
	s_addItem(uid,6,0,2,0,"1-1","多玩至尊逆袭礼包(10级)")
	return VALUE_OK
end

--多玩至尊逆袭礼包(20级)
function OnUseItemEvent_32746(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32746") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32747,0,1,0,"1-1","多玩至尊逆袭礼包(20级)")
	s_addItem(uid,6,0,4,0,"1-1","多玩至尊逆袭礼包(20级)")
	s_addItem(uid,29517,0,1,0,"1-1","多玩至尊逆袭礼包(20级)")
	s_addItem(uid,24052,0,1,0,"1-1","多玩至尊逆袭礼包(20级)")
	return VALUE_OK
end

--多玩至尊逆袭礼包(30级)
function OnUseItemEvent_32747(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32747") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32748,0,1,0,"1-1","多玩至尊逆袭礼包(30级)")
	s_addItem(uid,6,0,10,0,"1-1","多玩至尊逆袭礼包(30级)")
	s_addItem(uid,55152,0,10,0,"1-1","多玩至尊逆袭礼包(30级)")
	s_addItem(uid,29026,0,60,0,"1-1","多玩至尊逆袭礼包(30级)")
	s_addItem(uid,29066,0,3,0,"1-1,7-2","多玩至尊逆袭礼包(30级)")
	s_addItem(uid,55158,0,10,0,"1-1","多玩至尊逆袭礼包(30级)")
	return VALUE_OK
end

--多玩至尊逆袭礼包(40级)
function OnUseItemEvent_32748(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32748") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20189,0,1,1,"1-1,7-0,3-259200","多玩至尊逆袭礼包(40级)")
	else
		s_addItem(uid,20181,0,1,1,"1-1,7-0,3-259200","多玩至尊逆袭礼包(40级)")
	end
	s_addItem(uid,32749,0,1,0,"1-1","多玩至尊逆袭礼包(40级)")
	s_addItem(uid,6,0,15,0,"1-1","多玩至尊逆袭礼包(40级)")
	s_addItem(uid,26128,0,50,0,"1-1","多玩至尊逆袭礼包(40级)")
	s_addItem(uid,23051,0,20,0,"1-1","多玩至尊逆袭礼包(40级)")
	return VALUE_OK
end

--多玩至尊逆袭礼包(50级)
function OnUseItemEvent_32749(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32749") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32750,0,1,0,"1-1","多玩至尊逆袭礼包(50级)")
	s_addItem(uid,6,0,20,0,"1-1","多玩至尊逆袭礼包(50级)")
	s_addItem(uid,27108,0,100,0,"1-1","多玩至尊逆袭礼包(50级)")
	s_addItem(uid,26102,0,50,0,"1-1","多玩至尊逆袭礼包(50级)")
	s_addItem(uid,29003,0,1,0,"1-1","多玩至尊逆袭礼包(50级)")
	s_addItem(uid,31147,0,3,0,"1-1,7-2","多玩至尊逆袭礼包(50级)")
	s_addItem(uid,26018,0,5,0,"1-1","多玩至尊逆袭礼包(50级)")
	return VALUE_OK
end

--多玩至尊逆袭礼包(60级)
function OnUseItemEvent_32750(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32750") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32751,0,1,0,"1-1","多玩至尊逆袭礼包(60级)")
	s_addItem(uid,6,0,30,0,"1-1","多玩至尊逆袭礼包(60级)")
	s_addItem(uid,26149,0,100,0,"1-1","多玩至尊逆袭礼包(60级)")
	s_addItem(uid,24053,0,1,0,"1-1","多玩至尊逆袭礼包(60级)")
	s_addItem(uid,35208,0,1,0,"1-1","多玩至尊逆袭礼包(60级)")
	s_addItem(uid,26104,0,2,0,"1-1","多玩至尊逆袭礼包(60级)")
	s_addItem(uid,26018,0,5,0,"1-1","多玩至尊逆袭礼包(60级)")
	s_addItem(uid,31145,0,3,0,"1-1,7-2","多玩至尊逆袭礼包(60级)")
	return VALUE_OK
end

--多玩至尊逆袭礼包(70级)
function OnUseItemEvent_32751(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32751") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,50,0,"1-1","多玩至尊逆袭礼包(70级)")
	s_addItem(uid,26102,0,50,0,"1-1","多玩至尊逆袭礼包(70级)")
	s_addItem(uid,52028,0,1,0,"1-1,3-259200,8-259200,","多玩至尊逆袭礼包(70级)")
	s_addItem(uid,23051,0,50,0,"1-1","多玩至尊逆袭礼包(70级)")
	s_addItem(uid,26141,0,1,0,"1-1","多玩至尊逆袭礼包(70级)")
	s_addItem(uid,32215,0,1,0,"1-1","多玩至尊逆袭礼包(70级)")
	s_addItem(uid,26018,0,10,0,"1-1","多玩至尊逆袭礼包(70级)")
	return VALUE_OK
end
