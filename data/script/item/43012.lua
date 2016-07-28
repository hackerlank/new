--宠物经验药(中)
function OnUseItemEvent_43012(userid,thisid,targetid)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,userid,31042) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,userid,31044) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,userid,31045) ~= 0 then
		s_sysInfo(userid,"已有不同倍率经验加成，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_43012") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,userid,31043) ~= 0 then
		local time = s_getbufftime(SCENE_ENTRY_PLAYER,userid,31043)
		s_updateBuffTime(SCENE_ENTRY_PLAYER,userid,31043,time + 60*60)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,userid,31043,1,60*60)
	end
	return VALUE_OK
end
