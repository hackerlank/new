--职业时装礼包
function OnUseItemEvent_31483(uid,thisid)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro == Profession_Soldier then
		s_addItem(uid,20113,3,1,1,"1-1","职业时装礼包")
	end
	if pro == Profession_Spy then
		s_addItem(uid,20114,3,1,1,"1-1","职业时装礼包")
	end
	if pro == Profession_Gunman then
		s_addItem(uid,20115,3,1,1,"1-1","职业时装礼包")
	end
	if pro == Profession_Blast then
		s_addItem(uid,20116,3,1,1,"1-1","职业时装礼包")
	end
	if pro == Profession_Freeman then
		s_addItem(uid,20117,3,1,1,"1-1","职业时装礼包")
	end
	if pro == Profession_Doctor then
		s_addItem(uid,20118,3,1,1,"1-1","职业时装礼包")
	end
	s_deleteItemByThisID(uid,thisid,1,"使用扣除")
	return VALUE_OK
end
