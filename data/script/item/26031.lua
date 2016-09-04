--防御类斗气转换道具
function OnUseItemEvent_26031(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用防御类斗气转换道具") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local shengdunlevel = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,30003)
	local shenguanglevel = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,30004)
	local shengdunpoint = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_SHENGDUN)
	local shenguangpoint = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_SHENGUANG)
	if shengdunlevel == 0 or shenguanglevel == 0 then
		if shengdunlevel == 0 and shenguanglevel == 0 then
		elseif shengdunlevel == 0 then
			s_removeskill(SCENE_ENTRY_PLAYER,uid,30004,0)
			s_setskilllevel(SCENE_ENTRY_PLAYER,uid,30003,shenguanglevel)
			s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_SHENGDUN,shenguangpoint)
			s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_SHENGUANG,shengdunpoint)
		elseif shenguanglevel == 0 then
			s_removeskill(SCENE_ENTRY_PLAYER,uid,30003,0)
			s_setskilllevel(SCENE_ENTRY_PLAYER,uid,30004,shengdunlevel)
			s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_SHENGDUN,shenguangpoint)
			s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_SHENGUANG,shengdunpoint)
		end
	else
		s_setskilllevel(SCENE_ENTRY_PLAYER,uid,30003,shenguanglevel)
		s_setskilllevel(SCENE_ENTRY_PLAYER,uid,30004,shengdunlevel)
		s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_SHENGDUN,shenguangpoint)
		s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_BATTLE_SHENGUANG,shengdunpoint)
	end
	return VALUE_OK
end
