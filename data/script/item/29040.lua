--盟国召集令
function OnUseItemEvent_29040(uid,thisid,targetid)
	local fun = s_getFunction(uid,Relation_Country)
	if fun ~= FunctionType_Marshal then
		s_sysInfo(uid,"只有国王才可以使用盟国召集令！")
		return VALUE_FAIL
	end
	local stype = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_TYPE)
	if stype ~= 0 then
		s_sysInfo(uid,"副本中不可使用！")
		return VALUE_FAIL
	end
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	if homeland ~= curcountry then
		s_sysInfo(uid,"只可在本国境内使用！")
		return VALUE_FAIL
	end
	if s_getCountryVar(homeland, 1, 39) == Country_War_State_Start then
		s_sysInfo(uid,"国战期间不可使用！")
		return VALUE_FAIL
	end
	local count = s_getVar(uid,102,19)
	local countrystate = s_getCountryState(homeland)
	if countrystate == CountryStateWeak then
		if count >= 3 then
			s_sysInfo(uid,"今日使用次数已达上限！")
			return VALUE_FAIL
		else
			s_messageBox(uid,"今日还能使用".. 2-count .."次盟国召集令")
		end
	else
		if count >= 1 then
			s_sysInfo(uid,"今日使用次数已达上限！")
			return VALUE_FAIL
		end
	end
	s_addVar(uid,102,19,count + 1)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29040") == VALUE_OK then
		local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
		local x = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
		local y = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
		local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
		local msg = "【国王】" .. name .. "在【" ..s_getCountryName(curcountry) .. GetMapName(map) .. "】使用召集令召集您前往，是否增援？"
		s_registerGomapMsgBox(homeland,country,map,x,y,61,msg,eAreaType_Right,eHideButtonType_Ally_Call)
		local ally1 = s_getCountryField(homeland,CountryVar_Ally1)
		local ally2 = s_getCountryField(homeland,CountryVar_Ally2)
		local marshal1 = s_getCountryField(ally1,CountryVar_Marshal)
		local marshal2 = s_getCountryField(ally2,CountryVar_Marshal)
		msg ="【盟国国王】" .. name .. "在【" ..s_getCountryName(curcountry) .. GetMapName(map) .. "】邀请盟国将士前往增援，是否同意？"
		local msgbox = "【盟国国王】" .. name .. "在【" ..s_getCountryName(curcountry) .. GetMapName(map) .. "】使用盟国召集令召集您前往，是否增援？"
		if marshal1 ~= 0 then
			local func = "MsgBox29040("..marshal1..",$2,"..curcountry..","..map..","..x..","..y..")"
			local buttons = "确定|3|Enter|取消|4|Esc"
			s_registerRelationMsgBox(marshal1,255,0,0,func,buttons,msg,300)
		end
		if marshal2 ~= 0 then
			local func = "MsgBox29040("..marshal2..",$2,"..curcountry..","..map..","..x..","..y..")"
			local buttons = "确定|3|Enter|取消|4|Esc"
			s_registerRelationMsgBox(marshal2,255,0,0,func,buttons,msg,300)
		end
		s_sysInfo(uid,"盟国召集令已发出",ChatPos_Sys + ChatPos_Important)
		if s_getCountryVar(homeland,12,9) < COUNTRY_ACTIVITY_33808 then
			s_addCountryVar(homeland,12,9,s_getCountryVar(homeland,12,9)+1)
		end
		if s_getVar(uid,130,21) == 0 then
			s_setVar(uid,130,21,1)
			s_setVar(uid,130,200,s_getVar(uid,130,200)+1)
			s_debugUser(uid,"国家活力点，盟国召集令，参与度：1")
		end
	end
	return VALUE_OK
end

function MsgBox29040(uid,result,country,map,x,y)
	if result == Button_Yes then
		local msg = "【盟国国王】在【" ..s_getCountryName(country) .. GetMapName(map) .. "】使用盟国召集令召集您前往，是否增援？"
		local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
		s_registerGomapMsgBox(homeland,country,map,x,y,61,msg,eAreaType_Right,eHideButtonType_Ally_Call)
	end
end
