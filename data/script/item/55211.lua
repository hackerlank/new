--秋字每天限制使用5次并且加经验
function OnUseItemEvent_55211(uid,thisid,targetid)
	local count = s_getVar(uid,116,117)
	if count >= 5 then
		s_sysInfo(uid,"每天只能使用5次秋字",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	else
		s_sysInfo(uid,"今日还能使用".. 4-count .."次秋字",ChatPos_Sys + ChatPos_Important)
	end
	s_addVar(uid,116,117,count + 1)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 21*(50+0.1*level^2.2)
	if s_deleteItemByThisID(uid,thisid,1,"删除秋字") == VALUE_OK then
		s_refreshExp(uid,exp,ExpType_Item,55211)
	end
	return VALUE_OK
end
