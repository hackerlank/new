--小队训练药
function OnUseItemEvent_23060(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_23060") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,userid,31049) ~= 0 then
		s_updateBuffTime(SCENE_ENTRY_PLAYER,userid,31049,10*60)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,userid,31049,1,10*60)
	end
	return VALUE_OK
end
