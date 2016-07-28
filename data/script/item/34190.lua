--黑钻老兵礼包(70级)
function OnUseItemEvent_34190(uid,thisid)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	if s_deleteItemByThisID(uid,thisid,1,"黑钻老兵礼包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34191,0,1,0,"1-1","黑钻老兵礼包")
	s_addItem(uid,34139,0,5,0,"1-1","黑钻老兵礼包")
	s_addItem(uid,29066,0,10,0,"1-1,7-3","黑钻老兵礼包")
	s_addItem(uid,47001,0,10,0,"1-1,7-3","黑钻老兵礼包")
	s_worldInfo("<p><ncolor=GXColorBlueSky>【系】"..name.."向全世界宣布，他又回来了！敌人们颤抖吧！朋友们欢呼吧！</n><book bookid='70161' text='【详】'/></p>",ChatPos_Sys)
	return VALUE_OK
end

--黑钻老兵礼包(80级)
function OnUseItemEvent_34191(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"黑钻老兵礼包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34192,0,1,0,"1-1","黑钻老兵礼包")
	s_addItem(uid,34164,0,5,0,"1-1","黑钻老兵礼包")
	s_addItem(uid,29061,0,6,0,"1-1,7-3","黑钻老兵礼包")
	s_addItem(uid,34146,0,1,0,"1-1","黑钻老兵礼包")
	s_addItem(uid,34143,0,1,0,"1-1","黑钻老兵礼包")
	return VALUE_OK
end

--黑钻老兵礼包(85级)
function OnUseItemEvent_34192(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"黑钻老兵礼包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34193,0,1,0,"1-1","黑钻老兵礼包")
	s_addItem(uid,29061,0,10,0,"1-1,7-3","黑钻老兵礼包")
	s_addItem(uid,47001,0,10,0,"1-1,7-3","黑钻老兵礼包")
	s_addItem(uid,34144,0,1,0,"1-1","黑钻老兵礼包")
	return VALUE_OK
end

--黑钻老兵礼包(90级)
function OnUseItemEvent_34193(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"黑钻老兵礼包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34194,0,1,0,"1-1","黑钻老兵礼包")
	s_addItem(uid,34169,0,5,0,"1-1","黑钻老兵礼包")
	s_addItem(uid,29061,0,6,0,"1-1,7-3","黑钻老兵礼包")
	s_addItem(uid,34142,0,1,0,"1-1","黑钻老兵礼包")
	s_addItem(uid,34145,0,1,0,"1-1","黑钻老兵礼包")
	return VALUE_OK
end

--黑钻老兵礼包(95级)
function OnUseItemEvent_34194(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"黑钻老兵礼包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,34195,0,1,0,"1-1","黑钻老兵礼包")
	s_addItem(uid,29066,0,10,0,"1-1,7-3","黑钻老兵礼包")
	s_addItem(uid,47001,0,10,0,"1-1,7-3","黑钻老兵礼包")
	local worldlevel = s_getWorldLevel()
	if worldlevel>=7 then
		s_addItem(uid,34170,0,1,0,"1-1","黑钻老兵礼包")
	else
		s_addItem(uid,55112,0,1,0,"1-1","黑钻老兵礼包")
	end
	return VALUE_OK
end

--黑钻老兵礼包(100级)
function OnUseItemEvent_34195(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"黑钻老兵礼包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local worldlevel = s_getWorldLevel()
	s_addItem(uid,29061,0,6,0,"1-1,7-3","黑钻老兵礼包")
	s_addItem(uid,31410,0,50,0,"1-1","黑钻老兵礼包")
	if worldlevel>=7 then
		s_addItem(uid,34206,0,5,0,"1-1","黑钻老兵礼包")
		s_addItem(uid,55113,0,1,0,"1-1","黑钻老兵礼包")
	else
		s_addItem(uid,34170,0,1,0,"1-1","黑钻老兵礼包")
	end
	return VALUE_OK
end
