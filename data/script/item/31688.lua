--随机卷轴
function OnUseItemEvent_31688(uid,thisid,targetid)
	local stype = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_TYPE)
	if stype ~= CopySceneType_TeamFight then
		s_sysInfo(uid,"随机卷轴必须在组队争夺战中使用！")
		return VALUE_FAIL
	end
	--使用道具
	if s_deleteItemByThisID(uid,thisid,1,"随机卷轴使用") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,4)
	if rand == 1 then
		s_goto(SCENE_ENTRY_PLAYER,uid,98,69)
	elseif rand == 2 then
		s_goto(SCENE_ENTRY_PLAYER,uid,343,62)
	elseif rand == 3 then
		s_goto(SCENE_ENTRY_PLAYER,uid,194,192)
	else
		s_goto(SCENE_ENTRY_PLAYER,uid,380,209)
	end
	return VALUE_OK
end
