--捕鼠夹
function OnUseItemEvent_31006(uid,thisid)
	local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	if map ~= 103 then
		s_sysInfo(uid,"当前地图不能使用该道具")
		return VALUE_FAIL
	end
	s_showbar(uid,5000,"OnUseItem_31006("..uid..","..thisid..")",UninterruptActionType_TASK,1)
	return VALUE_OK
end

function OnUseItem_31006(uid,itemid)
	if s_deleteItemByThisID(uid,itemid,1,"OnUseItem_31006") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = 60101
	local npc = s_summon(SCENE_ENTRY_PLAYER,uid,npcid,0,1)
	if npc ~= nil and npc ~= 0 then
		s_setValue(SCENE_ENTRY_NPC,npc,VALUE_TYPE_MASTER,uid)
		s_setValue(SCENE_ENTRY_NPC,npc,VALUE_TYPE_LIFE,3*60*1000)
	end
end
