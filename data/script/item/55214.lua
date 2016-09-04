--天女散花
function OnUseItemEvent_55214(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55214") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level <=60 then
		s_openPalace(uid,55214,1)
	elseif level <=80 then
		s_openPalace(uid,55214,2)
	else
		s_openPalace(uid,55214,3)
	end
	return VALUE_OK
end
