function OnUseItemEvent_63047(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63050,3,1,0,"1-1","时装")
	s_addItem(uid,63054,3,1,0,"1-1","称号")
	return VALUE_OK
end

--兵王1玩家去兵王2礼包
function OnUseItemEvent_63048(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63048") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,63052,3,1,1,"1-1,3-1296000","时装(男)")
	else
		s_addItem(uid,63051,3,1,1,"1-1,3-1296000","时装(女)")
	end
	s_addItem(uid,63053,3,1,0,"1-1,3-1296000","荣耀星辰")
	return VALUE_OK
end

function OnUseItemEvent_63049(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,63055,3,1,0,"1-1","称号")
	s_addbuff(SCENE_ENTRY_PLAYER,uid,41116,1,604800)
	return VALUE_OK
end
