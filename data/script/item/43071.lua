--奇异珠1
function OnUseItemEvent_43071(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_43071") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,31042)
	if level == 0 then
		s_addbuff(SCENE_ENTRY_PLAYER,uid,31042,1,20*60)
	else
		local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,31042)
		time = time + 20*60
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,31042,time)
	end
	return VALUE_OK
end
