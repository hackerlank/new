--多玩(1级)玫瑰卡
function OnUseItemEvent_32038(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32038") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32046,0,1,0,"1-1","多玩")
	s_addItem(uid,29517,0,1,0,"1-1","多玩")
	s_addItem(uid,6,0,1,0,"1-1","多玩")
	s_addItem(uid,23031,0,5,0,"1-1","多玩")
	s_addItem(uid,23041,0,5,0,"1-1","多玩")
	return VALUE_OK
end

--17173(1级)玫瑰卡
function OnUseItemEvent_32039(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32039") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,29518,0,1,0,"1-1","17173")
	else
		s_addItem(uid,29519,0,1,0,"1-1","17173")
	end
	s_addItem(uid,32046,0,1,0,"1-1","17173")
	s_addItem(uid,6,0,1,0,"1-1","17173")
	s_addItem(uid,23031,0,5,0,"1-1","17173")
	s_addItem(uid,23041,0,5,0,"1-1","17173")
	return VALUE_OK
end


--腾讯(1级)玫瑰卡
function OnUseItemEvent_32040(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32040") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32046,0,1,0,"1-1","腾讯")
	s_addItem(uid,29524,0,1,0,"1-1","腾讯")
	s_addItem(uid,6,0,1,0,"1-1","腾讯")
	s_addItem(uid,23031,0,5,0,"1-1","腾讯")
	s_addItem(uid,23041,0,5,0,"1-1","腾讯")
	return VALUE_OK
end

--新浪(1级)玫瑰卡
function OnUseItemEvent_32041(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32041") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32046,0,1,0,"1-1","新浪")
	s_addItem(uid,29522,0,1,0,"1-1","新浪")
	s_addItem(uid,6,0,1,0,"1-1","新浪")
	s_addItem(uid,23031,0,5,0,"1-1","新浪")
	s_addItem(uid,23041,0,5,0,"1-1","新浪")
	return VALUE_OK
end

--网易(1级)玫瑰卡
function OnUseItemEvent_32042(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32042") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32046,0,1,0,"1-1","网易")
	s_addItem(uid,29523,0,1,0,"1-1","网易")
	s_addItem(uid,6,0,1,0,"1-1","网易")
	s_addItem(uid,23031,0,5,0,"1-1","网易")
	s_addItem(uid,23041,0,5,0,"1-1","网易")
	return VALUE_OK
end

--顺网(1级)玫瑰卡
function OnUseItemEvent_32043(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32043") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32046,0,1,0,"1-1","顺网")
	s_addItem(uid,29525,0,1,0,"1-1","顺网")
	s_addItem(uid,6,0,1,0,"1-1","顺网")
	s_addItem(uid,23031,0,5,0,"1-1","顺网")
	s_addItem(uid,23041,0,5,0,"1-1","顺网")
	return VALUE_OK
end

--pubwin(1级)玫瑰卡
function OnUseItemEvent_32044(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32044") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,29520,0,1,0,"1-1","pubwin")
	else
		s_addItem(uid,29521,0,1,0,"1-1","pubwin")
	end
	s_addItem(uid,32046,0,1,0,"1-1","pubwin")
	s_addItem(uid,6,0,1,0,"1-1","pubwin")
	s_addItem(uid,23031,0,5,0,"1-1","pubwin")
	s_addItem(uid,23041,0,5,0,"1-1","pubwin")
	return VALUE_OK
end

--360(1级)玫瑰卡
function OnUseItemEvent_32045(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32045") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32046,0,1,0,"1-1","360")
	s_addItem(uid,29528,0,1,0,"1-1","360")
	s_addItem(uid,6,0,1,0,"1-1","360")
	s_addItem(uid,23031,0,5,0,"1-1","360")
	s_addItem(uid,23041,0,5,0,"1-1","360")
	return VALUE_OK
end
