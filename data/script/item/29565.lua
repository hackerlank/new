--试炼之印宝箱
function OnUseItemEvent_29565(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 51 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	local worldlevel = s_getWorldLevel()
	local judge = 0
	if worldlevel == 2 then
		judge = 80
	elseif worldlevel == 3 then
		judge = 120
	elseif worldlevel == 4 then
		judge = 160
	elseif worldlevel == 5 then
		judge = 210
	elseif worldlevel >= 6 then
		judge = 260
	end
	local dur = s_getItemValue(uid,thisid,Item_Attribute_Dur)
	if s_deleteItemByThisID(uid,thisid,1,"开启试炼之印宝箱") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,22066,3,1,0,"1-1,3-".. dur ..",78-".. judge ..",79-".. judge .."","试炼之印")
	return VALUE_OK
end
