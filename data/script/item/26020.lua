function OnUseItemEvent_26020(uid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP)
	if hp ~= 0 then
		s_sysInfo(uid,"非死亡状态下不能使用")
		return VALUE_FAIL
	end
	--检测副本是否允许使用
	if DealReliveItem(uid) ~= VALUE_OK then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_26020") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_relive(SCENE_ENTRY_PLAYER,uid)
	return VALUE_OK
end

function DealReliveItem(uid)
	--血战到底副本不可使用
	local stype = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_TYPE)
	if stype == CopySceneType_FlagBattle then
		s_sysInfo(uid,"血战到底不能使用")
		return VALUE_FAIL
	elseif stype == CopySceneType_TeamFight then
		s_sysInfo(uid,"组队争夺战不能使用")
		return VALUE_FAIL
	elseif stype >= CopySceneType_Challenge and stype <= CopySceneType_Challenge5 then
		s_sysInfo(uid,"无双争霸赛不能使用")
		return VALUE_FAIL
	end
	return VALUE_OK
end
