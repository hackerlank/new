--快字每天限制使用5次并且加经验
function OnUseItemEvent_55212(uid,thisid,targetid)
	local count = s_getVar(uid,116,118)
	if count >= 5 then
		s_sysInfo(uid,"每天只能使用5次快字",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	else
		s_sysInfo(uid,"今日还能使用".. 4-count .."次快字",ChatPos_Sys + ChatPos_Important)
	end
	s_addVar(uid,116,118,count + 1)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 21*(50+0.1*level^2.2)
	if s_deleteItemByThisID(uid,thisid,1,"删除快字") == VALUE_OK then
		s_refreshExp(uid,exp,ExpType_Item,55212)
	end
	return VALUE_OK
end
