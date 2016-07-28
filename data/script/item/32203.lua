--活力点宝箱(钻)
function OnUseItemEvent_32203(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 31 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32203") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,32203,0)
	local money = 0
	local worldlevel = s_getWorldLevel()
	local leveldiff = worldlevel*10+50 - level
	if leveldiff < 10 then
		if level > 50 then
			money = math.floor(level-50)*10
		else
			money = 0
		end
	end
	if money ~= 0 then
		s_addMoney(uid,MoneyType_Money,money,"开宝箱(钻)获得银币奖励")
	end
	return VALUE_OK
end
