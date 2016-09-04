--装备奖励
function OnUseItemEvent_31156(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEventnvshenitem") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if pro == Profession_Soldier then pro = 1100
	elseif pro == Profession_Spy then pro = 2100
	elseif pro == Profession_Gunman then pro = 3100
	elseif pro == Profession_Blast then pro = 4100
	elseif pro == Profession_Freeman then pro = 5100
	elseif pro == Profession_Doctor then pro = 6100
	end
	itemlevel = math.floor((level-1)/10)
	c_setSuperEquip(uid,s_addItem(uid,pro +itemlevel,0,1,1,"1-1,6-2,7-3","OnUseItemEvent_31156"))
	return VALUE_OK
end
