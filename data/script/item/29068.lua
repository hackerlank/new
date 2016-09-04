--随机传送水晶
function OnUseItemEvent_29068(uid,thisid)
	local stype = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_TYPE)
	if stype ~= 0 then
		s_sysInfo(uid,"副本中不可使用随机传送水晶",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local traffic = s_getTrafficType(uid)
	if traffic == TrafficType_Armyequip or traffic == TrafficType_InGuard or traffic == TrafficType_RTLead
		or traffic == TrafficType_RTFollow or traffic == TrafficType_RideChange or traffic == TrafficType_MagicChange
		or traffic == TrafficType_SuperWeapon or traffic == TrafficType_Hug or traffic == TrafficType_Kiss
		or traffic == TrafficType_CarrigeLead or traffic == TrafficType_CarrigeFollow then
		s_sysInfo(uid,"该状态下，不可使用随机传送水晶",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local list =
		{{3,{{207,510},{148,284},{199,202},{330,125},{468,144},{601,298},{614,444},{569,578},{454,602},{384,540}}},
			{5,{{294,318},{134,195},{119,337},{190,568},{620,643},{588,469},{472,300},{610,168},{442,148},{307,107}}},
			{7,{{512,632},{236,563},{108,327},{193,110},{550,282},{707,250},{559,140},{407,405},{656,608},{296,320}}}}

	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if curcountry ~= homeland then
		s_sysInfo(uid,"不可在国外使用随机传送水晶")
		return VALUE_FAIL
	end
	local curmap = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	if curmap ~= 3 and curmap ~= 5 and curmap ~= 7 then
		s_sysInfo(uid,"只能在光明城、军乐城、遗忘沙漠使用此道具",ChatPos_Sys)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"随机传送水晶") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local posx = 0
	local posy = 0
	for i=1,3 do
		if curmap == list[i][1] then
			local rand = math.random(1,table.getn(list[i][2]))
			posx = list[i][2][rand][1]
			posy = list[i][2][rand][2]
		end
	end
	s_goto(SCENE_ENTRY_PLAYER,uid,posx,posy)
	return VALUE_OK
end
