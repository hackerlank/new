--1.75倍经验
function OnUseItemEvent_23055(userid,thisid,targetid)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,userid,31034) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,userid,31035) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,userid,31036) ~= 0 then
		s_sysInfo(userid,"已有不同倍率经验加成，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_23055") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,userid,31037) ~= 0 then
		local time = s_getbufftime(SCENE_ENTRY_PLAYER,userid,31037)
		s_updateBuffTime(SCENE_ENTRY_PLAYER,userid,31037,time + 60*60)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,userid,31037,1,60*60)
	end
	return VALUE_OK
end
