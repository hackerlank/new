--发型道具
function OnUseItemEvent_31013(userid,thisid,targetid)
	local value = s_getItemValue(userid,thisid,Item_Attribute_Hair)
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_31013") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_setValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HAIR,value)
	return VALUE_OK
end
