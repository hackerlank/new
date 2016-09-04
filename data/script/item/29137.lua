function OnUseItemEvent_29137(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addMoney(uid,MoneyType_GoldTicket,15000,"二等奖奖励")
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	s_countryInfo(homeland,"<p><q buttonid='6005' ownerid='" .. uid .."'>" .. name .. "</q><n color='GXColorBlueSky'>兑换二等奖奖品,获得15000赠点奖励</n></p>",ChatPos_Sys + ChatPos_Honor)
	return VALUE_OK
end
