--显影药剂
function OnUseItemEvent_23054(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,48006)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_23054") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_MASTER,uid)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	return VALUE_OK
end
