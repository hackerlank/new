--暗影刺客时装礼盒
function OnUseItemEvent_55172(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55172") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20182,3,1,1,"7-3,3-604800","刺客战衣(黑)")
	else
		s_addItem(uid,20178,3,1,1,"7-3,3-604800","暗之魔女服")
	end
	return VALUE_OK
end

