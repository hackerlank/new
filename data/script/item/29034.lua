--团长召集令
function OnUseItemEvent_29034(uid,thisid,targetid)
	local corps = s_getCorpsId(uid)
	if corps == 0 then
		s_sysInfo(uid,"只有团长才可以使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local fun = s_getFunction(uid,Relation_Corps)
	if fun ~= FunctionType_CLeader then
		s_sysInfo(uid,"只有团长才可以使用",ChatPos_Sys + ChatPos_Important)
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
	local count = s_getVar(uid,102,8)
	if math.floor(s_getVar(uid,102,9) /86400) ~= math.floor(time /86400) then
		count = 0
		s_addVar(uid,102,9,time)
	end
	if count >= 5 then
		s_sysInfo(uid,"每天只能使用5次召集令",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	else
		s_sysInfo(uid,"今日还能使用".. 4-count .."次召集令",ChatPos_Sys + ChatPos_Important)
	end
	s_addVar(uid,102,8,count + 1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29034") == VALUE_OK then
		local sid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
		local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
		local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
		local x = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
		local y = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
		local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
		local msg = "【团长】" .. name .. "在【" ..s_getCountryName(country) .. GetMapName(map) .. "】使用召集令召集您前往，前往即可获得300绑银，是否接受召集？"
		s_sysCallUp(Relation_Corps,corps,sid,x,y,msg,CallUpType_Normal,uid)
		s_sysInfo(uid,"团长召集令发出",ChatPos_Sys + ChatPos_Important)
	end
	if s_getCorpsVar(corps,1,49) < CORPS_ACTIVITY_33705 then
		s_addCorpsVar(corps,1,49,s_getCorpsVar(corps,1,49)+1)
	end
	if s_getVar(uid,130,7) == 0 then
		s_addVar(uid,130,7,1)
		s_addVar(uid,130,100,s_getVar(uid,130,100)+1)
		s_debugUser(uid,"团活力，使用团长召集令，参与度：1")
	end

	return VALUE_OK
end

