--帝都战召集令
function OnUseItemEvent_29041(uid,thisid,targetid)
	local fun = s_getFunction(uid,Relation_Country)
	if fun ~= FunctionType_Marshal and fun ~= FunctionType_ViceMarshal then
		s_messageBox(uid,"只有国王和元帅才可以使用")
		return VALUE_FAIL
	end
	local stype = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_TYPE)
	if stype ~= CopySceneType_EmperorWar then
		s_messageBox(uid,"不在帝都战中不可使用此召集令")
		return VALUE_FAIL
	end
	local count = s_getVar(uid,102,30)
	local num = 0
	local ugi = CopySceneInfo_73:GetUserVar(uid,ArUser_Gindex)
	if ugi == 1 then
		if fun == FunctionType_Marshal then
			if count >= 2 then
				s_messageBox(uid,"攻方国王每次战争只能使用2次召集令")
				return VALUE_FAIL
			end
			num = 2
		else
			if count >= 1 then
				s_messageBox(uid,"攻方元帅每次战争只能使用1次召集令")
				return VALUE_FAIL
			end
			num = 1
		end
	elseif ugi == 2 then
		local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
		if s_getCountryVar(13,11,4) == homeland then
			if fun == FunctionType_Marshal then
				if count >= 4 then
					s_messageBox(uid,"守方帝皇国国王每次战争只能使用4次召集令")
					return VALUE_FAIL
				end
				num = 4
			else
				if count >= 2 then
					s_messageBox(uid,"守方帝皇国元帅每次战争只能使用2次召集令")
					return VALUE_FAIL
				end
				num = 2
			end
		else
			if fun == FunctionType_Marshal then
				if count >= 2 then
					s_messageBox(uid,"守方盟国国王每次战争只能使用2次召集令")
					return VALUE_FAIL
				end
				num = 2
			else
				if count >= 1 then
					s_messageBox(uid,"守方盟国元帅每次战争只能使用1次召集令")
					return VALUE_FAIL
				end
				num = 1
			end
		end
	end
	s_addVar(uid,102,30,count + 1)
	s_sysInfo(uid,"今日还能使用".. num-1-count .."次帝都战召集令",ChatPos_Sys + ChatPos_Important)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29041") == VALUE_OK then
		--[[
		local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
		local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
		local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
		local x = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
		local y = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
		local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
		local msg = ""
		if fun == FunctionType_Marshal then
		msg = msg.."【国王】" .. name .. "在【" ..s_getCountryName(country) .. GetMapName(map) .. "】使用召集令召集您前往，是否接受召集？"
		else
		msg = msg.."【元帅】" .. name .. "在【" ..s_getCountryName(country) .. GetMapName(map) .. "】使用召集令召集您前往，是否接受召集？"
		end
		s_registerGomapMsgBox(homeland,country,map,x,y,61,msg,eAreaType_Right)
		]]
		--[[
		local msg = "帝都战正在激烈进行中，是否召集臣民前来支援？"
		local fun = "OnSummonPeopleInDiduZhan($1,$2)"
		local buttons = "确定|3|Enter"
		s_registerMsgBox(uid,fun,buttons,msg)
		]]
		local msg = "帝都战正在激烈进行中，国王陛下需要您的帮助，是否立刻前往国王身边？"
		local posx = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
		local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
		local fun = "OnHelpKingInDiduZhan($1,$2,"..posx..","..posy..")"
		local buttons = "确定|3|Enter|取消|4|Esc"
		local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
		s_registerRelationMsgBox(0,Relation_Country,homeland,70,fun,buttons,msg,300)
		s_sysInfo(uid,"帝都战召集令发出",ChatPos_Sys + ChatPos_Important)
		if s_getCountryVar(homeland,12,8) < COUNTRY_ACTIVITY_33807 then
			s_addCountryVar(homeland,12,8,s_getCountryVar(homeland,12,8)+1)
		end
		if s_getVar(uid,130,20) == 0 then
			s_setVar(uid,130,20,1)
			s_setVar(uid,130,200,s_getVar(uid,130,200)+1)
			s_debugUser(uid,"国家活力点，帝都战召集令，参与度：1")
		end
	end
	return VALUE_OK
end

function OnHelpKingInDiduZhan(uid,ret,posx,posy)
	if ret ~= Button_Yes then
		return
	end
	if s_getVar(uid,130,20) == 0 then
		s_addVar(uid,130,20,1)
		s_addVar(uid,130,200,s_getVar(uid,130,200)+1)
		s_debugUser(uid,"国家活力点，帝都战召集令，参与度：1")
	end
	local ctype = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_TYPE)
	if ctype ~= CopySceneType_EmperorWar then
		s_intoCopy(uid,73)
	else
		s_goto(SCENE_ENTRY_PLAYER,uid,posx,posy)
	end
end
