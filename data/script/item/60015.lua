--等级金砖
function OnUseItemEvent_60015(uid,thisid)
	if s_getWorldLevel() > 4 then
		s_sysInfo(uid,"人类进程大于4，不能使用等级金砖")
		return
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if s_getVar(uid,10010,1) + s_getVar(uid,10010,2) == 0 then
		s_addCountryVar(13,10000,5,s_getCountryVar(13,10000,5)+1)	--增加购存金砖参与人数
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local num = 1
	s_addMoney(uid,MoneyType_GoldTicket,1000*num,"赠点")
	s_sysInfo(uid,"您本次存入了".. num .."块金砖，获得".. 1000*num .."赠点红利。")
	s_addVar(uid,10010,2,s_getVar(uid,10010,2)+num) --礼包赠送金砖数量
	s_addVar(uid,10010,3,s_getVar(uid,10010,3)+num*1000) --等级金砖获得赠点
	if level >= 60 then
		local money = 320 * num
		s_addMoney(uid,MoneyType_GoldTicket,money,"赠点")
		s_addVar(uid,10010,3,s_getVar(uid,10010,3)+money) --等级金砖获得赠点
		s_sysMail(uid,"您存入金砖时已达60级，获得80％的60级返还，共获得赠点".. money .."，请注意查收")
	end
	if level >= 70 then
		local money = 480 * num
		s_addMoney(uid,MoneyType_GoldTicket,money,"赠点")
		s_addVar(uid,10010,3,s_getVar(uid,10010,3)+money) --等级金砖获得赠点
		s_sysMail(uid,"您存入金砖时已达70级，获得80％的70级返还，共获得赠点".. money .."，请注意查收")
	end
	if level >= 80 then
		local money = 480 * num
		s_addMoney(uid,MoneyType_GoldTicket,money,"赠点")
		s_addVar(uid,10010,3,s_getVar(uid,10010,3)+money) --等级金砖获得赠点
		s_sysMail(uid,"您存入金砖时已达80级，获得80％的80级返还，共获得赠点".. money .."，请注意查收")
	end
	if level >= 90 then
		local money = 480 * num
		s_addMoney(uid,MoneyType_GoldTicket,money,"赠点")
		s_addVar(uid,10010,3,s_getVar(uid,10010,3)+money) --等级金砖获得赠点
		s_sysMail(uid,"您存入金砖时已达90级，获得80％的90级返还，共获得赠点".. money .."，请注意查收")
	end
	return VALUE_OK
end
