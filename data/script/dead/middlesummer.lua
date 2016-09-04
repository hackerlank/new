--魔化士兵
function OnNpcDeadEvent56008(thisid,mid)
	local cid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	local clevel = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_MIDDLESUMMER_LEVEL)
	if clevel == 5 then
		CopySceneInfo_10:SetVar(cid,ArSummer_Level5,0)
	elseif clevel == 10 then
		CopySceneInfo_10:SetVar(cid,ArSummer_Level10,0)
	elseif clevel == 15 then
		CopySceneInfo_10:SetVar(cid,ArSummer_Level15,0)
	elseif clevel == 20 then
		CopySceneInfo_10:SetVar(cid,ArSummer_Level20,0)
	end
	local posx = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSY)
	local npcid = s_sysSummon(56009,cid,posx,posy)
	if npcid == nil or npcid == 0 then
		s_debug("仲夏夜副本初始化正常士兵失败")
	else
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_MIDDLESUMMER_LEVEL,clevel)
	end
end
s_setNpcDeadEvent(56008)
