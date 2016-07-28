--Q币
function OnUseItemEvent_18(uid,thisid)
	local qqtype = s_getItemValue(uid,thisid,Item_Attribute_QQ_Type)
	local qqnum = s_getItemValue(uid,thisid,Item_Attribute_QQ_Num)
	if qqnum == 0 then
		qqnum = 1
	end
	s_weibo(uid,1,"轻松获得兵王2发的Q币 http://bw.zqgame.com/a/bwfl/index.html",thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_topupQQCard(uid,0,qqtype,qqnum)
	s_sysInfo(uid,"Q币充值提交已经成功，会有一定时间延迟，请耐心等待",ChatPos_MsgBox)
	return VALUE_OK
end

