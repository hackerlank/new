--奇异珠3
function OnUseItemEvent_43073(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_43073") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,31044)
	if level == 0 then
		s_addbuff(SCENE_ENTRY_PLAYER,uid,31044,1,100*60)
	else
		local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,31044)
		time = time + 100*60
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,31044,time)
	end
	return VALUE_OK
end
