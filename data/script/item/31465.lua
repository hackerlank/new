--封印的独角兽时装
function OnUseItemEvent_31465(uid,thisid)
	local msg = "你是否同意花费8100银币直接解除封印？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "CallBack_OnUseItemEvent_31465($1,$2," .. thisid .. ")"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function CallBack_OnUseItemEvent_31465(uid,result,thisid)
	if result ~= Button_Yes then
		return
	end
	if s_removeMoney(uid,MoneyType_Money,8100,"封印独角兽时装右键使用扣除") ~= VALUE_OK then
		s_sysInfo(uid,"银币不足8100银币")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,52015,3,1,0,"1-1,3-2592000","银币兑换独角兽时装")
	return VALUE_OK
end
