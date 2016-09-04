--特权卡30天
function OnUseItemEvent_23056(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_23056") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,userid,53) ~= 0 then
		local time = s_getbufftime(SCENE_ENTRY_PLAYER,userid,53)
		s_updateBuffTime(SCENE_ENTRY_PLAYER,userid,53,time + 60*60*24*30)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,userid,53,1,60*60*24*30)
	end
	return VALUE_OK
end
