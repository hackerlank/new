--微币
function OnUseItemEvent_21(uid,thisid)
	local wbtype = s_getItemValue(uid,thisid,Item_Attribute_WB_Type)
	local wbnum = s_getItemValue(uid,thisid,Item_Attribute_WB_Num)
	if wbnum == 0 then
		wbnum = 1
	end
	s_weibo(uid,1,"轻松获得兵王2发的微币 http://bw.zqgame.com/a/bwfl/index.html",thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_topupWBCard(uid,0,wbtype,wbnum)
	s_sysInfo(uid,"微币充值提交已经成功，会有一定时间延迟，请耐心等待",ChatPos_MsgBox)
	return VALUE_OK
end

