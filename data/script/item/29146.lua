--幸运奖
function OnUseItemEvent_29146(uid,thisid)
	--使用道具
	if s_deleteItemByThisID(uid,thisid,1,"使用参与奖") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	s_refreshExp(uid, 50 * (50 + 0.1 * math.pow(level,2.2)), ExpType_Exchange,0)
	s_addItem(uid,26102,0,2,0,"1-1","参与奖奖励")
	s_sysInfo(uid,"<p><n>恭喜您获得参与奖奖品</n></p>",ChatPos_Sys + ChatPos_Important)
	return VALUE_OK
end
