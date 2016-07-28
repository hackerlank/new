--脸型道具
function OnUseItemEvent_31012(userid,thisid,targetid)
	local value = s_getItemValue(userid,thisid,Item_Attribute_Face)
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_31012") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_setValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_FACE,value)
	return VALUE_OK
end
