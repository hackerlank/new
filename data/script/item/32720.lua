--17173至尊逆袭礼包(1级)
function OnUseItemEvent_32720(uid,thisid)
	local worldlevel = s_getWorldLevel()
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32720") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if worldlevel < 2 then
	--s_addItem(uid,26,0,1,0,"1-1,192-32,193-1","17173至尊逆袭礼包(1级)")
	--s_addItem(uid,23,0,1,0,"1-1,192-62,193-10","17173至尊逆袭礼包(1级)")
	end
	s_addItem(uid,32721,0,1,0,"1-1","17173至尊逆袭礼包(1级)")
	s_addItem(uid,6,0,2,0,"1-1","17173至尊逆袭礼包(1级)")
	s_addItem(uid,24048,0,1,0,"1-1","17173至尊逆袭礼包(1级)")
	return VALUE_OK
end

--17173至尊逆袭礼包(10级)
function OnUseItemEvent_32721(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32721") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32722,0,1,0,"1-1","17173至尊逆袭礼包(10级)")
	s_addItem(uid,47001,0,3,0,"1-1,7-2","17173至尊逆袭礼包(10级)")
	s_addItem(uid,6,0,4,0,"1-1","17173至尊逆袭礼包(10级)")
	return VALUE_OK
end

--17173至尊逆袭礼包(20级)
function OnUseItemEvent_32722(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32722") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if sex == 1 then
		s_addItem(uid,29518,0,1,0,"1-1","17173至尊逆袭礼包(20级)")
	else
		s_addItem(uid,29519,0,1,0,"1-1","17173至尊逆袭礼包(20级)")
	end
	s_addItem(uid,32723,0,1,0,"1-1","17173至尊逆袭礼包(20级)")
	s_addItem(uid,6,0,8,0,"1-1","17173至尊逆袭礼包(20级)")
	s_addItem(uid,24049,0,1,0,"1-1","17173至尊逆袭礼包(20级)")
	s_addItem(uid,52023,0,1,0,"1-1,3-259200,8-259200,","17173至尊逆袭礼包(20级)")
	return VALUE_OK
end

--17173至尊逆袭礼包(30级)
function OnUseItemEvent_32723(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32723") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32724,0,1,0,"1-1","17173至尊逆袭礼包(30级)")
	s_addItem(uid,6,0,20,0,"1-1","17173至尊逆袭礼包(30级)")
	s_addItem(uid,55152,0,10,0,"1-1","17173至尊逆袭礼包(30级)")
	s_addItem(uid,29026,0,60,0,"1-1","17173至尊逆袭礼包(30级)")
	s_addItem(uid,29066,0,3,0,"1-1,7-2","17173至尊逆袭礼包(30级)")
	s_addItem(uid,55158,0,10,0,"1-1","17173至尊逆袭礼包(30级)")
	return VALUE_OK
end

--17173至尊逆袭礼包(40级)
function OnUseItemEvent_32724(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32724") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20189,0,1,1,"1-1,7-0,3-259200","17173至尊逆袭礼包(40级)")
	else
		s_addItem(uid,20181,0,1,1,"1-1,7-0,3-259200","17173至尊逆袭礼包(40级)")
	end
	s_addItem(uid,32725,0,1,0,"1-1","17173至尊逆袭礼包(40级)")
	s_addItem(uid,6,0,30,0,"1-1","17173至尊逆袭礼包(40级)")
	s_addItem(uid,26128,0,50,0,"1-1","17173至尊逆袭礼包(40级)")
	s_addItem(uid,23051,0,20,0,"1-1","17173至尊逆袭礼包(40级)")
	return VALUE_OK
end

--17173至尊逆袭礼包(50级)
function OnUseItemEvent_32725(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32725") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32726,0,1,0,"1-1","17173至尊逆袭礼包(50级)")
	s_addItem(uid,6,0,40,0,"1-1","17173至尊逆袭礼包(50级)")
	s_addItem(uid,27108,0,100,0,"1-1","17173至尊逆袭礼包(50级)")
	s_addItem(uid,26102,0,50,0,"1-1","17173至尊逆袭礼包(50级)")
	s_addItem(uid,29003,0,1,0,"1-1","17173至尊逆袭礼包(50级)")
	s_addItem(uid,31147,0,3,0,"1-1,7-2","17173至尊逆袭礼包(50级)")
	s_addItem(uid,26018,0,5,0,"1-1","17173至尊逆袭礼包(50级)")
	return VALUE_OK
end

--17173至尊逆袭礼包(60级)
function OnUseItemEvent_32726(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32726") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32727,0,1,0,"1-1","17173至尊逆袭礼包(60级)")
	s_addItem(uid,6,0,60,0,"1-1","17173至尊逆袭礼包(60级)")
	s_addItem(uid,26149,0,100,0,"1-1","17173至尊逆袭礼包(60级)")
	s_addItem(uid,24050,0,1,0,"1-1","17173至尊逆袭礼包(60级)")
	s_addItem(uid,26104,0,2,0,"1-1","17173至尊逆袭礼包(60级)")
	s_addItem(uid,26018,0,5,0,"1-1","17173至尊逆袭礼包(60级)")
	s_addItem(uid,31145,0,3,0,"1-1,7-2","17173至尊逆袭礼包(60级)")
	s_addItem(uid,35208,0,1,0,"1-1","17173至尊逆袭礼包(60级)")
	return VALUE_OK
end

--17173至尊逆袭礼包(70级)
function OnUseItemEvent_32727(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32727") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,6,0,100,0,"1-1","17173至尊逆袭礼包(70级)")
	s_addItem(uid,26102,0,50,0,"1-1","17173至尊逆袭礼包(70级)")
	s_addItem(uid,52028,0,1,0,"1-1,3-259200,8-259200,","17173至尊逆袭礼包(70级)")
	s_addItem(uid,23051,0,50,0,"1-1","17173至尊逆袭礼包(70级)")
	s_addItem(uid,26141,0,1,0,"1-1","17173至尊逆袭礼包(70级)")
	s_addItem(uid,32215,0,1,0,"1-1","17173至尊逆袭礼包(70级)")
	s_addItem(uid,26018,0,10,0,"1-1","17173至尊逆袭礼包(70级)")
	return VALUE_OK
end

--尝试配置
--花落无声卡
function OnUseItemEvent_63395(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63395") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27108,0,100,0,"1-1","花落无声卡")
	return VALUE_OK
end
