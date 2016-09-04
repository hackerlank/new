--攻击类斗气转换道具
function OnUseItemEvent_26030(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用攻击类斗气转换道具") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local wushuanglevel = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,30001)
	local moshenlevel = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,30002)
	local wushuangpoint = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_WUSHUANG)
	local moshenpoint = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_MOSHEN)
	if wushuanglevel == 0 or moshenlevel == 0 then
		if wushuanglevel == 0 and moshenlevel == 0 then
		elseif wushuanglevel == 0 then
			s_removeskill(SCENE_ENTRY_PLAYER,uid,30002,0)
			s_setskilllevel(SCENE_ENTRY_PLAYER,uid,30001,moshenlevel)
			s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_WUSHUANG,moshenpoint)
			s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_MOSHEN,wushuangpoint)
		elseif moshenlevel == 0 then
			s_removeskill(SCENE_ENTRY_PLAYER,uid,30001,0)
			s_setskilllevel(SCENE_ENTRY_PLAYER,uid,30002,wushuanglevel)
			s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_WUSHUANG,moshenpoint)
			s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_MOSHEN,wushuangpoint)
		end
	else
		s_setskilllevel(SCENE_ENTRY_PLAYER,uid,30002,wushuanglevel)
		s_setskilllevel(SCENE_ENTRY_PLAYER,uid,30001,moshenlevel)
		s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_WUSHUANG,moshenpoint)
		s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_MOSHEN,wushuangpoint)
	end
	return VALUE_OK
end
