--黄金老兵礼包(50级)
function OnUseItemEvent_34125(uid,thisid)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_34125") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34126,0,1,0,"1-1","黄金老兵礼包")
	s_addItem(uid,34137,0,5,0,"1-1","黄金老兵礼包")
	s_addItem(uid,29066,0,10,0,"1-1,7-3","黄金老兵礼包")
	s_addItem(uid,47001,0,10,0,"1-1,7-3","黄金老兵礼包")
	s_worldInfo("<p><n color=GXColorBlueSky>【系】"..name.."向全世界宣布，他又回来了！敌人们颤抖吧！朋友们欢呼吧！</n><book bookid='70161' text='【详】'/></p>",ChatPos_Sys)
	return VALUE_OK
end

--黄金老兵礼包(55级)
function OnUseItemEvent_34126(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_34126") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34127,0,1,0,"1-1","黄金老兵礼包")
	s_addItem(uid,29066,0,10,0,"1-1,7-3","黄金老兵礼包")
	s_addItem(uid,47001,0,10,0,"1-1,7-3","黄金老兵礼包")
	s_addItem(uid,34146,0,1,0,"1-1","黄金老兵礼包")
	return VALUE_OK
end

--黄金老兵礼包(60级)
function OnUseItemEvent_34127(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_34127") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34128,0,1,0,"1-1","黄金老兵礼包")
	s_addItem(uid,34138,0,5,0,"1-1","黄金老兵礼包")
	s_addItem(uid,34143,0,1,0,"1-1","黄金老兵礼包")
	s_addItem(uid,29061,0,6,0,"1-1,7-3","黄金老兵礼包")
	return VALUE_OK
end

--黄金老兵礼包(65级)
function OnUseItemEvent_34128(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_34128") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34129,0,1,0,"1-1","黄金老兵礼包")
	s_addItem(uid,29066,0,10,0,"1-1,7-3","黄金老兵礼包")
	s_addItem(uid,47001,0,10,0,"1-1,7-3","黄金老兵礼包")
	return VALUE_OK
end

--黄金老兵礼包(70级)
function OnUseItemEvent_34129(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_34129") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29066,0,10,0,"1-1,7-3","黄金老兵礼包")
	s_addItem(uid,47001,0,10,0,"1-1,7-3","黄金老兵礼包")
	s_addItem(uid,34140,0,1,0,"1-1","黄金老兵礼包")
	return VALUE_OK
end
