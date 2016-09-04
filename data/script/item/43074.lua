--奇异珠4
function OnUseItemEvent_43074(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_43074") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,31045)
	if level == 0 then
		s_addbuff(SCENE_ENTRY_PLAYER,uid,31045,1,240*60)
	else
		local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,31045)
		time = time + 240*60
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,31045,time)
	end
	return VALUE_OK
end
