--四叶草 精力
function OnUseItemEvent_29030(uid,thisid,targetid)
	if math.floor(s_getVar(uid,101,19) /86400) == math.floor(s_getCurTime(TIME_ALLSECONDS)/86400) then
		s_sysInfo(uid,"四叶草每天只能使用一次",ChatPos_Sys)
		return VALUE_FAIL
	end
	local cur_energy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_ENERGY)
	local max_energy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_MAX_ENERGY)
	local energy = s_getItemValue(uid,thisid,Item_Attribute_EnergyValue)

	if cur_energy == max_energy then
		s_sysInfo(uid,"精力值已满，无法使用",ChatPos_Sys)
	elseif energy + cur_energy > max_energy then
		local func = string.format("OnUseItemEvent_29030_Callback(%u,$2,%u,%u)",uid,thisid,targetid)
		local msg = "当前还有剩余精力,使用道具后只能回复" .. max_energy - cur_energy .. "精力值，是否使用?"
		s_registerMsgBox(uid,func,"确定|3|Enter|取消|5|Esc",msg,300)
	else
		s_addVar(uid,101,19,s_getCurTime(TIME_ALLSECONDS))
		s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29030")
		s_subValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_ENERGY,energy)
	end
	return VALUE_OK
end
function OnUseItemEvent_29030_Callback(uid,result,thisid,targetid)
	if result == Button_Yes then
		local energy = s_getItemValue(uid,thisid,Item_Attribute_EnergyValue)
		s_addVar(uid,101,19,s_getCurTime(TIME_ALLSECONDS))
		s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29030_Callback")
		s_subValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_ENERGY,energy)
	end
end
