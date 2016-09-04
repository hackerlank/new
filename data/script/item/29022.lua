--特级抗性药剂
function OnUseItemEvent_29022(uid,thisid,targetid)
	local bdef = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BDEF)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,31040) ~= 0 then
		s_sysInfo(uid,"已有同类型状态，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29022") == VALUE_OK then
		s_addbuff(SCENE_ENTRY_PLAYER,uid,31040,1,15*60)
		return VALUE_OK
	end
	return VALUE_FAIL
end

