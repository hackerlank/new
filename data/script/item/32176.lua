--封印礼包3天
function OnUseItemEvent_32176(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local num = 5*3 --手札、舞票道具数量
	s_addItem(uid,29066,3,num,0,"1-1,7-3","合区封印礼包")  --绿色中级舞票
	s_addItem(uid,31147,3,3,0,"1-1,7-3","合区封印礼包") --绿色中级远征证
	s_addItem(uid,31145,3,6,0,"1-1,7-3","合区封印礼包") --绿色中级速递证
	if level < 60 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色50级手札")
	elseif level >= 60 and level < 70 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色60级手札")
	elseif level >= 70 and level < 80 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色70级手札")
	elseif level >= 80 and level < 90 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色80级手札")
	elseif level >= 90 and level < 100 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色90级手札")
	elseif level >= 100 and level < 110 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色100级手札")
	elseif level >= 110 and level < 120 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色110级手札")
	elseif level >= 120 and level < 130 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色120级手札")
	elseif level >= 130 and level < 140 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色130级手札")
	elseif level >= 140 and level < 150 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色140级手札")
	elseif level >= 150 and level < 160 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色150级手札")
	end
	return VALUE_OK
end

--封印礼包5天
function OnUseItemEvent_32175(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local num = 5*5 --手札、舞票道具数量
	s_addItem(uid,29066,3,num,0,"1-1,7-3","合区封印礼包")  --绿色中级舞票
	s_addItem(uid,31147,3,5,0,"1-1,7-3","合区封印礼包") --绿色中级远征证
	s_addItem(uid,31145,3,10,0,"1-1,7-3","合区封印礼包") --绿色中级速递证
	if level < 60 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色50级手札")
	elseif level >= 60 and level < 70 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色60级手札")
	elseif level >= 70 and level < 80 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色70级手札")
	elseif level >= 80 and level < 90 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色80级手札")
	elseif level >= 90 and level < 100 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色90级手札")
	elseif level >= 100 and level < 110 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色100级手札")
	elseif level >= 110 and level < 120 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色110级手札")
	elseif level >= 120 and level < 130 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色120级手札")
	elseif level >= 130 and level < 140 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色130级手札")
	elseif level >= 140 and level < 150 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色140级手札")
	elseif level >= 150 and level < 160 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色150级手札")
	end
	return VALUE_OK
end

--封印礼包7天
function OnUseItemEvent_32174(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local num = 5*7 --手札、舞票道具数量
	s_addItem(uid,29066,3,num,0,"1-1,7-3","合区封印礼包")  --绿色中级舞票
	s_addItem(uid,31147,3,7,0,"1-1,7-3","合区封印礼包") --绿色中级远征证
	s_addItem(uid,31145,3,15,0,"1-1,7-3","合区封印礼包") --绿色中级速递证
	if level < 60 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色50级手札")
	elseif level >= 60 and level < 70 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色60级手札")
	elseif level >= 70 and level < 80 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色70级手札")
	elseif level >= 80 and level < 90 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色80级手札")
	elseif level >= 90 and level < 100 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色90级手札")
	elseif level >= 100 and level < 110 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色100级手札")
	elseif level >= 110 and level < 120 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色110级手札")
	elseif level >= 120 and level < 130 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色120级手札")
	elseif level >= 130 and level < 140 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色130级手札")
	elseif level >= 140 and level < 150 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色140级手札")
	elseif level >= 150 and level < 160 then
		s_addItem(uid,47001,3,num,0,"1-1,7-3","绿色150级手札")
	end
	return VALUE_OK
end
