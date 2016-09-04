--充值兑换奖励

--1元礼包(小康礼包)
function OnUseItemEvent_32034(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_ALL_REDEEM) < 100 then
		s_sysInfo(uid,"<p><n>您还没有充值，无法领取礼包。是否立即</n><dialog hotkeyid='15' text='充值'/><book bookid='70007'>[关于金币]</book></p>")
		return VALUE_FAIL
	end
	--if s_removeMoney(uid,MoneyType_Gold,100,"1元礼包",MoneyActionTypeRemove_Present) == VALUE_FAIL then
	--	s_sysInfo(uid,"您身上的金币不够")
	--	return VALUE_FAIL
	--end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32034") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,32213,0,1,0,"1-1","首充礼包32034")
	s_addItem(uid,22061,0,1,0,"1-1","首充礼包32034")
	s_addItem(uid,34113,0,1,0,"1-1","首充礼包32034")
	s_addItem(uid,7,0,2,0,"1-1","首充礼包32034")
	s_addItem(uid,5,0,10,0,"1-1","首充礼包32034")
	s_addItem(uid,32035,0,1,0,"1-1","首充礼包")
	s_worldInfo("<p><n color=GXColorBlueSky>【"..name.."】打开了首次充值礼包！</n><book bookid=70240 text=[查看礼包内容]/></p>",ChatPos_Sys+ChatPos_Honor)
	return VALUE_OK
end

--10元礼包(中产礼包)
function OnUseItemEvent_32035(uid,thisid)
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_ALL_REDEEM) < 1000 then
		s_sysInfo(uid,"<p><n>您的充值没有超过</n><n color='GXColorGreen'>10元</n><n>，无法领取礼包。是否立即</n><dialog hotkeyid='15' text='充值'/><book bookid='70007'>[关于金币]</book></p>")
		return
	end
	local msg = "<p><n>您是否愿意花费</n><n color='GXColorGreen'>1000金币</n><n>开启超值礼包？</n></p>"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "CallBack_OnUseItemEvent_32035($1,$2," .. thisid .. ")"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end
function CallBack_OnUseItemEvent_32035(uid,result,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	if result ~= Button_Yes then
		return
	end
	if s_removeMoney(uid,MoneyType_Gold,1000,"10元礼包",MoneyActionTypeRemove_Present) == VALUE_FAIL then
		s_sysInfo(uid,"您身上的金币不够")
		return
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32035") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20184,0,1,0,"1-1","OnUseItemEvent_32035")
	elseif sex == 2 then
		s_addItem(uid,20179,0,1,0,"1-1","OnUseItemEvent_32035")
	end
	s_addItem(uid,26102,0,20,0,"1-1","OnUseItemEvent_32035")
	s_addItem(uid,27108,0,20,0,"1-1","OnUseItemEvent_32035")
	s_addItem(uid,34113,0,2,0,"1-1","OnUseItemEvent_32035")
	s_addItem(uid,31145,0,3,0,"1-1,7-2","OnUseItemEvent_32035")
	s_addItem(uid,32213,0,1,0,"1-1","OnUseItemEvent_32035")
	s_addItem(uid,47001,0,5,0,"1-1,7-2","OnUseItemEvent_32035")
	s_addItem(uid,32036,0,1,0,"1-1","充值礼包")
	s_worldInfo("<p><n color=GXColorBlueSky>【"..name.."】打开了10元超值礼包！</n><book bookid=70241 text=[查看礼包内容]/></p>",ChatPos_Sys+ChatPos_Honor)
	return VALUE_OK
end

--30元礼包(大富礼包)
function OnUseItemEvent_32036(uid,thisid)
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_ALL_REDEEM) < 3000 then
		s_sysInfo(uid,"<p><n>您的充值没有超过</n><n color='GXColorGreen'>30元</n><n>，无法领取礼包。是否立即</n><dialog hotkeyid='15' text='充值'/><book bookid='70007'>[关于金币]</book></p>")
		return
	end
	local msg = "<p><n>您是否愿意花费</n><n color='GXColorGreen'>3000金币</n><n>开启超值礼包?</n></p>"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "CallBack_OnUseItemEvent_32036($1,$2," .. thisid .. ")"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end
function CallBack_OnUseItemEvent_32036(uid,result,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	if result ~= Button_Yes then
		return
	end
	if s_removeMoney(uid,MoneyType_Gold,3000,"30元礼包",MoneyActionTypeRemove_Present) == VALUE_FAIL then
		s_sysInfo(uid,"您身上的金币不够")
		return
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32036") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,20189,0,1,1,"1-1,7-1","OnUseItemEvent_32036")
	elseif sex == 2 then
		s_addItem(uid,20181,0,1,1,"1-1,7-1","OnUseItemEvent_32036")
	end
	s_addItem(uid,26102,0,30,0,"1-1","OnUseItemEvent_32036")
	s_addItem(uid,27108,0,30,0,"1-1","OnUseItemEvent_32036")
	s_addItem(uid,34113,0,4,0,"1-1","OnUseItemEvent_32036")
	s_addItem(uid,31147,0,2,0,"1-1,7-2","OnUseItemEvent_32036")
	s_addItem(uid,29066,0,3,0,"1-1,7-2","OnUseItemEvent_32036")
	s_addItem(uid,26128,0,30,0,"1-1","OnUseItemEvent_32036")
	s_addItem(uid,47001,0,10,0,"1-1,7-2","OnUseItemEvent_32036")
	s_addItem(uid,32213,0,1,0,"1-1","OnUseItemEvent_32036")
	s_worldInfo("<p><n color=GXColorBlueSky>【"..name.."】打开了30元超值礼包！</n><book bookid=70242 text=[查看礼包内容]/></p>",ChatPos_Sys+ChatPos_Honor)
	return VALUE_OK
end
