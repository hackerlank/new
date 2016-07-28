--钓鱼卡
function OnUseItemEvent_29061(uid,thisid)
	--判断今日使用上限
	local times = s_getVar(uid,116,16)
	if times == 0 then
		s_sysInfo(uid,"您每日的钓鱼次数已达上限，请明日再来垂钓。",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	--判断身上是否有不正确的状态
	local traffic = s_getTrafficType(uid)
	if traffic == TrafficType_Join or traffic == TrafficType_RTLead or traffic == TrafficType_RTFollow
		or traffic == TrafficType_Dance or traffic == TrafficType_DanceDouble or traffic == TrafficType_Horse
		or traffic == TrafficType_SuperWeapon or traffic == TrafficType_RideChange or traffic == TrafficType_MagicChange
		or traffic == TrafficType_InGuard or traffic == TrafficType_InHorse then
		s_sysInfo(uid,"当前状态无法进行钓鱼操作")
		return VALUE_FAIL
	end
	--判断buff
	local buffid = 100
	local quality = s_getItemValue(uid,thisid,Item_Attribute_Quality)
	local bufflevel = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,buffid)
	if bufflevel > 0 then
		local qua = s_getbuffvalue(SCENE_ENTRY_PLAYER,uid,buffid)
		if quality ~= qua then
			s_sysInfo(uid,"已经使用了一张不同品质的钓鱼卡")
			return VALUE_FAIL
		end
	end

	--使用道具
	if s_deleteItemByThisID(uid,thisid,1,"使用钓鱼卡") ~= VALUE_OK then
		return VALUE_FAIL
	end

	--增加buff
	if bufflevel > 0 then
		local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,buffid)
		s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,buffid,time + 200)
	else
		s_addbuff(SCENE_ENTRY_PLAYER,uid,buffid,1,200,quality)
	end

	times = times - 1
	s_addVar(uid,116,16,times)
	--活力点
	s_addVigorPoint(uid, 2)
	s_debugUser(uid,"使用钓鱼卡，获得2点活力点")
	RefreshTaskDailyInfo(uid, 30066)
	s_sysInfo(uid,"今天还可以使用".. times .. "钓鱼卡")
	return VALUE_OK
end
