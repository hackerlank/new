--回城水晶
function OnUseItemEvent_27116(uid,thisid,targetid)
	local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	if map == 105 then
		s_sysInfo(uid,"不能在监狱中使用此技能",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end

	s_resetTrafficType(uid)
	local skill = 6044
	s_showbar(uid,5000,"OnGoHomeWithItem("..uid..","..thisid..")",UninterruptActionType_GOHOME,1,skill)
	return VALUE_OK
end


function OnGoHomeWithItem(uid,itemid)
	if itemid == 0 or itemid == nil then
		return
	end
	local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	if map == 5 and homeland ~= country then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,107) ~= 0 then
			s_sysInfo(uid,"您身上有水晶，无法在军乐城使用回城")
			return VALUE_FAIL
		end
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,108) ~= 0 then
			s_sysInfo(uid,"您身上有水晶，无法在军乐城使用回城")
			return VALUE_FAIL
		end
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,109) ~= 0 then
			s_sysInfo(uid,"您身上有水晶，无法在军乐城使用回城")
			return VALUE_FAIL
		end
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,110) ~= 0 then
			s_sysInfo(uid,"您身上有水晶，无法在军乐城使用回城")
			return VALUE_FAIL
		end
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,111) ~= 0 then
			s_sysInfo(uid,"您身上有水晶，无法在军乐城使用回城")
			return VALUE_FAIL
		end
	end
	if s_deleteItemByThisID(uid,itemid,1,"OnGoHomeWithItem") == VALUE_OK then
		ReturnUserHome(uid,"OnUseItemEvent_27116")
	end
end
