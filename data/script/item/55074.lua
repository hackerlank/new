--雪人礼盒
function OnUseItemEvent_55074(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,100)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if rand <= 13 then
		s_addItem(uid,29066,3,5,0,"1-1,7-1","雪人礼盒")
	elseif rand <= 26 then
		s_addItem(uid,29066,3,2,0,"1-1,7-2","雪人礼盒")
	elseif rand <= 34 then
		s_addItem(uid,29066,3,1,0,"1-1,7-3","雪人礼盒")
	elseif rand <= 47 then
		s_addItem(uid,29061,3,5,0,"1-1,7-1","雪人礼盒")
	elseif rand <= 60 then
		s_addItem(uid,29061,3,2,0,"1-1,7-2","雪人礼盒")
	elseif rand <= 68 then
		s_addItem(uid,29061,3,1,0,"1-1,7-3","雪人礼盒")
	elseif rand <= 81 then
		s_addItem(uid,47001,3,5,0,"1-1,7-1","雪人礼盒")
	elseif rand <= 94 then
		s_addItem(uid,47001,3,2,0,"1-1,7-2","雪人礼盒")
	else
		s_addItem(uid,47001,3,1,0,"1-1,7-3","雪人礼盒")
	end
	return VALUE_OK
end
