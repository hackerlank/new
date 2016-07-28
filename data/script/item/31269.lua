
--圣诞节物件（小圣诞树）
function OnUseItemEvent_31269(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60626)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31269") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--圣诞节物件（圣诞靴子）
function OnUseItemEvent_31270(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60615)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31270") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--圣诞节物件（礼物绿）
function OnUseItemEvent_31271(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60604)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31271") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--圣诞节物件（礼物黄）
function OnUseItemEvent_31272(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60602)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31272") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--雪人物件（新年）
function OnUseItemEvent_31273(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60621)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31273") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--雪人物件（圣诞）
function OnUseItemEvent_31274(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60622)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31274") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--圣诞物件（一堆礼物）
function OnUseItemEvent_31275(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60601)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31275") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--装饰物件（一堆气球）
function OnUseItemEvent_31276(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60620)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31276") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--装饰物件（黄色气球）
function OnUseItemEvent_31277(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60619)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31277") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--装饰物件（红色气球）
function OnUseItemEvent_31278(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60617)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31278") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end

--装饰物件（粉色气球）
function OnUseItemEvent_31279(uid,thisid,targetid)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60618)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31279") ~= VALUE_OK then
		return VALUE_OK
	end
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,60*10*1000)
	return VALUE_OK
end
