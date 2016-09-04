--宠物封印球
function OnUseItemEvent_43075(uid,thisid,demonid)
	if GetEntryPosition(SCENE_ENTRY_PLAYER,uid,SCENE_ENTRY_NPC,demonid) > 5 then
		s_sysInfo(uid,"距离目标太远")
		return VALUE_FAIL
	end
	if s_checkCatchDemon(uid,demonid) ~= VALUE_OK then
		return VALUE_FAIL
	end
	if s_getbufflevel(SCENE_ENTRY_NPC,demonid,20004) ~= 0 then
		s_sysInfo(uid,"该宠物正处于被捕捉中，请稍后再试")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"驯化宠物扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local maxhp = s_getValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_MAXHP)
	s_subValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_HP,maxhp/11)
	s_setEnemy(demonid,SCENE_ENTRY_PLAYER,uid)
	--判断成功与否
	local baseid = s_getValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_BASE_ID)
	local FAIL_RATE = 7000

	--在神秘储藏室不会失败
	local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	if map == 100 then
		FAIL_RATE = 0
	end
	--连续驯化10次的必然成功
	local lastuser = s_getValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_DEMON_USER)
	local times = s_getValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_DEMON_TIMES)
	if lastuser == uid and times == 9 then
		FAIL_RATE = 0
	end
	local rand = math.random(1,10000)
	local bartype = 2
	local fail = 0
	if rand < FAIL_RATE then
		bartype = 3
		fail = 1
	end
	s_addbuff(SCENE_ENTRY_NPC,demonid,20004,1,5)
	local func = string.format("CatchDemonWithItem($1,$2,%u,%u)",demonid,fail)
	s_showbar(uid,5000,func,UninterruptActionType_DEMON,bartype,0,1)
	s_setValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_DEMON_USER,uid)
	if uid == lastuser then
		s_setValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_DEMON_TIMES,times+1)
	else
		s_setValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_DEMON_TIMES,1)
	end
	return VALUE_OK
end

function CatchDemonWithItem(uid,isbreak,demonid,fail)
	local baseid = s_getValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_BASE_ID)
	if baseid == nil or baseid == 0 then
		s_sysInfo(uid,"很遗憾，宠物死亡，驯化失败了！",ChatPos_Sys + ChatPos_Important)
		ShowUserSfx(uid,30)
		return
	end
	if isbreak ~= nil and isbreak ~= 0 then
		s_removebuff(SCENE_ENTRY_NPC,demonid,20004)
		s_sysInfo(uid,"很遗憾，驯化失败了！",ChatPos_Sys + ChatPos_Important)
		ShowUserSfx(uid,30)
		return
	end
	if fail == 1 then
		s_removebuff(SCENE_ENTRY_NPC,demonid,20004)
		s_sysInfo(uid,"很遗憾，驯化失败了！",ChatPos_Sys + ChatPos_Important)
		ShowUserSfx(uid,30)
		return
	end
	local hp = s_getValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_MAXHP)
	if hp >= maxhp or hp <= 1 then
		s_sysInfo(uid,"很遗憾，宠物死亡，驯化失败了！",ChatPos_Sys + ChatPos_Important)
		ShowUserSfx(uid,30)
		return
	end
	local demonthisid = s_addItem(uid,baseid,0,1,0,"","驯化")
	--快讯
	if demonthisid ~= nil then
		quality = s_getItemValue(uid,demonthisid,Item_Attribute_Quality)
		if quality ~= nil and quality == EquipQuality_Purple then
			s_worldEvent("<p><q buttonid=6005 ownerid=" .. uid .. ">" .. s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME) .. "</q><n color=GXColorYellow>捕获了</n><shell obj=" .. demonthisid .. " ctype=" .. quality .. " oid=" .. uid .. ">" .. s_getItemBaseValue(baseid,5) .. "</shell></p>");
		end
	end

	--播放动画
	ShowUserSfx(uid,29)
	s_killnpc(demonid,1)
	s_setValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_DEMON_USER,0)
	s_setValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_DEMON_TIMES,0)
	s_sysInfo(uid,"恭喜，驯化成功！",ChatPos_Sys + ChatPos_Important)

	--执行注册驯化宠物成功事件
	local funs = rawget(_G,"GetDemonEvent")
	if funs == nil or table.getn(funs) < 1 then return end
	for i=1,table.getn(funs) do
		if type(funs[i]) == "function" then
			funs[i](uid,demonid,baseid)
		elseif type(funs[i]) == "string" then
			local fun = StringToFunction(funs[i])
			if fun == nil then
				s_debug("驯化宠物回调函数有问题:"..funs[i])
				return
			end
			fun(uid,demonid,baseid)
		end
	end
end
