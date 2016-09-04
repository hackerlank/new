--白金老兵礼包(60级)
function OnUseItemEvent_34130(uid,thisid)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	if s_deleteItemByThisID(uid,thisid,1,"白金老兵礼包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34131,0,1,0,"1-1","白金老兵礼包")
	s_addItem(uid,34138,0,5,0,"1-1","白金老兵礼包")
	s_addItem(uid,29066,0,10,0,"1-1,7-3","白金老兵礼包")
	s_addItem(uid,47001,0,10,0,"1-1,7-3","白金老兵礼包")
	s_worldInfo("<p><ncolor=GXColorBlueSky>【系】"..name.."向全世界宣布，他又回来了！敌人们颤抖吧！朋友们欢呼吧！</n><book bookid='70161' text='【详】'/></p>",ChatPos_Sys)
	return VALUE_OK
end

--白金老兵礼包(65级)
function OnUseItemEvent_34131(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"白金老兵礼包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34132,0,1,0,"1-1","白金老兵礼包")
	s_addItem(uid,29066,0,10,0,"1-1,7-3","白金老兵礼包")
	s_addItem(uid,47001,0,10,0,"1-1,7-3","白金老兵礼包")
	s_addItem(uid,34143,0,1,0,"1-1","白金老兵礼包")
	return VALUE_OK
end

--白金老兵礼包(70级)
function OnUseItemEvent_34132(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"白金老兵礼包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34133,0,1,0,"1-1","白金老兵礼包")
	s_addItem(uid,34139,0,5,0,"1-1","白金老兵礼包")
	s_addItem(uid,29061,0,6,0,"1-1,7-3","白金老兵礼包")
	s_addItem(uid,34146,0,1,0,"1-1","白金老兵礼包")
	return VALUE_OK
end

--白金老兵礼包(75级)
function OnUseItemEvent_34133(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"白金老兵礼包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34134,0,1,0,"1-1","白金老兵礼包")
	s_addItem(uid,29066,0,10,0,"1-1,7-3","白金老兵礼包")
	s_addItem(uid,47001,0,10,0,"1-1,7-3","白金老兵礼包")
	s_addItem(uid,55110,0,1,0,"1-1","白金老兵礼包")
	return VALUE_OK
end

--白金老兵礼包(80级)
function OnUseItemEvent_34134(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"白金老兵礼包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29061,0,6,0,"1-1,7-3","白金老兵礼包")
	s_addItem(uid,34141,0,1,0,"1-1","白金老兵礼包")
	s_addItem(uid,34144,0,1,0,"1-1","白金老兵礼包")
	return VALUE_OK
end
