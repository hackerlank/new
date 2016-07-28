--军长召集令
function OnUseItemEvent_29035(uid,thisid,targetid)
	local army = s_getArmyID(uid)
	if army == 0 then
		s_sysInfo(uid,"只有军长才可以使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local fun = s_getFunction(uid,Relation_Army)
	if fun ~= FunctionType_ALeader then
		s_sysInfo(uid,"只有军长才可以使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local stype = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_TYPE)
	if stype ~= CopySceneType_None then
		s_sysInfo(uid,"副本中不可使用召集令",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	if homeland ~= curcountry then
		s_sysInfo(uid,"召集令只能在本国使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_getCountryVar(homeland, 1, 39) == Country_War_State_Start then
		if s_getCountryVar(homeland, 1, 42) ~= 0 then
			return VALUE_FAIL
		end
	end
	local time = s_getCurTime(TIME_ALLSECONDS)
	local count = s_getVar(uid,102,10)
	if math.floor(s_getVar(uid,102,11) /86400) ~= math.floor(time /86400) then
		count = 0
		s_addVar(uid,102,11,time)
	end
	if count >= 5 then
		s_sysInfo(uid,"每天只能使用5次召集令",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	else
		s_sysInfo(uid,"今日还能使用".. 4-count .."次召集令",ChatPos_Sys + ChatPos_Important)
	end
	s_addVar(uid,102,10,count + 1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29035") == VALUE_OK then
		local sid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
		local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
		local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
		local x = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
		local y = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
		local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
		local msg = "【军长】" .. name .. "在【" .. s_getCountryName(country) .. GetMapName(map) .. "】使用召集令召集您前往，是否接受召集？"
		s_sysCallUp(Relation_Army,army,sid,x,y,msg,2,uid)
		s_sysInfo(uid,"军长召集令发出",ChatPos_Sys + ChatPos_Important)
	end
	return VALUE_OK
end

