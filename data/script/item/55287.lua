--中秋礼品卡
function OnUseItemEvent_55287(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level <= 60 then
		s_addItem(uid,27108,3,40,0,"1-1","升级宝石")
	else
		s_addItem(uid,27108,3,40,0,"1-1","升级宝石")
	end
	s_addItem(uid,55286,3,6,0,"1-0","足球")
	s_addItem(uid,6,3,6,0,"1-1","100绑银券")
	s_addItem(uid,52029,3,1,0,"1-1,3-86400","大白兔时装")
	return VALUE_OK
end
