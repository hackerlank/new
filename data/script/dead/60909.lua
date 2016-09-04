--??
function OnNpcDeadEvent60909(thisid,mid)
	local scene = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSY)
	if mid ~= 0 and mid ~= nil then
		local name = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_NAME)
		local itemid = s_addSceneItem(31548,1,scene,posx,posy,0,"650-" .. mid .. ",5004-" .. name,master,4)
	else
		local itemid = s_addSceneItem(31548,1,scene,posx,posy,0,"")
	end
end
