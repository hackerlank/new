--恶魔奖章
function OnUseItemEvent_55094(uid,thisid,targetid)
	local demonid = s_getcurdemon(uid)
	if demonid == 0 or demonid == nil then
		s_sysInfo(uid,"请先召唤出宠物")
		return
	end
	s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55094")
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 5 * (50+0.1*level^2.2)
	s_refreshdemonexp(uid,exp)
	return VALUE_OK
end
