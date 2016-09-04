--赏金卷轴
function ShangjinTask2(uid,thisid,info,task,money)
	local msg = "您是否花费".. money .."银币可直接完成"..info.."任务？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "CallBack_OnUseItemEvent_Shangjin2($1,$2," .. thisid .. "," .. "\"".. info .."\"" .. "," .. task .. "," .. money .. ")"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function CallBack_OnUseItemEvent_Shangjin2(uid,result,thisid,info,task,money)
	if result ~= Button_Yes then
		return
	end
	local process = s_getTaskValue(uid,task,TaskValue_Process)
	if process ~= TaskProcess_Doing then
		s_sysInfo(uid,"您没有在做"..info.."任务，不能使用"..info.."卷轴")
		return VALUE_FAIL
	end
	if s_getVar(uid, task, TvarIndex_TiledMoneyReward) == 1 then
		s_sysInfo(uid,"您正在做赏金任务，只有国外救援经验任务才可使用赏金卷轴")
		return VALUE_FAIL
	end
	if s_removeMoney(uid,MoneyType_Money,money,"赏金卷轴(远征)扣除") ~= VALUE_OK then
		s_sysInfo(uid,"银币不足"..money.."银币")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	FinishRoleTask(uid,task)
	return VALUE_OK
end

--80级赏金卷轴(国外救援)
function OnUseItemEvent_31703(uid,thisid)	return ShangjinTask2(uid, thisid, "国外救援",	30406,	200)	end
--90级赏金卷轴(国外救援)
function OnUseItemEvent_31704(uid,thisid)	return ShangjinTask2(uid, thisid, "国外救援",	30406,	200)	end
--100级赏金卷轴(国外救援)
function OnUseItemEvent_31705(uid,thisid)	return ShangjinTask2(uid, thisid, "国外救援",	30406,	200)	end
--110级赏金卷轴(国外救援)
function OnUseItemEvent_31706(uid,thisid)	return ShangjinTask2(uid, thisid, "国外救援",	30406,	200)	end
--120级赏金卷轴(国外救援)
function OnUseItemEvent_31707(uid,thisid)	return ShangjinTask2(uid, thisid, "国外救援",	30406,	200)	end
--130级赏金卷轴(国外救援)
function OnUseItemEvent_31708(uid,thisid)	return ShangjinTask2(uid, thisid, "国外救援",	30406,	200)	end
--140级赏金卷轴(国外救援)
function OnUseItemEvent_31709(uid,thisid)	return ShangjinTask2(uid, thisid, "国外救援",	30406,	200)	end
--150级赏金卷轴(国外救援)
function OnUseItemEvent_31710(uid,thisid)	return ShangjinTask2(uid, thisid, "国外救援",	30406,	200)	end

