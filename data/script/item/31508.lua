--青叶粽子
function OnUseItemEvent_31508(uid,thisid)
	local fun = "OnUseItemEvent_Callback_31508($1,"..thisid..")"
	s_showbar(uid,3000,fun,UninterruptActionType_None,1)
	return VALUE_OK
end

function OnUseItemEvent_Callback_31508(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,10000)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	if rand <= 1 then
		s_addItem(uid,63369,0,1,0,"1-1","端午活动")--3级宝石盒
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>食用青叶粽子时意外获得了3级宝石盒（绑）！</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 2 then
		s_addItem(uid,55047,0,1,0,"1-1","端午活动")--3级宠物技能卡
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>食用青叶粽子时意外获得了3级报恩技能盒！</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 706 then
		s_addItem(uid,29031,0,1,0,"1-1","端午活动")--红玫瑰
	elseif rand <= 1410 then
		s_addItem(uid,10,0,1,0,"1-1","端午活动")--100赠点
	elseif rand <= 1512 then
		s_addItem(uid,27201,0,2,0,"1-1","端午活动")--镶嵌宝石
	elseif rand <= 1614 then
		s_addItem(uid,27211,0,2,0,"1-1","端午活动")--镶嵌宝石
	elseif rand <= 1716 then
		s_addItem(uid,27221,0,2,0,"1-1","端午活动")--镶嵌宝石
	elseif rand <= 1818 then
		s_addItem(uid,27231,0,2,0,"1-1","端午活动")--镶嵌宝石
	elseif rand <= 1920 then
		s_addItem(uid,27241,0,2,0,"1-1","端午活动")--镶嵌宝石
	elseif rand <= 2620 then
		s_addItem(uid,31399,0,2,0,"1-1","端午活动")--高级魔法扑克盒
	elseif rand <= 3220 then
		s_addItem(uid,29052,0,1,0,"1-1","端午活动")--金水壶
	elseif rand <= 3880 then
		s_addItem(uid,29001,0,1,0,"1-1","端午活动")--远行囊（12格）
	elseif rand <= 4590 then
		s_addItem(uid,26130,0,6,0,"1-1","端午活动")--命运骰子
	elseif rand <= 5200 then
		s_addItem(uid,26102,0,1,0,"1-1","端午活动")--幸运宝石
	elseif rand <= 5900 then
		s_addItem(uid,29066,0,1,0,"1-1,7-2","端午活动")--舞会门票
	elseif rand <= 6600 then
		s_addItem(uid,31145,0,1,0,"1-1,7-2","端午活动")--速递通行证
	elseif rand <= 7300 then
		s_addItem(uid,31147,0,1,0,"1-1,7-2","端午活动")--远征通行证
	elseif rand <= 8000 then
		s_addItem(uid,29061,0,1,0,"1-1,7-2","端午活动")--钓鱼卡
	elseif rand <= 8500 then
		s_addItem(uid,29066,0,1,0,"1-1,7-3","端午活动")--舞会门票
	elseif rand <= 9000 then
		s_addItem(uid,31145,0,1,0,"1-1,7-3","端午活动")--速递通行证
	elseif rand <= 9500 then
		s_addItem(uid,31147,0,1,0,"1-1,7-3","端午活动")--远征通行证
	elseif rand <= 10000 then
		s_addItem(uid,29061,0,1,0,"1-1,7-3","端午活动")--钓鱼卡
	end
	s_sysInfo(uid,"青叶粽子味道不错~")
	return VALUE_OK
end

--赤豆红枣粽
function OnUseItemEvent_31510(uid,thisid)
	local fun = "OnUseItemEvent_Callback_31510($1,"..thisid..")"
	s_showbar(uid,3000,fun,UninterruptActionType_None,1)
	return VALUE_OK
end

function OnUseItemEvent_Callback_31510(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31510") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,26143,0,1,0,"1-1","OnUseItemEvent_31510")
	s_sysInfo(uid,"赤豆红枣粽味道不错，不知道松仁白米粽的味道怎么样...")
	return VALUE_OK
end

--松仁白米粽
function OnUseItemEvent_31511(uid,thisid)
	local fun = "OnUseItemEvent_Callback_31511($1,"..thisid..")"
	s_showbar(uid,3000,fun,UninterruptActionType_None,1)
	return VALUE_OK
end

function OnUseItemEvent_Callback_31511(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31511") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,52011,0,1,0,"1-1,3-172800","OnUseItemEvent_31511")
	s_sysInfo(uid,"松仁白米粽味道不错，不过感觉还是香菇鲜肉粽好吃啊...")
	return VALUE_OK
end

--香菇鲜肉粽
function OnUseItemEvent_31512(uid,thisid)
	local fun = "OnUseItemEvent_Callback_31512($1,"..thisid..")"
	s_showbar(uid,3000,fun,UninterruptActionType_None,1)
	s_sysInfo(uid,"香菇鲜肉粽味道不错，不知道水晶什锦粽的味道怎么样...")
	return VALUE_OK
end

function OnUseItemEvent_Callback_31512(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31512") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,26149,0,2,0,"1-1,2-3","OnUseItemEvent_31512")
	return VALUE_OK
end

--水晶什锦粽
function OnUseItemEvent_31513(uid,thisid)
	local fun = "OnUseItemEvent_Callback_31513($1,"..thisid..")"
	s_showbar(uid,3000,fun,UninterruptActionType_None,1)
	return VALUE_OK
end

function OnUseItemEvent_Callback_31513(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31513") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,26104,0,2,0,"1-1","OnUseItemEvent_31513")
	s_sysInfo(uid,"水晶什锦粽味道不错，可惜吃饱了，没办法多吃了...")
	return VALUE_OK
end

--薄荷艾香粽
function OnUseItemEvent_31514(uid,thisid)
	local fun = "OnUseItemEvent_Callback_31514($1,"..thisid..")"
	s_showbar(uid,3000,fun,UninterruptActionType_None,1)
	return VALUE_OK
end

function OnUseItemEvent_Callback_31514(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31514") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,23055,0,6,0,"1-1","OnUseItemEvent_31514")
	s_sysInfo(uid,"薄荷艾香粽味道不错，不过，吃完竟然想学猫叫...晕")
	return VALUE_OK
end
