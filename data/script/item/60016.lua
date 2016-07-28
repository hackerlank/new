--等级金砖
function OnUseItemEvent_60016(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if s_getVar(uid,10011,1) + s_getVar(uid,10011,2) == 0 then
		s_addCountryVar(13,10000,6,s_getCountryVar(13,10000,6)+1)	--增加购存每周金砖参与人数
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local num = 1
	s_addMoney(uid,MoneyType_GoldTicket,680*num,"首次获得588金砖")
	s_sysInfo(uid,"您本次存入了".. num .."块金砖，获得".. 680*num .."赠点红利。")
	s_addVar(uid,10011,2,s_getVar(uid,10011,2)+num) --礼包赠送每周金砖数量
	s_addVar(uid,10011,3,s_getVar(uid,10011,3)+num*680) --每周金砖获得赠点
	s_addWeekGoldBox(uid,num)
	return VALUE_OK
end
