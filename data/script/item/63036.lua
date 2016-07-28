--职业时装礼包
function OnUseItemEvent_63036(uid,thisid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63036") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if pro == Profession_Soldier then --战士
		s_openPalace(uid,63036,1)
	elseif pro == Profession_Spy then --刺客
		s_openPalace(uid,63036,3)
	elseif pro == Profession_Freeman then --法师
		s_openPalace(uid,63036,2)
	elseif pro == Profession_Doctor then  --牧师
		s_openPalace(uid,63036,4)
	end
	return VALUE_OK
end
