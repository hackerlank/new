--神恩祈福
function OnUseItemEvent_55276(uid,thisid,targetid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 81 then
		s_sysInfo(uid,"81级以上才可使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"删除神恩祈福道具") == VALUE_OK then
		s_refreshExp(uid,exp,ExpType_Item,55210)
	end
	ShowBlessWeeklyTaskInterface(uid)
	return VALUE_OK
end
