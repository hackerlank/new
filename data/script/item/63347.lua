--符文盒
function OnUseItemEvent_63347(uid,thisid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63347") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if pro == Profession_Soldier then --战士
		s_addItem(uid,53200,3,1,0,"1-1","符文盒")
	elseif pro == Profession_Spy then --刺客
		s_addItem(uid,53202,3,1,0,"1-1","符文盒")
	elseif pro == Profession_Freeman then --法师
		s_addItem(uid,53201,3,1,0,"1-1","符文盒")
	elseif pro == Profession_Doctor then  --牧师
		s_addItem(uid,53203,3,1,0,"1-1","符文盒")
	end
	return VALUE_OK
end
