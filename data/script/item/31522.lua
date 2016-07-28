--回忆得经验
function OnUseItemEvent_31522(uid,thisid)
	local daynum = s_getVar(uid,116,42)
	if daynum >=2 then
		s_sysInfo(uid,"回忆每天仅可使用2次",ChatPos_Sys)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addVar(uid,116,42,s_getVar(uid,116,42)+1)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 87 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,31524)
	return VALUE_OK
end

--达芬奇任务中奖励的宠物盒
function OnUseItemEvent_31523(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 61 then
		s_sysInfo(uid,"不足61级，无法使用")
		return VALUE_FAIL
	end
	local daynum = s_getVar(uid,116,44)
	if daynum >=2 then
		s_sysInfo(uid,"彩狐铃铛每天仅可使用2次",ChatPos_Sys)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31523") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addVar(uid,116,44,s_getVar(uid,116,44)+1)
	s_openPalace(uid,31523,0)
	return VALUE_OK
end

--染色剂得经验
function OnUseItemEvent_31524(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 15 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,31524)
	return VALUE_OK
end

--达芬奇签名
function OnUseItemEvent_31525(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"达芬奇签名") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addMoney(uid,MoneyType_GoldTicket,3000,"3000赠点")
	return VALUE_OK
end
