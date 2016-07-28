--我是道具2号
function OnUseItemEvent_63384(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"我是道具2号") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,100)
	if rand <= 20 then
		s_addItem(uid,27201,0,1,0,"1-1","我是道具2号")--红宝石(1级)
	elseif rand <= 40 then
		s_addItem(uid,27211,0,1,0,"1-1","我是道具2号")--蓝宝石(1级)
	elseif rand <= 60 then
		s_addItem(uid,27221,0,1,0,"1-1","我是道具2号")--黄宝石(1级)
	elseif rand <= 80 then
		s_addItem(uid,27231,0,1,0,"1-1","我是道具2号")--绿宝石(1级)
	else
		s_addItem(uid,27241,0,1,0,"1-1","我是道具2号")--紫宝石(1级)
	end
	return VALUE_OK
end
