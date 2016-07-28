--VIP玩家回归礼包
function OnUseItemEvent_55200(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55200") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20295,3,1,1,"1-1,3-1296000","荣耀之力(男)")
	else
		s_addItem(uid,20294,3,1,1,"1-1,3-1296000","荣耀之力(女)")
	end
	s_addItem(uid,52061,3,1,0,"1-1,3-1296000","荣耀星辰")
	s_addItem(uid,20688,3,1,0,"1-1,3-2592000","荣耀之翼")
	return VALUE_OK
end

