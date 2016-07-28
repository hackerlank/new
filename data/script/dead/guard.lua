--前线速递补给车
function OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2)
	local info = rawget(_G,"RoleTaskInfo" .. taskid)
	if info == nil then
		s_debug("镖车任务脚本有问题:"..taskid)
		return
	end
	local target = rawget(info,"GetTargetNpc")
	if target == nil then
		s_debug("镖车任务脚本有问题:"..taskid)
		return
	end
	local endnpc = target(info,master)
	local npc = s_summon(SCENE_ENTRY_NPC,guardid,61071)
	if npc == 0 or npc == nil then
		s_debug("召唤破损的镖车失败:"..master)
		return
	end
	if s_setGuardValue(SCENE_ENTRY_NPC,npc,master,taskid,endnpc,math.floor(p1 * 0.2),p2) ~= VALUE_OK then
		return
	end

	--掉落货物和银锭
	local scene = s_getValue(SCENE_ENTRY_NPC,guardid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_NPC,guardid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_NPC,guardid,VALUE_TYPE_POSY)
	local name = s_getValue(SCENE_ENTRY_PLAYER,master,VALUE_TYPE_NAME)
	if name == nil then name = "" end
	local color = s_getTaskValue(master,taskid,TaskValue_Color)
	if color == nil then color = TaskColor_White end
	local itemid = s_addSceneItem(31488,1,scene,posx,posy,0,"7-" .. color .. ",650-" .. master .. ",5004-" .. name .. ",652-" .. math.floor(p2 * 0.2),master,4)
	itemid = s_addSceneItem(31488,1,scene,posx,posy,0,"7-" .. color .. ",650-" .. master .. ",5004-" .. name .. ",652-" .. math.floor(p2 * 0.2),master,4)
	itemid = s_addSceneItem(31489,1,scene,posx,posy,0, "650-" .. master .. ",5004-" .. name .. ",651-" .. math.floor(p1 * 0.4),master,4)
	itemid = s_addSceneItem(31489,1,scene,posx,posy,0, "650-" .. master .. ",5004-" .. name .. ",651-" .. math.floor(p1 * 0.4),master,4)

	s_addTaskVar(master,taskid,11,1)
	--检查是否给凶手储色胶囊
	local map = s_getValue(SCENE_ENTRY_PLAYER,murder,VALUE_TYPE_CURRENT_MAP)
	local itemid = 0;local rand = math.random(1,100);
	if map == 7 then
		if color == TaskColor_Yellow then
			if rand <= 1 then
				itemid = 31122
			elseif rand <= 31 then
				itemid = 31121
			end
		elseif color == TaskColor_Green then
			if rand <= 1 then
				itemid = 31123
			elseif rand <= 11 then
				itemid = 31122
			elseif rand <= 61 then
				itemid = 31121
			end
		elseif color == TaskColor_Purple then
			if rand <= 10 then
				itemid = 31123
			elseif rand <= 40 then
				itemid = 31122
			else
				itemid = 31121
			end
		end
	end
	if itemid > 0 then
		s_addItem(murder,itemid,0,1,0,"1-1","劫车所得")
	end

	--佣兵公会赔偿
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,master,VALUE_TYPE_HOMELAND)
	if s_getEscort(master) ~= 0 then
		s_sysMail(master,"佣兵公会赔偿您的损失",p1)
		if s_getEscort(master) == s_getCountryVar(homeland,1,79) then
			s_addCountryVar(homeland,1,82,s_getCountryVar(homeland,1,82)+1)
			s_addCountryVar(homeland,1,80,s_getCountryVar(homeland,1,80)-p1)
		elseif s_getEscort(master) == s_getCountryVar(homeland,1,83) then
			s_addCountryVar(homeland,1,86,s_getCountryVar(homeland,1,86)+1)
			s_addCountryVar(homeland,1,84,s_getCountryVar(homeland,1,84)-p1)
		end
	end
	--清除数据
	s_gardDead(itemid,master,murder)
	local murdercountry = s_getValue(SCENE_ENTRY_PLAYER,murder,VALUE_TYPE_HOMELAND)
	if s_getCountryVar(murdercountry,12,13) < COUNTRY_ACTIVITY_33812 then
		s_addCountryVar(murdercountry,12,13,s_getCountryVar(murdercountry,12,13)+1)
	end
	if s_getVar(murder,130,25) == 0 then
		s_addVar(murder,130,25,1)
		s_addVar(murder,130,200,s_getVar(murder,130,200)+1)
		s_debugUser(murder,"国家活力点，袭杀帝国速递车，参与度：1")
	end
	local list = s_getNineEntry(SCENE_ENTRY_NPC,guardid,30)
	for i = 1, table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER and
			s_getValue(list[i],list[i+1],VALUE_TYPE_HOMELAND) == murdercountry then
			if s_getVar(list[i+1],130,25) == 0 then
				s_setVar(list[i+1],130,25,1)
				s_setVar(list[i+1],130,200,s_getVar(list[i+1],130,200)+1)
				s_debugUser(list[i+1],"国家活力点，袭杀帝国速递车，参与度：1")
			end
		end
	end
