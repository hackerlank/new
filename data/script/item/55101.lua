--交响情人梦
function OnUseItemEvent_55101(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"交响情人梦") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 400 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,55101)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,20271,1,60*30)
	return VALUE_OK
end

function OnUseItemEvent_55102(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,61000)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addItem(uid,55103,3,math.random(1,2),0,"1-1","樱花花瓣")
	return VALUE_OK
end
