
--支付宝现金-61-10-30
function OnUseItemEvent_23(uid,thisid,zfbname)
	s_requestZFBAccount(uid,thisid)
	return VALUE_OK
end

--支付宝现金-71-10-30
function OnUseItemEvent_24(uid,thisid)
	s_requestZFBAccount(uid,thisid)
	return VALUE_OK
end

--支付宝现金-81-10-30
function OnUseItemEvent_25(uid,thisid)
	s_requestZFBAccount(uid,thisid)
	return VALUE_OK
end

--支付宝现金-31-1-3
function OnUseItemEvent_26(uid,thisid)
	s_requestZFBAccount(uid,thisid)
	return VALUE_OK
end

--支付宝现金-41-1-3
function OnUseItemEvent_27(uid,thisid)
	s_requestZFBAccount(uid,thisid)
	return VALUE_OK
end

--支付宝现金-51-1-3
function OnUseItemEvent_28(uid,thisid)
	s_requestZFBAccount(uid,thisid)
	return VALUE_OK
end

--支付宝现金-61-10-50
function OnUseItemEvent_29(uid,thisid,zfbname)
	s_requestZFBAccount(uid,thisid)
	return VALUE_OK
end

--支付宝现金-71-10-50
function OnUseItemEvent_30(uid,thisid)
	s_requestZFBAccount(uid,thisid)
	return VALUE_OK
end

--支付宝现金-81-10-50
function OnUseItemEvent_31(uid,thisid)
	s_requestZFBAccount(uid,thisid)
	return VALUE_OK
end

--支付宝现金-91-10-50
function OnUseItemEvent_32(uid,thisid)
	s_requestZFBAccount(uid,thisid)
	return VALUE_OK
end

--支付宝现金-101-10-50
function OnUseItemEvent_33(uid,thisid)
	s_requestZFBAccount(uid,thisid)
	return VALUE_OK
end

--支付宝获得钱的接口
function OnUseItemZFB(uid,baseid,thisid,zfbname)
	local zfbtype = s_getItemValue(uid,thisid,Item_Attribute_ZFB_Type)
	local zfbnum = s_getItemValue(uid,thisid,Item_Attribute_ZFB_Num)
	if zfbnum == 0 then
		zfbnum = 1
	end
	if zfbnum == 10 then
		s_weibo(uid,1,"轻松获得兵王2发的ZFB现金 http://bw.zqgame.com/a/bwfl/index.html",thisid)
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_topupZFBCard(uid,zfbname,zfbtype,zfbnum)
	--s_sysInfo(uid,"支付宝现金充值提交已经成功，会有一定时间延迟，请耐心等待",ChatPos_MsgBox)
	if baseid == 23 then
		s_addItem(uid,24,0,1,0,"1-1,192-71,193-10","支付宝真钞卡30-61级")
	elseif baseid == 24 then
		s_addItem(uid,25,0,1,0,"1-1,192-81,193-10","支付宝真钞卡30-71级")
	elseif baseid == 26 then
		s_addItem(uid,27,0,1,0,"1-1,192-41,193-1","支付宝真钞卡3-31级")
	elseif baseid == 27 then
		s_addItem(uid,28,0,1,0,"1-1,192-51,193-1","支付宝真钞卡3-41级")
	elseif baseid == 29 then
		s_addItem(uid,30,0,1,0,"1-1,192-71,193-10","支付宝真钞卡30-61级")
	elseif baseid == 30 then
		s_addItem(uid,31,0,1,0,"1-1,192-81,193-10","支付宝真钞卡30-71级")
	elseif baseid == 31 then
		s_addItem(uid,32,0,1,0,"1-1,192-91,193-10","支付宝真钞卡30-81级")
	elseif baseid == 32 then
		s_addItem(uid,33,0,1,0,"1-1,192-101,193-10","支付宝真钞卡30-91级")
	end
end
