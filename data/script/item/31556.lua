function Dealtaskexpitem(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local leveldiff = s_getMaxUserLevel() - s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_getWorldLevel() < 3 then
		return
	end
	if leveldiff < 10 then
		return
	end
	if level < 61 then
		return
	end
	local rand = math.random(1,100)
	if rand <= 80 then
		s_addItem(uid,31556,3,1,0,"1-1","女神的祝福")
		s_sysInfo(uid,"竟然意外地获得了女神的祝福！")
	end
end

function Dealtaskexpitemexp_31556(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 1000*(50+0.1*level^2.2)*0.1
	return math.floor(exp)
end

function OnUseItemEvent_31556(uid,thisid)
	local msg = "<p><n>您是否愿意花费300银币感谢女神的祝福？</n><newline/><n color='GXColorGreen'>（感谢女神将获得海量经验奖励）</n></p>"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "CallBack_OnUseItemEvent_31556($1,$2," .. thisid .. ")"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function CallBack_OnUseItemEvent_31556(uid,result,thisid)
	if result ~= Button_Yes then
		return
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local leveldiff = s_getMaxUserLevel() - s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_getWorldLevel() < 3 then
		s_sysInfo(uid,"您当前的人类进程太低了")
		return
	end
	if leveldiff < 10 then
		s_sysInfo(uid,"您当前的等级过高，已经追上其他玩家了")
		return
	end
	if level < 61 then
		s_sysInfo(uid,"您当前的等级过低")
		return
	end
	if s_removeMoney(uid,MoneyType_Money,300,"使用女神的祝福") ~= VALUE_OK then
		s_sysInfo(uid,"银币不足300银币")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"女神祝福") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local exp = Dealtaskexpitemexp_31556(uid)*10
	s_refreshExp(uid,exp,ExpType_Item,31556)
	return VALUE_OK
end
