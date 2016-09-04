--玉髓礼盒
function OnUseItemEvent_55217(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"玉髓礼盒") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,100)
	if rand <= 25 then
		s_addItem(uid,27401,0,1,0,"1-1","玉髓礼盒")--浮云玉髓
	elseif rand <= 50 then
		s_addItem(uid,27411,0,1,0,"1-1","玉髓礼盒")--绝影玉髓
	elseif rand <= 75 then
		s_addItem(uid,27421,0,1,0,"1-1","玉髓礼盒")--追风玉髓
	else
		s_addItem(uid,27431,0,1,0,"1-1","玉髓礼盒")--踏雪玉髓
	end
	return VALUE_OK
end
