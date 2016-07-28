--光芒爆破姿态
function OnUseItemEvent_26004(userid,thisid,targetid)
	s_removebuff(SCENE_ENTRY_PLAYER,userid,10100)
	s_removebuff(SCENE_ENTRY_PLAYER,userid,10200)
	s_removebuff(SCENE_ENTRY_PLAYER,userid,10300)
	s_removebuff(SCENE_ENTRY_PLAYER,userid,10400)
	s_removebuff(SCENE_ENTRY_PLAYER,userid,10500)
	s_removebuff(SCENE_ENTRY_PLAYER,userid,10600)
	s_forgetskill(SCENE_ENTRY_PLAYER,userid)
	if s_addskill(SCENE_ENTRY_PLAYER,userid,10400,1) == VALUE_OK then
		s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_26004")
		s_addskill(SCENE_ENTRY_PLAYER,userid,5009,1)
		s_addskill(SCENE_ENTRY_PLAYER,userid,10401,1)
		s_addskill(SCENE_ENTRY_PLAYER,userid,10402,1)
		s_setValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_PROFESSION,Profession_Blast)
		return VALUE_OK
	end
	return VALUE_FAIL
end
