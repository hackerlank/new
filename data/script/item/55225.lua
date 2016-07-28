--广寒仙境绘卷
function OnUseItemEvent_55225(uid,thisid)
	local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	if map ~= 3 and map ~= 5 then
		s_sysInfo(uid,"请在光明城或军乐城使用！")
		return VALUE_FAIL

	end
	local hour = s_getCurTime(TIME_CURHOURS)
	if 	hour > 6 and hour < 19 then
		s_intoCopyCustomSingle(uid,1017,191,18,24)
	else
		s_intoCopyCustomSingle(uid,1018,192,18,60)
	end


	return VALUE_OK

end
