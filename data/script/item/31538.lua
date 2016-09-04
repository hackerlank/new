--2012七夕活动
--乞巧针线包
function OnUseItemEvent_31539(uid,thisid,targetid)
	local fun = "OnUseItemEvent_Callback_31539($1,"..thisid..")"
	s_showbar(uid,1000,fun,UninterruptActionType_None,0)
	return VALUE_OK
end

function OnUseItemEvent_Callback_31539(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,100)
	if rand <= 84 then
		s_addItem(uid,31539,3,1,0,"1-1","穿针乞巧")
		s_sysInfo(uid,"哎呀，不小心被针扎了下，看来要休息一阵了...")
	else
		s_addItem(uid,31540,3,1,0,"1-1","穿针乞巧")
		s_sysInfo(uid,"哇！绣制成了传说中的五彩仙鹊！")
	end
	return VALUE_OK
end

--九引乞巧袋
function OnUseItemEvent_31538(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31538") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,31539,3,5,0,"1-1","OnUseItemEvent_31538")
	return VALUE_OK
end

--五彩仙鹊
function OnUseItemEvent_31540(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除五彩仙鹊") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 87 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,31540)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,5046,1,10)
	return VALUE_OK
end

--“羽灵”盒
function OnUseItemEvent_31542(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"不足21级，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31542") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_openPalace(uid,31542,0)
	return VALUE_OK
end

--织女的祝福
function OnUseItemEvent_31543(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31543") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,26141,3,4,0,"1-1","OnUseItemEvent_31543")
	s_addItem(uid,30008,3,2,0,"1-1","OnUseItemEvent_31543")
	s_addItem(uid,31252,3,1,0,"1-1","OnUseItemEvent_31543")
	s_addItem(uid,31262,3,1,0,"1-1","OnUseItemEvent_31543")
	return VALUE_OK
end

--牛郎的祝福
function OnUseItemEvent_31544(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31544") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,10,3,5,0,"1-1","OnUseItemEvent_31544")
	s_addItem(uid,30007,3,2,0,"1-1","OnUseItemEvent_31544")
	s_addItem(uid,31260,3,1,0,"1-1","OnUseItemEvent_31544")
	s_addItem(uid,31261,3,1,0,"1-1","OnUseItemEvent_31544")
	return VALUE_OK
end

--2012“飞星”时装套装包
function OnUseItemEvent_31545(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31545") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20277,3,1,0,"1-0,3-604800","OnUseItemEvent_31545")--时装
	s_addItem(uid,20304,3,1,0,"1-0","OnUseItemEvent_31545")
	s_addItem(uid,24072,3,1,0,"1-0","OnUseItemEvent_31545")
	s_addItem(uid,30028,3,2,0,"1-0","OnUseItemEvent_31545")
	return VALUE_OK
end

--2012“纤云”时装套装包
function OnUseItemEvent_31546(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31546") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,20278,3,1,0,"1-0,3-604800","OnUseItemEvent_31546")--时装
	s_addItem(uid,20351,3,1,0,"1-0","OnUseItemEvent_31546")
	s_addItem(uid,24073,3,1,0,"1-0","OnUseItemEvent_31546")
	s_addItem(uid,30031,3,2,0,"1-0","OnUseItemEvent_31546")
	return VALUE_OK
end
