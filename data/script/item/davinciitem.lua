
--烟花16 天国福音
--[[
function OnUseItemEvent_31424(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5017,1,10)
	return VALUE_OK
end
]]--