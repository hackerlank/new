--国王召集令
function OnUseItemEvent_29039(uid,thisid,targetid)
	local fun = s_getFunction(uid,Relation_Country)
	if fun == FunctionType_Marshal then
		local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
		local curcountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
		local count = s_getVar(uid,102,18)
		if count >= 5 then
			s_messageBox(uid,"每天只能使用5次YY召集令")
			return VALUE_FAIL
		else
			s_messageBox(uid,"今日还能使用".. 4-count .."次YY召集令")
		end
		s_addVar(uid,102,18,count + 1)
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29039") == VALUE_OK then
			local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
			local msg = "国王" .. name .. "号召大家加入YY频道：" .. targetid .. ",是否加入？"
			s_countryMessageBox(uid,msg,"加入|3|Enter|取消|5|Esc",68,uid,targetid)
			s_sysInfo(uid,"YY召集令已发出",ChatPos_Sys + ChatPos_Important)
		end
		return VALUE_OK
	elseif fun == FunctionType_Commander then
		local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
		local curcountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
		local count = s_getVar(uid,102,22)
		if count >= 3 then
			s_messageBox(uid,"每天只能使用3次YY召集令")
			return VALUE_FAIL
		else
			s_messageBox(uid,"今日还能使用".. 2-count .."次YY召集令")
		end
		s_addVar(uid,102,22,count + 1)
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29039") == VALUE_OK then
			local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
			local msg = "指挥官" .. name .. "号召大家加入YY频道：" .. targetid .. ",是否加入？"
			s_countryMessageBox(uid,msg,"加入|3|Enter|取消|5|Esc",68,uid,targetid)
			s_addItem(uid,26020,0,10,0,"1-1,3-7200","YY飞机票")
			s_sysInfo(uid,"YY召集令已发出",ChatPos_Sys + ChatPos_Important)
		end
		return VALUE_OK
	else
		s_messageBox(uid,"只有国王和指挥官才可以使用YY召集令")
		return VALUE_FAIL
	end
end

