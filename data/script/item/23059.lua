--特权卡7天
function OnUseItemEvent_23059(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_23059") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,userid,53) ~= 0 then
		local time = s_getbufftime(SCENE_ENTRY_PLAYER,userid,53)
		s_updateBuffTime(SCENE_ENTRY_PLAYER,userid,53,time + 7*24*60*60)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,userid,53,1,7*24*60*60)
	end
	return VALUE_OK
end
