function OnUseItemEvent_63044(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63044") == VALUE_OK then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20405) ~= 0 then
			local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20405)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20405,time + 2592000)
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20405,1,2592000)
		end
		return VALUE_OK
	end
	return VALUE_FAIL
end
