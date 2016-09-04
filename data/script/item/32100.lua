--任务经验补偿
function OnUseItemEvent_32100(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32100") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29066,0,5,0,"1-1,7-3","OnUseItemEvent_32100")
	s_addItem(uid,29061,0,3,0,"1-1,7-3","OnUseItemEvent_32100")
	if level < 20 then
		s_addItem(uid,47001,0,5,0,"1-1,7-3","OnUseItemEvent_32100")
	elseif level >= 20 and level < 30 then
		s_addItem(uid,47001,0,5,0,"1-1,7-3","OnUseItemEvent_32100")
	elseif level >= 30 and level < 40 then
		s_addItem(uid,47001,0,5,0,"1-1,7-3","OnUseItemEvent_32100")
	elseif level >= 40 and level < 50 then
		s_addItem(uid,47001,0,5,0,"1-1,7-3","OnUseItemEvent_32100")
	elseif level >= 50 and level < 60 then
		s_addItem(uid,47001,0,5,0,"1-1,7-3","OnUseItemEvent_32100")
	elseif level >= 60 and level < 70 then
		s_addItem(uid,47001,0,5,0,"1-1,7-3","OnUseItemEvent_32100")
	elseif level >= 70 and level < 80 then
		s_addItem(uid,47001,0,5,0,"1-1,7-3","OnUseItemEvent_32100")
	elseif level >= 80 and level < 90 then
		s_addItem(uid,47001,0,5,0,"1-1,7-3","OnUseItemEvent_32100")
	elseif level >= 90 then
		s_addItem(uid,47001,0,5,0,"1-1,7-3","OnUseItemEvent_32100")
	end
	return VALUE_OK
end
