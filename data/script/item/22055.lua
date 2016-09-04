function OnUseItemEvent_22055(uid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP)
	if hp ~= 0 then
		s_sysInfo(uid,"非死亡状态下不能使用")
		return VALUE_FAIL
	end
	local ctype = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_TYPE)
	if ctype ~= 0 then
		s_sysInfo(uid,"副本内无法使用")
		return VALUE_FAIL
	end

	local cur_time = s_getCurTime(TIME_ALLSECONDS)
	local count = s_getItemValue(uid,thisid,Item_Attribute_UseCount)
	local last_time = s_getItemValue(uid,thisid,Item_Attribute_LastUseTime)

	if math.floor(last_time/86400) ~= math.floor(cur_time/86400) then
		count = 1
		s_setItemValue(uid,thisid,Item_Attribute_LastUseTime,cur_time)
	else
		if count >= 10 then
			s_sysInfo(uid,"此道具每天只能使用10次")
			return VALUE_FAIL
		end
		count = count + 1
	end
	s_setItemValue(uid,thisid,Item_Attribute_UseCount,count)
	s_refreshItem(uid,thisid)

	s_relive(SCENE_ENTRY_PLAYER,uid)
	return VALUE_OK
end
