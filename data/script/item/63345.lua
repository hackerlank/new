--宝石鉴定盒
function OnUseItemEvent_63345(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63345") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,10000)
	if rand <= 3000 then
		s_addItem(uid,55048,3,1,0,"1-1","神之水滴")
	elseif rand <= 6000 then
		s_addItem(uid,27201,3,1,0,"1-1","红宝石")
	elseif rand <= 7000 then
		s_addItem(uid,27211,3,1,0,"1-1","蓝宝石")
	elseif rand <= 7500 then
		s_addItem(uid,27221,3,1,0,"1-1","黄宝石")
	elseif rand <= 8500 then
		s_addItem(uid,27231,3,1,0,"1-1","绿宝石")
	elseif rand <= 10000 then
		s_addItem(uid,27241,3,1,0,"1-1","紫宝石")
	end
	return VALUE_OK
end
