--20元点卡
function OnUseItemEvent_29142(uid,thisid)
	s_weibo(uid,1,"轻松获得兵王2送的话费 http://bw.zqgame.com/a/hf/",thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level >= 71 then
		s_topupMobileCard(uid,thisid,2000,71)
	end
	return VALUE_OK
end


