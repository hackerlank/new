--元宵礼盒
function OnUseItemEvent_31316(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local ITEMS = {31318,31319,31320}
	s_addItem(uid,ITEMS[math.random(1,table.getn(ITEMS))],0,1,0,"1-1","七夕礼盒")
	return VALUE_OK
end
function OnUseItemEvent_31317(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local ITEMS = {31321,31322,31323}
	s_addItem(uid,ITEMS[math.random(1,table.getn(ITEMS))],0,1,0,"1-1","七夕礼盒")
	return VALUE_OK
end
----------------------------------------------------------------------------------------
function OnUseItemEvent_31318(uid,thisid)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,31061) ~= 0 then
		s_sysInfo(uid,"刚吃的巧果还没消化呢，还是换个别的吃吧",ChatPos_Sys)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_PLAYER,uid,31061,1,3*60*60)
	return VALUE_OK
end
function OnUseItemEvent_31319(uid,thisid)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,31062) ~= 0 then
		s_sysInfo(uid,"刚吃的巧果还没消化呢，还是换个别的吃吧",ChatPos_Sys)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end

	s_addbuff(SCENE_ENTRY_PLAYER,uid,31062,1,3*60*60)
	return VALUE_OK
end
function OnUseItemEvent_31320(uid,thisid)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,31063) ~= 0 then
		s_sysInfo(uid,"刚吃的巧果还没消化呢，还是换个别的吃吧",ChatPos_Sys)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_PLAYER,uid,31063,1,3*60*60)
	return VALUE_OK
end
----------------------------------------------------------------------------------------
