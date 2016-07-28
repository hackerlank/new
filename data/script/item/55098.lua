--逆袭宝箱
function OnUseItemEvent_55098(uid,thisid)
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55098") ~= VALUE_OK then
		return VALUE_FAIL
	end

	if sex ==  MALE then
		if pro == Profession_Soldier then --战士
			s_openPalace(uid,55098,1)
		elseif pro == Profession_Spy then --刺客
			s_openPalace(uid,55098,2)
		elseif pro == Profession_Freeman then --法师
			s_openPalace(uid,55098,3)
		elseif pro == Profession_Doctor then  --牧师
			s_openPalace(uid,55098,4)
		end
	end
	if sex == FEMALE then
		if pro == Profession_Soldier then --战士
			s_openPalace(uid,55098,5)
		elseif pro == Profession_Spy then --刺客
			s_openPalace(uid,55098,6)
		elseif pro == Profession_Freeman then --法师
			s_openPalace(uid,55098,7)
		elseif pro == Profession_Doctor then  --牧师
			s_openPalace(uid,55098,8)
		end
	end
	return VALUE_OK
end
