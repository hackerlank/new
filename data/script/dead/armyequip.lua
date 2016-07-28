--军团装备
function OnSceneArmyEquipDeadEvent22922(thisid,mid)
	local cid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSY)
	for i=0,math.random(5,10) do
		s_addSceneItem(27110,1,cid,posx,posy,0,"")
	end
end
function OnSceneArmyEquipDeadEvent22923(thisid,mid)
	local cid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSY)
	for i=0,math.random(7,13) do
		s_addSceneItem(27110,1,cid,posx,posy,0,"")
	end
end
function OnSceneArmyEquipDeadEvent22924(thisid,mid)
	local cid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSY)
	for i=0,math.random(9,16) do
		s_addSceneItem(27110,1,cid,posx,posy,0,"")
	end
end
RegisterMyNpcDeadEvent(22922,"OnSceneArmyEquipDeadEvent22922($2,$1)")
RegisterMyNpcDeadEvent(22923,"OnSceneArmyEquipDeadEvent22923($2,$1)")
RegisterMyNpcDeadEvent(22924,"OnSceneArmyEquipDeadEvent22924($2,$1)")
