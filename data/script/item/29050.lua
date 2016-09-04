--超能胶囊
function OnUseItemEvent_29050(uid,thisid,target)
	local traffic = s_getTrafficType(uid)
	if traffic ~= TrafficType_None then
		local msg = "使用超能药丸，需要取消骑乘，是否继续？"
		local buttons = "确定|3|Enter|取消|4|Esc"
		local call = "CallBack_OnUseItemEvent_29050($1,$2," .. thisid .. ",)"
		s_registerMsgBox(uid,call,buttons,msg,300)
		return VALUE_OK
	else
		if s_deleteItemByThisID(uid,thisid,1,"使用删除") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setTrafficType(uid,TrafficType_SuperWeapon,0,60)
		return VALUE_OK
	end
end
--	s_sysInfo(uid,"当前状态不可使用",ChatPos_Sys + ChatPos_Important)
--	return VALUE_FAIL

function CallBack_OnUseItemEvent_29050(uid,result,thisid)
	if result ~= Button_Yes then
		return
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用删除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_resetTrafficType(uid)
	s_setTrafficType(uid,TrafficType_SuperWeapon,0,60)
	return VALUE_OK
end
