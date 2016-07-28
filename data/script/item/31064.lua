--图腾
function OnUseItemEvent_31064(uid,thisid,npc)
	local process = s_getTaskValue(uid,10161,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		return VALUE_FAIL
	end
	local baseid = s_getValue(SCENE_ENTRY_NPC,npc,VALUE_TYPE_BASE_ID)
	if baseid ~= 60042 then
		s_sysInfo(uid,"目标无效")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31064") ~= VALUE_OK then
		return VALUE_FAIL
	end
	AddRoleTaskOperate(uid,10161)
	return VALUE_OK
end
