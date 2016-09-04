--神秘礼物
function OnUseItemEvent_31195(uid,thisid,targetid)
	--local fun = "OnUseItemEvent_Callback_31195("..uid..","..thisid..")"
	--s_showbar(uid,5000,fun,UninterruptActionType_None,1)
	s_addItem(uid,24124,0,1,0,"1-1","神秘礼物")
	s_deleteItemByThisID(uid,thisid,1,"使用扣除")
	return VALUE_OK
end

--function OnUseItemEvent_Callback_31195(uid,thisid)
--	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
--	--if pro == Profession_Soldier or pro == Profession_Gunman then
--	s_addItem(uid,24124,0,1,0,"1-1","神秘礼物")
--	s_deleteItemByThisID(uid,thisid,1,"使用扣除")
--end
