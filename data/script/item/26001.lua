--刀锋战士姿态
function OnUseItemEvent_26001(userid,thisid,targetid)
	s_removebuff(SCENE_ENTRY_PLAYER,userid,10100)
	s_removebuff(SCENE_ENTRY_PLAYER,userid,10200)
	s_removebuff(SCENE_ENTRY_PLAYER,userid,10300)
	s_removebuff(SCENE_ENTRY_PLAYER,userid,10400)
	s_removebuff(SCENE_ENTRY_PLAYER,userid,10500)
	s_removebuff(SCENE_ENTRY_PLAYER,userid,10600)
	s_forgetskill(SCENE_ENTRY_PLAYER,userid)
	if s_addskill(SCENE_ENTRY_PLAYER,userid,10100,1) == VALUE_OK then
		s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_26001")
		s_addskill(SCENE_ENTRY_PLAYER,userid,5006,1)
		s_addskill(SCENE_ENTRY_PLAYER,userid,10101,1)
		s_addskill(SCENE_ENTRY_PLAYER,userid,10102,1)
		s_setValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_PROFESSION,Profession_Soldier)
		return VALUE_OK
	end
	return VALUE_FAIL
end
