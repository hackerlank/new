--国王的恩赐
function OnUseItemEvent_31498(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_PLAYER,uid,20237,1,60*60*2)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	s_countryInfo(homeland,"国王表彰" ..name.. "作出的杰出贡献，授予其“国王的恩赐”！",ChatPos_Sys + ChatPos_Honor)
	return VALUE_OK
end

