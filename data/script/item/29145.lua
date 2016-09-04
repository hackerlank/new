--幸运奖
function OnUseItemEvent_29145(uid,thisid)
	--使用道具
	if s_deleteItemByThisID(uid,thisid,1,"使用幸运奖") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addMoney(uid,MoneyType_GoldTicket,350,"幸运奖奖励")
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	s_refreshExp(uid, 100 * (50 + 0.1 * math.pow(level,2.2)), ExpType_Exchange,0)
	s_sysInfo(uid,"<p><n>恭喜您获得幸运奖奖品</n></p>",ChatPos_Sys + ChatPos_Important)
	return VALUE_OK
end
