--九天夺宝坐骑时装礼盒
function OnUseItemEvent_55199(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55199") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,52059,3,1,1,"1-1,3-1296000","飞龙坐骑时装")
	else
		s_addItem(uid,52056,3,1,1,"1-1,3-1296000","金鱼坐骑时装")
	end
	return VALUE_OK
end

