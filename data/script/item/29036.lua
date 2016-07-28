--国王召集令
function OnUseItemEvent_29036(uid,thisid,targetid)
	local fun = s_getFunction(uid,Relation_Country)
	if fun ~= FunctionType_Marshal then
		s_sysInfo(uid,"只有国王才可以使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local stype = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_TYPE)
	if stype ~= CopySceneType_None and stype ~= CopySceneType_PalaceWar then
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
			s_sysInfo(uid,"天象祭坛已破损，不可使用国王召集令",ChatPos_Sys)
			return VALUE_FAIL
		end
	end
	local time = s_getCurTime(TIME_ALLSECONDS)
	local count = s_getVar(uid,102,12)
	if count >= 5 then
		s_sysInfo(uid,"每天只能使用5次召集令",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	else
		s_sysInfo(uid,"今日还能使用".. 4-count .."次召集令",ChatPos_Sys + ChatPos_Important)
	end
	s_addVar(uid,102,12,count + 1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29036") == VALUE_OK then
		local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
		local sid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
		local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
		local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
		local x = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
		local y = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
		local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
		local msg = "【国王】" .. name .. "在【" ..s_getCountryName(country) .. GetMapName(map) .. "】使用召集令召集您前往，是否接受召集？"
		s_sysCallUp(Relation_Country,homeland,sid,x,y,msg,CallUpType_Normal,uid)
		s_sysInfo(uid,"国王召集令发出",ChatPos_Sys + ChatPos_Important)
	end
	return VALUE_OK
end

