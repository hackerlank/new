-- 定时炸弹
function OnUseItemEvent_29055(uid,thisid,targetid)
	local corps = s_getCorpsId(uid)
	if corps == 0 then return end
	local step = s_getEvent(Relation_Corps,corps,CpEv_JunXun)
	if step ~= EventStep_Run then
		s_sysInfo(uid, "请在团突袭时间的目标团基地中使用")
		return
	end
	if s_getCorpsVar(corps, 1, 23) == 2 then
		s_sysInfo(uid, "本次任务定时炸弹已经放置")
		return
	end
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local stype = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_TYPE)
	if stype ~= CopySceneType_CorpsBase then
		s_sysInfo(uid, "请在目标团基地中使用")
		return
	end
	local sowner = s_getSceneVar(sid,0,1)
	local enemy = s_getCorpsField(corps, CorpVar_Enemy)
	if enemy == 0 or enemy ~= sowner then
		s_sysInfo(uid, "请在目标团基地中使用")
		return
	end
	local x = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local y = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
	if math.abs(x-125) > 5 or math.abs(y-120) > 5 then
		s_sysInfo(uid, "定时炸弹安置位置错误，请在目标团基地的125,120安置定时炸弹", ChatPos_MsgBox)
		return
	end
	local callback = "UseItem_29055_OK($1,$2," .. corps .. "," .. enemy .. "," .. thisid .. ")"
	s_showbar(uid,15000,callback,UninterruptActionType_TASK,1,0,1)
end

function UseItem_29055_OK(uid, tbreak, corps, enemy, thisid)
	if tbreak == nil then tbreak = 0 end
	if tbreak == 1 then return end
	if s_deleteItemByThisID(uid,thisid,1,"UseItem_29055_OK") == VALUE_OK then
		local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
		local x = 125
		local y = 120
		s_addEvent(Relation_Corps, corps, 1008, 0, 600)
		s_addEvent(Relation_Corps, enemy, 1009, 0, 600)
		local cname = s_getCorpsField(corps, CorpVar_Name)
		local ename = s_getCorpsField(enemy, CorpVar_Name)
		s_corpsInfo(corps, "本团团长在".. ename .."团放置了一颗定时炸弹，10分钟后爆炸，成功起爆将直接造成" .. ename .. "团大量团资金损失，同时本团参与团突袭的成员将获得额外经验奖励")
		local pos = "(" .. x .. "," .. y .. ")"
		local clevel = s_getCorpsField(enemy, CorpVar_Level)
		local allmoney = {600, 600, 800, 1100, 1500, 2000, 2600, 3400, 4200, 5000}
		local money = allmoney[clevel] * 0.25
		s_corpsInfo(enemy, cname .. "团在本团" .. pos .. "位置放置了一颗定时炸弹，10分钟后爆炸，成功起爆将直接造成本团" ..money .."团资金损失，在起爆前击破该定时炸弹本团成员将获得额外经验奖励")
		local npcid = s_sysSummon(60161, sid, x, y,0,1)
		s_addCorpsVar(corps, 1, 23, 2)
		s_addCorpsVar(enemy, 1, 26, corps)
		s_addCorpsVar(enemy, 1, 27, x)
		s_addCorpsVar(enemy, 1, 28, y)
		s_addCorpsVar(enemy, 1, 29, money)
	end
end
