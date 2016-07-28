--奇异珠2
function OnUseItemEvent_43072(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_43072") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,31043)
	if level == 0 then
		s_addbuff(SCENE_ENTRY_PLAYER,uid,31043,1,50*60)
	else
		local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,31043)
		time = time + 50*60
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,31043,time)
	end
	return VALUE_OK
end
