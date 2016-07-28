--超级宠物封印球
function OnUseItemEvent_43076(uid,thisid,demonid)
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
	s_setEnemy(demonid,SCENE_ENTRY_PLAYER,uid)

	s_addbuff(SCENE_ENTRY_NPC,demonid,20004,1,5)
	local func = string.format("CatchDemonWithSuperItem($1,$2,%u,%u)",demonid,0)
	s_showbar(uid,5000,func,UninterruptActionType_DEMON,2,0,1)
	s_setValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_DEMON_USER,uid)
	if uid == lastuser then
		s_setValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_DEMON_TIMES,times+1)
	else
		s_setValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_DEMON_TIMES,1)
	end
	return VALUE_OK
end

function CatchDemonWithSuperItem(uid,isbreak,demonid)
	local baseid = s_getValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_BASE_ID)
	if isbreak ~= nil and isbreak ~= 0 then
		s_removebuff(SCENE_ENTRY_NPC,demonid,20004)
		s_sysInfo(uid,"很遗憾，驯化失败了！",ChatPos_Sys + ChatPos_Important)
		ShowUserSfx(uid,30)
		return
	end
	local hp = s_getValue(SCENE_ENTRY_NPC,demonid,VALUE_TYPE_HP)
	if hp == 0 then
		return
	end
	s_addItem(uid,baseid,0,1,0,"","驯化")
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
