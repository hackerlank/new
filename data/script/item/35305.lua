--坐骑卷轴
function zuoqijiangli(uid,thisid,info,zqid,money)
	local msg = "您是否花费".. money .."金币可直接获得"..info.."坐骑时装（七天）"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "CallBack_OnUseItemEvent_zuoqi($1,$2," .. thisid .. "," .. "\"".. info .."\"" .. "," .. zqid .. "," .. money .. ")"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function CallBack_OnUseItemEvent_zuoqi(uid,result,thisid,info,zqid,money)
	if result ~= Button_Yes then
		return
	end
	if s_removeMoney(uid,MoneyType_Gold,money,"坐骑时装使用扣除") ~= VALUE_OK then
		s_sysInfo(uid,"金币不足，需"..money.."金币")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,zqid,0,1,0,"1-1,3-604800","坐骑榜奖励")
	return VALUE_OK
end

--坐骑时装（紫）
function OnUseItemEvent_35305(uid,thisid)	return zuoqijiangli(uid, thisid, "坐骑榜前10",	52043,	3000)	end
--坐骑时装（红）
function OnUseItemEvent_35306(uid,thisid)	return zuoqijiangli(uid, thisid, "坐骑榜第2-4",	52034,	3000)	end
--坐骑时装（青）
function OnUseItemEvent_35307(uid,thisid)	return zuoqijiangli(uid, thisid, "坐骑榜第5-10",	52032,	3000)	end

