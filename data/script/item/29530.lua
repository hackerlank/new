--国战召集令
function OnUseItemEvent_29530(uid,thisid,targetid)
	local fun = s_getFunction(uid,Relation_Country)
	if fun ~= FunctionType_Marshal and fun ~= FunctionType_ViceMarshal then
		s_messageBox(uid,"只有国王和元帅才可以使用")
		return VALUE_FAIL
	end
	local stype = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_TYPE)
	if stype ~= CopySceneType_None and stype ~= CopySceneType_PalaceWar then
		s_messageBox(uid,"副本中不可使用召集令")
		return VALUE_FAIL
	end
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	local curmap = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	if s_getCountryVar(homeland, 1, 39) == Country_War_State_Start then
		if homeland ~= curcountry and s_getCountryVar(homeland, 1, 36) ~= curcountry and s_getCountryVar(homeland, 1, 37) ~= curcountry then
			s_messageBox(uid,"不是交战双方国国王和元帅，不可使用召集令")
			return VALUE_FAIL
		end
		if curmap ~= 5 and curmap ~= 7 and curmap ~= 162 and curmap ~= 193 then
			s_messageBox(uid,"不在遗忘沙漠和军乐城，不可使用召集令")
			return VALUE_FAIL
		end
		if homeland == curcountry then
			if s_getCountryVar(homeland, 1, 42) ~= 0 then
				s_messageBox(uid,"天象祭坛已经破损，不可使用国战召集令")
				return VALUE_FAIL
			end
		end
	else
		s_messageBox(uid,"非国战期间不能使用此召集令")
		return VALUE_FAIL
	end
	local time = s_getCurTime(TIME_ALLSECONDS)
	local count = s_getVar(uid,102,14)
	if math.floor(s_getVar(uid,102,15) /86400) ~= math.floor(time /86400) then
		count = 0
		s_addVar(uid,102,15,time)
	end
	if count >= 3 then
		s_messageBox(uid,"每天只能使用3次召集令")
		return VALUE_FAIL
	else
		s_sysInfo(uid,"今日还能使用".. 2-count .."次召集令",ChatPos_Sys + ChatPos_Important)
	end
	s_addVar(uid,102,14,count + 1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29530") == VALUE_OK then
		local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
		local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
		local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
		local msg = ""
		local x = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
		local y = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
		if stype == CopySceneType_None then
			local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
			if fun == FunctionType_Marshal then
				msg = msg.."【国王】" .. name .. "在【" ..s_getCountryName(country) .. GetMapName(map) .. "】使用召集令召集您前往，是否接受召集？"
			else
				msg = msg.."【元帅】" .. name .. "在【" ..s_getCountryName(country) .. GetMapName(map) .. "】使用召集令召集您前往，是否接受召集？"
			end
			s_registerGomapMsgBox(homeland,country,map,x,y,61,msg,eAreaType_Right,eHideButtonType_CountryWar)
		else
			local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
			local call = "PalaceWarCallUp($1,$2,"..country..","..x..","..y..")"
			local buttons = "确定|3|Enter|取消|4|Esc"
			if fun == FunctionType_Marshal then
				msg = msg.."【国王】" .. name .. "在【宫殿】使用召集令召集您前往，是否接受召集？"
			else
				msg = msg.."【元帅】" .. name .. "在【宫殿】使用召集令召集您前往，是否接受召集？"
			end
			s_registerRelationMsgBox(0,Relation_Country,homeland,61,call,buttons,msg,300)
		end

		s_sysInfo(uid,"国战召集令发出",ChatPos_Sys + ChatPos_Important)
		if s_getCountryVar(homeland,12,10) < COUNTRY_ACTIVITY_33809 then
			s_addCountryVar(homeland,12,10,s_getCountryVar(homeland,12,10)+1)
		end
		if s_getVar(uid,130,22) == 0 then
			s_setVar(uid,130,22,1)
			s_setVar(uid,130,200,s_getVar(uid,130,200)+1)
			s_debugUser(uid,"国家活力点，国王召集令，参与度：1")
		end
	end
	return VALUE_OK
end

function PalaceWarCallUp(uid,ret,dcountry,posx,posy)
	if ret ~= Button_Yes then
		return
	end
	if s_getVar(uid,130,22) == 0 then
		s_setVar(uid,130,22,1)
		s_setVar(uid,130,200,s_getVar(uid,130,200)+1)
		s_debugUser(uid,"国家活力点，国王召集令，参与度：1")
	end
	if s_getCountryVar(dcountry,1,39) ~= Country_War_State_Start then
		return
	end
	s_setVar(uid,102,40,posx)
	s_setVar(uid,102,41,posy)
	local ctype = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_TYPE)
	if ctype ~= CopySceneType_PalaceWar then
		s_intoCopy(uid,75,dcountry,0,posx,posy)
	else
		s_goto(SCENE_ENTRY_PLAYER,uid,posx,posy)
	end
end
