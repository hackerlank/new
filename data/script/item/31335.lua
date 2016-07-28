--春节物件（中国结）
function OnUseItemEvent_31335(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60637)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31335") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--春节物件（大吉大利）
function OnUseItemEvent_31336(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60641)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31336") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--春节物件（辞旧迎新）
function OnUseItemEvent_31337(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60642)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31337") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--春节物件（福如东海）
function OnUseItemEvent_31338(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60644)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31338") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--春节物件（财源广进）
function OnUseItemEvent_31339(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60645)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31339") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--春节物件（吉祥如意）
function OnUseItemEvent_31340(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60650)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31340") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--春节物件（岁岁平安）
function OnUseItemEvent_31341(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60653)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31341") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--春节物件（龙马精神）
function OnUseItemEvent_31342(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60667)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31342") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--春节物件（心想事成）
function OnUseItemEvent_31343(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60669)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31343") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--春节物件（年年有余）
function OnUseItemEvent_31344(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60670)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31344") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--春节物件（龙运当头）
function OnUseItemEvent_31345(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60671)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31345") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--春节物件（祥狮拜年）
function OnUseItemEvent_31346(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60672)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31346") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--春节物件（方灯）-气球粉
function OnUseItemEvent_31321(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60618)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31321") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--春节物件（灯笼）-气球黄
function OnUseItemEvent_31322(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60619)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31322") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--春节物件（竹灯）-中国结
function OnUseItemEvent_31323(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60637)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31323") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end
