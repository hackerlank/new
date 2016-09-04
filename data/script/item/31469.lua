--封印的远行囊
function OnUseItemEvent_31469(uid,thisid)
	local msg = "你是否同意花费300银币直接解除封印？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "CallBack_OnUseItemEvent_31469($1,$2," .. thisid .. ")"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function CallBack_OnUseItemEvent_31469(uid,result,thisid)
	if result ~= Button_Yes then
		return
	end
	if s_removeMoney(uid,MoneyType_Money,300,"封印远行囊右键使用扣除") ~= VALUE_OK then
		s_sysInfo(uid,"银币不足300银币")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29001,3,1,0,"1-1","银币兑换远行囊")
	return VALUE_OK
end
