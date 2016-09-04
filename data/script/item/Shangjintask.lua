--赏金卷轴
function ShangjinTask(uid,thisid,info,task,money)
	local msg = "您是否花费".. money .."银币可直接完成"..info.."任务？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "CallBack_OnUseItemEvent_Shangjin($1,$2," .. thisid .. "," .. "\"".. info .."\"" .. "," .. task .. "," .. money .. ")"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function CallBack_OnUseItemEvent_Shangjin(uid,result,thisid,info,task,money)
	if result ~= Button_Yes then
		return
	end
	local process = s_getTaskValue(uid,task,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		s_sysInfo(uid,"您没有在做"..info.."任务，不能使用"..info.."卷轴")
		return VALUE_FAIL
	end
	if s_removeMoney(uid,MoneyType_Money,money,"赏金卷轴(远征)扣除") ~= VALUE_OK then
		s_sysInfo(uid,"银币不足"..money.."银币")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local state = s_getTaskValue(uid,task,TaskValue_State)
	s_setTaskValue(uid,task,TaskValue_Operate,state)
	return VALUE_OK
end

--60级赏金卷轴(远征)
function OnUseItemEvent_31385(uid,thisid)	return ShangjinTask(uid, thisid, "远征",	30026,	200)	end
--70级赏金卷轴(远征)
function OnUseItemEvent_31386(uid,thisid)	return ShangjinTask(uid, thisid, "远征",	30026,	200)	end
--80级赏金卷轴(远征)
function OnUseItemEvent_31387(uid,thisid)	return ShangjinTask(uid, thisid, "远征",	30026,	200)	end
--90级赏金卷轴(远征)
function OnUseItemEvent_31388(uid,thisid)	return ShangjinTask(uid, thisid, "远征",	30026,	200)	end
--100级赏金卷轴(远征)
function OnUseItemEvent_31389(uid,thisid)	return ShangjinTask(uid, thisid, "远征",	30026,	200)	end
--110级赏金卷轴(远征)
function OnUseItemEvent_31560(uid,thisid)	return ShangjinTask(uid, thisid, "远征",	30026,	200)	end
--120级赏金卷轴(远征)
function OnUseItemEvent_31561(uid,thisid)	return ShangjinTask(uid, thisid, "远征",	30026,	200)	end
--130级赏金卷轴(远征)
function OnUseItemEvent_31562(uid,thisid)	return ShangjinTask(uid, thisid, "远征",	30026,	200)	end
--140级赏金卷轴(远征)
function OnUseItemEvent_31563(uid,thisid)	return ShangjinTask(uid, thisid, "远征",	30026,	200)	end
--150级赏金卷轴(远征)
function OnUseItemEvent_31564(uid,thisid)	return ShangjinTask(uid, thisid, "远征",	30026,	200)	end

--60级赏金卷轴(生存训练)
function OnUseItemEvent_31390(uid,thisid)	return ShangjinTask(uid, thisid, "生存训练",	30043,	200)	end
--70级赏金卷轴(生存训练)
function OnUseItemEvent_31391(uid,thisid)	return ShangjinTask(uid, thisid, "生存训练",	30045,	200)	end
--80级赏金卷轴(生存训练)
function OnUseItemEvent_31392(uid,thisid)	return ShangjinTask(uid, thisid, "生存训练",	30045,	200)	end
--90级赏金卷轴(生存训练)
function OnUseItemEvent_31393(uid,thisid)	return ShangjinTask(uid, thisid, "生存训练",	30045,	200)	end
--100级赏金卷轴(生存训练)
function OnUseItemEvent_31394(uid,thisid)	return ShangjinTask(uid, thisid, "生存训练",	30045,	200)	end
--110级赏金卷轴(生存训练)
function OnUseItemEvent_31565(uid,thisid)	return ShangjinTask(uid, thisid, "生存训练",	30045,	200)	end
--120级赏金卷轴(生存训练)
function OnUseItemEvent_31566(uid,thisid)	return ShangjinTask(uid, thisid, "生存训练",	30045,	200)	end
--130级赏金卷轴(生存训练)
function OnUseItemEvent_31567(uid,thisid)	return ShangjinTask(uid, thisid, "生存训练",	30045,	200)	end
--140级赏金卷轴(生存训练)
function OnUseItemEvent_31568(uid,thisid)	return ShangjinTask(uid, thisid, "生存训练",	30045,	200)	end
--150级赏金卷轴(生存训练)
function OnUseItemEvent_31569(uid,thisid)	return ShangjinTask(uid, thisid, "生存训练",	30045,	200)	end