end

function OnGuardDeadEvent_61001(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61002(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61003(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61004(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61005(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61006(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61007(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61008(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61009(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61010(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61011(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61012(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61013(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61014(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61015(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61016(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61017(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61018(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61019(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61020(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61021(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61022(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61023(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61024(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61025(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61026(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61027(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61028(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61029(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61030(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61031(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61032(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61033(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61034(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61035(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61036(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61037(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61038(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61039(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61040(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61041(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61042(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61043(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61044(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61045(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61046(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61047(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61048(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61049(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61050(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61051(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61052(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61053(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61054(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61055(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61056(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61057(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61058(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61059(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61060(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61061(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61062(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61063(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61064(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61065(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61066(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61067(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61068(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61069(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_61070(guardid,master,murder,taskid,p1,p2) OnGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end

--公主特使
function OnLadyDead_DealWork(guardid,master,murder,taskid,p1,p2)
	local info = rawget(_G,"RoleTaskInfo" .. taskid)
	if info == nil then
		s_debug("要人警护任务脚本有问题:"..taskid)
		return
	end
	local target = rawget(info,"GetTargetNpc")
	if target == nil then
		s_debug("要人警护脚本有问题:"..taskid)
		return
	end
	local endnpc = target(info,master)
	local npc = s_summon(SCENE_ENTRY_NPC,guardid,60976)
	if npc == 0 or npc == nil then
		s_debug("召唤破损的公主特使失败:"..master)
		return
	end
	local corps = s_getValue(SCENE_ENTRY_NPC,guardid,VALUE_TYPE_NPC_CORPS)
	s_setValue(SCENE_ENTRY_NPC, npc, VALUE_TYPE_NPC_CORPS,corps)
	if s_setGuardValue(SCENE_ENTRY_NPC,npc,master,taskid,endnpc) ~= VALUE_OK then
		return
	end
	local color = s_getTaskValue(master,taskid,TaskValue_Color)
	if color == nil then color = TaskColor_White end
	--掉落货物和银锭
	local scene = s_getValue(SCENE_ENTRY_NPC,guardid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_NPC,guardid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_NPC,guardid,VALUE_TYPE_POSY)
	local name = s_getValue(SCENE_ENTRY_PLAYER,master,VALUE_TYPE_NAME)
	local level = s_getValue(SCENE_ENTRY_PLAYER,master,VALUE_TYPE_LEVEL)
	if name == nil then name = "" end
	local color_rate = {1,1.5,2,3,6}
	for i=1,10 do
		local itemid = s_addSceneItem(55056,1,scene,posx,posy,0,"1-1,7-"..color..",650-" .. master .. ",5004-" .. name..",652-"..math.floor(30*(50+0.1*level^2.2)*color_rate[color+1]))
	end
	for i=1,10 do
		local itemid = s_addSceneItem(5,10,scene,posx,posy,0,"1-1,650-" .. master .. ",5004-" .. name)
	end
	s_addTaskVar(master,taskid,11,1)
	local mcorps = s_getCorpsId(murder)
	if mcorps ~= nil and mcorps ~= 0 then
		if s_getVar(murder,130,9) == 0 then
			s_setVar(murder,130,9,1)
			s_setVar(murder,130,100,s_getVar(murder,130,100)+1)
			s_debugUser(murder,"团活力，袭击要人警护，参与度：1")
		end
		if s_getCorpsVar(mcorps,1,51) < CORPS_ACTIVITY_33708 then
			s_addCorpsVar(mcorps,1,51,s_getCorpsVar(mcorps,1,51)+1)
		end
		local list = s_getNineEntry(SCENE_ENTRY_NPC,guardid,30)
		for i = 1, table.getn(list), 2 do
			if list[i] == SCENE_ENTRY_PLAYER and mcorps == s_getCorpsId(list[i+1]) then
				if s_getVar(list[i+1],130,9) == 0 then
					s_setVar(list[i+1],130,9,1)
					s_setVar(list[i+1],130,100,s_getVar(list[i+1],130,100)+1)
					s_debugUser(list[i+1],"团活力，袭击要人警护，参与度：1")
				end
			end
		end
	end
end

function OnGuardDeadEvent_60971(guardid,master,murder,taskid,p1,p2) OnLadyDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_60972(guardid,master,murder,taskid,p1,p2) OnLadyDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_60973(guardid,master,murder,taskid,p1,p2) OnLadyDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_60974(guardid,master,murder,taskid,p1,p2) OnLadyDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_60975(guardid,master,murder,taskid,p1,p2) OnLadyDead_DealWork(guardid,master,murder,taskid,p1,p2) end

--侠盗罗宾
function OnRobinDeadEvent_60996(guardid,master,murder,taskid)
	local masterhomeland = s_getValue(SCENE_ENTRY_PLAYER,master,VALUE_TYPE_HOMELAND)
	if masterhomeland == 0 or masterhomeland == nil then
		s_debug("获取召唤侠盗罗宾的玩家所属国家失败")
		s_worldInfo("无法获取罗宾归属")
		return
	end
	local robinGetMoney = s_getCountryVar(masterhomeland,1,117)
	local curCountry = s_getValue(SCENE_ENTRY_PLAYER,murder,VALUE_TYPE_CURRENT_COUNTRY)
	if curCountry == nil or curCountry == 0 then
		s_worldInfo("无法获取当前npc当前所在国家")
		return
	end
	local curCountryLostMoney = s_getCountryVar(curCountry,1,118)
	s_worldInfo("奇袭" .. s_getCountryName(curCountry) .."的" .. s_getCountryName(masterhomeland) .."侠盗罗宾被击伤俘获，他运送的" .. robinGetMoney .. "银币被收回了" .. s_getCountryName(curCountry) .."金库",ChatPos_Important + ChatPos_Sys)

	s_addCountryVar(curCountry,1,118,curCountryLostMoney - robinGetMoney)
	s_addCountryVar(masterhomeland,1,117,0)

	local exp = 0
	local list = s_getNineEntry(SCENE_ENTRY_NPC,guardid,30)
	for i = 1, table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER then
			if s_getValue(SCENE_ENTRY_PLAYER,list[i+1],VALUE_TYPE_HOMELAND) == masterhomeland then
				exp = 100 * (50 + 0.1 * (s_getValue(SCENE_ENTRY_PLAYER,list[i+1], VALUE_TYPE_LEVEL) ^ 2.2))
			elseif s_getValue(SCENE_ENTRY_PLAYER,list[i+1],VALUE_TYPE_HOMELAND) == curCountry then
				exp = 200 * (50 + 0.1 * (s_getValue(SCENE_ENTRY_PLAYER,list[i+1], VALUE_TYPE_LEVEL) ^ 2.2))
			end
			s_refreshExp(list[i+1],exp,ExpType_OptionalTask,0)
		end
	end

	local curCountryPlayerList = s_getCountryEntry(curCountry)
	local msg = "本次奇袭，虽然侠盗罗宾被逮捕了，但" .. s_getCountryName(curCountry) .. "还是损失了" .. s_getCountryVar(curCountry,1,118) .. "银币（次日凌晨1点结算）。"
	local buttons = "确定|3|Enter|取消|4|Esc|稍后|5|Esc"
	local fun = "OnConfirmMsg($1,$2)"

	for i = 1, table.getn(curCountryPlayerList) do
		s_registerMsgBox(curCountryPlayerList[i],func,buttons,msg,0,0,eAreaType_Right,eHideButtonType_GoldAttack,1)
	end

	local enemyCountryPlayerList = s_getCountryEntry(masterhomeland)
	for i = 1, table.getn(enemyCountryPlayerList) do
		s_registerMsgBox(enemyCountryPlayerList[i],func,buttons,msg,0,0,eAreaType_Right,eHideButtonType_GoldAttack,1)
	end
	--回收金库npc
	s_setVar(master,101,55,0)
	s_addCountryVar(curCountry,1,120,0)
	s_addCountryVar(curCountry,1,121,0)
	s_delTask(master,taskid,1)
end

function OnGoldAttackMsg(uid,ret)
	if ret == Button_Yes then
		return VALUE_OK
	end
end

RegisterMyNpcDeadEvent(60996,"OnRobinDeadEvent_60996($1,$2,$3,$4)")

--帝都押运车
function OnDiDuGuardDead_DealWork(guardid,master,murder,taskid,p1,p2)
	local info = rawget(_G,"RoleTaskInfo" .. taskid)
	if info == nil then
		s_debug("帝都押运任务脚本有问题:"..taskid)
		return
	end
	local target = rawget(info,"GetTargetNpc")
	if target == nil then
		s_debug("帝都押运任务脚本有问题:"..taskid)
		return
	end
	local endnpc = target(info,master)
	local npc = s_summon(SCENE_ENTRY_NPC,guardid,56024)
	if npc == nil or npc == 0 then
		s_debug("召唤破损的帝都押运车失败:"..master)
		return
	end
	if s_setGuardValue(SCENE_ENTRY_NPC,npc,master,taskid,endnpc,math.floor(p1 * 0.2),p2) ~= VALUE_OK then
		return
	end

	--掉落多堆不绑定的10银币券(击败者同队可拾取)
	local cid = s_getValue(SCENE_ENTRY_NPC,guardid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_NPC,guardid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_NPC,guardid,VALUE_TYPE_POSY)

	local totalMoney = math.floor(s_getTaskVar(master,30421,18) * 0.8)
	local num = math.floor(totalMoney / 100)
	for i = 1, num do
		local itemid = s_addSceneItem(5,10,cid,posx,posy,0,"1-1")
		s_setSceneItemValue(itemid,2,4)
		s_setSceneItemValue(itemid,3,owner)
		s_refreshSceneItem(itemid,2);
	end

	--11 补给车是否被劫
	s_addTaskVar(master,taskid,11,1)

	local mastername = s_getValue(SCENE_ENTRY_PLAYER,master,VALUE_TYPE_NAME)
	local murdername = s_getValue(SCENE_ENTRY_PLAYER,murder,VALUE_TYPE_NAME)
	if master ~= nil and murder ~= nil then
		local msg = murdername .. "袭击了" .. mastername .. "的押运车，劫获大量财物！"
		s_worldInfo(msg)
	end

	--清除数据
	s_gardDead(itemid,master,murder)
end

function OnGuardDeadEvent_56019(guardid,master,murder,taskid,p1,p2) return OnDiDuGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_56020(guardid,master,murder,taskid,p1,p2) return OnDiDuGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_56021(guardid,master,murder,taskid,p1,p2) return OnDiDuGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_56022(guardid,master,murder,taskid,p1,p2) return OnDiDuGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
function OnGuardDeadEvent_56023(guardid,master,murder,taskid,p1,p2) return OnDiDuGuardDead_DealWork(guardid,master,murder,taskid,p1,p2) end
