--抗冰道具
function OnUseItemEvent_63348(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20536)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20537)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20538)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63348") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20535)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20535,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20535,1,1200)
	end
	return VALUE_OK
end

function OnUseItemEvent_63349(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20535)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20537)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20538)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63349") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20536)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20536,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20536,1,1200)
	end
	return VALUE_OK
end

function OnUseItemEvent_63350(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20535)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20536)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20538)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63350") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20537)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20537,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20537,1,1200)
	end
	return VALUE_OK
end

function OnUseItemEvent_63351(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20535)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20536)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20537)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63351") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20538)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20538,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20538,1,1200)
	end
	return VALUE_OK
end

--抗沉道具
function OnUseItemEvent_63352(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20540)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20541)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20542)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63352") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20539)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20539,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20539,1,1200)
	end
	return VALUE_OK
end

function OnUseItemEvent_63353(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20539)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20541)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20542)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63353") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20540)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20540,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20540,1,1200)
	end
	return VALUE_OK
end
function OnUseItemEvent_63354(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20539)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20540)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20542)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63354") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20541)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20541,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20541,1,1200)
	end
	return VALUE_OK
end
function OnUseItemEvent_63355(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20539)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20540)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20541)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63355") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20542)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20542,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20542,1,1200)
	end
	return VALUE_OK
end

--抗变道具
function OnUseItemEvent_63356(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20544)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20545)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20546)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63356") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20543)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20543,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20543,1,1200)
	end
	return VALUE_OK
end

function OnUseItemEvent_63357(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20543)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20545)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20546)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63357") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20544)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20544,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20544,1,1200)
	end
	return VALUE_OK
end

function OnUseItemEvent_63358(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20543)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20544)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20546)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63358") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20545)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20545,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20545,1,1200)
	end
	return VALUE_OK
end

function OnUseItemEvent_63359(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20543)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20544)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20545)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63359") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20546)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20546,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20546,1,1200)
	end
	return VALUE_OK
end

--抗晕道具
function OnUseItemEvent_63360(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20548)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20549)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20550)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63360") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20547)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20547,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20547,1,1200)
	end
	return VALUE_OK
end

function OnUseItemEvent_63361(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20547)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20549)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20550)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63361") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20548)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20548,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20548,1,1200)
	end
	return VALUE_OK
end

function OnUseItemEvent_63362(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20547)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20548)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20550)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63362") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20549)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20549,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20549,1,1200)
	end
	return VALUE_OK
end

function OnUseItemEvent_63363(uid,thisid)
	local buff1 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20547)
	local buff2 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20548)
	local buff3 = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20549)
	if buff1 > 0 or buff2 > 0 or buff3 > 0 then
		s_messageBox(uid,"已有同类型的状态，请等待效果结束后再使用！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63363") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20550)
	if time >  0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20550,time+1200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,20550,1,1200)
	end
	return VALUE_OK
end
