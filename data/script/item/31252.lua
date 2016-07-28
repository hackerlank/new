--婚礼物件（爱神之书）
function OnUseItemEvent_31252(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60588)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31252") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--婚礼物件（双人婚椅）
function OnUseItemEvent_31253(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60589)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31253") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--婚礼物件（爱之灯柱）
function OnUseItemEvent_31254(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60590)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31254") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--婚礼物件（爱之心心）
function OnUseItemEvent_31255(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60591)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31255") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--婚礼物件（爱之顶灯）
function OnUseItemEvent_31258(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60592)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31258") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--婚礼物件（爱之廊灯）
function OnUseItemEvent_31259(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60593)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31259") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--婚礼物件（爱神之门）
function OnUseItemEvent_31260(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60594)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31260") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--婚礼物件（爱神之墙）
function OnUseItemEvent_31261(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60596)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31261") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--婚礼物件（爱神之箱）
function OnUseItemEvent_31262(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60597)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31262") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end
