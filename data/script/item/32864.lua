function OnUseItemEvent_32864(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32864") ~= VALUE_OK then
		return VALUE_FAIL
	end
	rand = math.random(1,5)
	if rand==1 then
		s_addItem(uid,52053,0,1,0,"1-1","YY盛夏活动一等奖")
	elseif rand==2 then
		s_addItem(uid,52046,0,1,0,"1-1","YY盛夏活动一等奖")
	elseif rand==3 then
		s_addItem(uid,52037,0,1,0,"1-1","YY盛夏活动一等奖")
	elseif rand==4 then
		s_addItem(uid,52027,0,1,0,"1-1","YY盛夏活动一等奖")
	else
		s_addItem(uid,52045,0,1,0,"1-1","YY盛夏活动一等奖")
	end
	return VALUE_OK
end

function OnUseItemEvent_32865(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32865") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level<=60 then
		s_addItem(uid,27108,0,100,0,"1-1","YY盛夏活动二等奖")
	else
		s_addItem(uid,27108,0,100,0,"1-1","YY盛夏活动二等奖")
	end
	return VALUE_OK
end

function OnUseItemEvent_32866(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32866") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level<=60 then
		s_addItem(uid,26129,0,200,0,"1-1","YY盛夏活动三等奖")
	else
		s_addItem(uid,26128,0,200,0,"1-1","YY盛夏活动三等奖")
	end
	return VALUE_OK
end
