--1壶雄黄酒使用得经验
function OnUseItemEvent_31515(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 87 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,31515)
	return VALUE_OK
end

--1坛雄黄酒使用得经验
function OnUseItemEvent_31516(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 450 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,31516)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	s_countryInfo(homeland,""..name.."好酒量！将5壶雄黄酒兑换成了1坛雄黄酒！满满一坛雄黄酒下肚，纹丝不动！",ChatPos_Sys + ChatPos_Honor)
	return VALUE_OK
end
