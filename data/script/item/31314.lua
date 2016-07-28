--高级猎名师手札
function OnUseItemEvent_31314(uid,thisid,targetid)
	if RoleTaskInfo30004:checkAccept(uid) ~= VALUE_OK then
		return VALUE_FAIL
	end
	local exp = s_getItemValue(uid,thisid,Item_Attribute_TakeExp)
	local quality = s_getItemValue(uid,thisid,Item_Attribute_Quality)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31314") == VALUE_OK then
		RoleTaskInfo30004:AddTask(uid,quality,exp)
		return VALUE_OK
	end
	return VALUE_FAIL
end
