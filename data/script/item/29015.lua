--浓缩炸药
function OnUseItemEvent_29015(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_29015") ~= VALUE_OK then
		return
	end
	local value = 350
	local posx = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
	local victim = {}
	local list = s_getNineEntry(SCENE_ENTRY_PLAYER,uid,3)
	for i = 1,table.getn(list), 2 do
		if list[i] ~= SCENE_ENTRY_NPC and list[i+1] ~= uid then
			if s_checkPK(10410,SCENE_ENTRY_PLAYER,uid,list[i],list[i+1]) == VALUE_OK then
				local x1 = s_getValue(list[i],list[i+1],VALUE_TYPE_POSX)
				local y1 = s_getValue(list[i],list[i+1],VALUE_TYPE_POSY)
				if math.sqrt((x1-posx)^2 + (y1-posy)^2) <= 5 then
					table.insert(victim,list[i])
					table.insert(victim,list[i+1])
					table.insert(victim,value)
				end
			end
		end
	end
	s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP,0)
	DirectAttack(10410,SCENE_ENTRY_PLAYER,uid,unpack(victim))
end
