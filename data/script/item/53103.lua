
function OnUseItemEvent_53103(uid,thisid)
	if s_checkItem(uid,53103,10) ~= VALUE_OK then
		s_sysInfo(uid,"您的符文碎片不够噢！每次合成符文需要10块符文碎片。",ChatPos_Sys)
		return VALUE_FAIL
	end
	local msg = "你是否同意花费500绑银合成符文碎片呢？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "CallBack_OnUseItemEvent_53103($1,$2," .. thisid .. ")"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function CallBack_OnUseItemEvent_53103(uid,result,thisid)
	if result ~= Button_Yes then
		return VALUE_FAIL
	end
	local needbind = s_getItemValue(uid,thisid,Item_Attribute_Bind)
	if s_deleteItemByThisID(uid,thisid,10,"使用扣除") ~= VALUE_OK then
		s_sysInfo(uid,"您的符文碎片不够噢！请将10个符文碎片叠加在一起后再合成哦！",ChatPos_Sys)
		return VALUE_FAIL
	end
	if s_removeMoney(uid,MoneyType_MoneyTicket,500,"OnUseItemEvent_53103") ~= VALUE_OK then
		s_sysInfo(uid,"需要500绑银哦！")
		return VALUE_FAIL
	end
	s_addItem(uid,53203,3,1,0,"1-"..needbind,"符文合成")
	return VALUE_OK
end
