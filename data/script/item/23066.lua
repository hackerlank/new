--经验丹使用效果~
function OnUseItemEvent_23066(uid,thisid)
	local today = s_getCurTime(TIME_ALLDAYS)
	if today == s_getVar(uid,1,34) then
		if s_getVar(uid,1,35) == 10 then
			s_sysInfo(uid, "每人每天只可使用10次该道具", ChatPos_Sys)
			return VALUE_FAIL
		end
		s_setVar(uid,1,35,s_getVar(uid,1,35)+1)
	else
		s_setVar(uid,1,34,today)
		s_setVar(uid,1,35,1)
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 100 * (level^1.5+30)
	s_refreshExp(uid,exp,ExpType_Item,23066)
	return VALUE_OK
end
