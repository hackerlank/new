--神引之剑
function OnUseItemEvent_31232(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 70 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	local quality = s_getVar(uid, 116, 7)
	if quality == 0 then
		s_sysInfo(uid,"您未参加英灵引领活动，不能使用此道具！")
		return VALUE_FAIL
	elseif quality > 1 then
		s_sysInfo(uid,"您已完成英灵引领活动，不能重复使用此道具！")
		return VALUE_FAIL
	end
	local info = rawget(_G,"NpcMenuInfo60583")
	-- 坐标记录到道具上
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	if mapid ~= 8 then
		s_sysInfo(uid,"女武神似乎指引向中立区，先到达那里再看看吧！",ChatPos_MsgBox)
		return VALUE_FAIL
	end
	-- 在有效区域内使用道具，5秒进度条
	local posx = s_getItemValue(uid,thisid,Item_Attribute_PosX)
	local posy = s_getItemValue(uid,thisid,Item_Attribute_PosY)
	if posx ~= 0 and posy ~= 0 then
		local x = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
		local y = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
		if math.abs(posx-x) <= 5 and math.abs(posy-y) <= 5 then
			s_sfxMagicPlay(uid,44)
			local callback = "FindTreasurePos($1,"..thisid..")"
			s_showbar(uid,5000,callback,0,1)
		end
		s_noticeTreasurePos(uid, 8, posx, posy)
		return VALUE_OK
	end
	local rand = math.random(1,90)
	posx = info.postable[rand][1]
	posy = info.postable[rand][2]
	s_setItemValue(uid,thisid,Item_Attribute_PosX,posx)
	s_setItemValue(uid,thisid,Item_Attribute_PosY,posy)
	s_noticeTreasurePos(uid, 8, posx, posy)
	return VALUE_OK
end

function FindTreasurePos(uid, thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local rand = math.random(1,100)
	--判断是不是第一次挖宝
	local totaltimes = s_getVar(uid,116,8)
	if totaltimes == 0 then
		rand = 100
	end
	local failtimes = s_getVar(uid,116,9)
	if failtimes >= 2 then
		s_addVar(uid,116,9,0)
		rand = 100
	end
	if rand <= 12 then
		s_sysInfo(uid,"糟糕，来晚了，英灵已经被巨人族杀死了！请再使用【神引之剑】寻找其他英灵吧！",ChatPos_Important)
		s_addVar(uid,116,9,failtimes+1)
	elseif rand <= 22 then
		s_sysInfo(uid,"不好，遭遇到巨人族的埋伏了！击倒它们后再使用【神引之剑】寻找其他英灵吧！",ChatPos_Important)
		local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,22920)
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*60*1000)
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,22920)
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*60*1000)
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,22920)
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*60*1000)
		npcid = s_summon(SCENE_ENTRY_PLAYER,uid,22920)
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*60*1000)
		s_addVar(uid,116,9,failtimes+1)
	elseif rand <= 27 then
		s_sysInfo(uid,"可恶，英灵竟然被巨人族同化了，向你发起了攻击！击倒它再使用【神引之剑】寻找其他英灵吧！",ChatPos_Important)
		local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,22921)
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*60*1000)
		s_addVar(uid,116,9,failtimes+1)
	elseif rand <= 29 then
		s_sysInfo(uid,"一声巨响……招灵仪式竟然惊醒了一台古代的战争魔甲！驾驶魔甲击倒它后再使用【神引之剑】寻找其他英灵吧！",ChatPos_Sys+ChatPos_Important)
		if level >= 70 and level <= 79 then
			local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,22922)
			s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*60*1000)
		elseif level >= 80 and level <= 89 then
			local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,22924)
			s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*60*1000)
		elseif level >= 90 and level <= 99 then
			local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,22925)
			s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*60*1000)
		end
		s_addVar(uid,116,9,failtimes+1)
		--[[elseif rand <= 30 then
		s_sysInfo(uid,"虽然没有发现英灵，倒是不知从哪里跑来一只受惊吓的宠物！捕捉它后再使用【神引之剑】寻找其他英灵吧！",ChatPos_Important)
		local rand = math.random(1,5)
		local demon = {41121,41121,41121,41122,41122}
		local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,demon[rand])
		s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*60*1000)
		s_addVar(uid,116,9,failtimes+1)]]
	else
		-- 成功
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31232") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_sysInfo(uid,"招灵仪式后，成功引导了一个英灵，将它领引回女武神处吧！",ChatPos_Important)
		local cid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
		local x = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
		local y = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
		for i=1,10 do
			local itemid1 = s_addSceneItem(9,1,cid,x,y,0,"1-1")
			if itemid1 ~= 0 and itemid1 ~= nil then
				s_setSceneItemValue(itemid1,2,1)
				s_setSceneItemValue(itemid1,3,uid)
				s_setSceneItemValue(itemid1,4,3600)
			end
		end
		for i=1,5 do
			local itemid2 = s_addSceneItem(23040,1,cid,x,y,0,"1-1")
			if itemid2 ~= 0 and itemid2 ~= nil then
				s_setSceneItemValue(itemid2,2,1)
				s_setSceneItemValue(itemid2,3,uid)
				s_setSceneItemValue(itemid2,4,3600)
			end
		end
		for i=1,5 do
			local itemid3 = s_addSceneItem(23043,1,cid,x,y,0,"1-1")
			if itemid3 ~= 0 and itemid3 ~= nil then
				s_setSceneItemValue(itemid3,2,1)
				s_setSceneItemValue(itemid3,3,uid)
				s_setSceneItemValue(itemid3,4,3600)
			end
		end
		local item = {{31233,20115,46},{31234,20116,47},{31235,20117,48},{31236,20118,49}}
		local randitem = math.random(1,4)
		local randbuff = math.random(1,4)
		local itembaseid = item[randitem][1]
		local buffid = item[randbuff][2]
		local sfxid = item[randbuff][3]
		local itembase = s_addSceneItem(itembaseid,1,cid,x,y,0,"1-1")
		if itembase ~= 0 and itembase ~= nil then
			s_setSceneItemValue(itembase,2,1)
			s_setSceneItemValue(itembase,3,uid)
			s_setSceneItemValue(itembase,4,3600)
			s_addbuff(SCENE_ENTRY_PLAYER,uid,buffid,1,24*60*60)
			s_addVar(uid,116,7,buffid)
			--特效通知客户端
			s_sfxMagicPlay(uid,sfxid)
			local randAddition = math.random(1,100)
			if randAddition <= 33 then
				local randAdditionItem = math.random(1,4)
				local additionItem = item[randAdditionItem][1]
				local additionItemBase = s_addSceneItem(additionItem,1,cid,x,y,0,"1-1")
				if additionItemBase ~= 0 and additionItemBase ~= nil then
					s_setSceneItemValue(additionItemBase,2,1)
					s_setSceneItemValue(additionItemBase,3,uid)
					s_setSceneItemValue(additionItemBase,4,3600)
				end
			end
		end
	end
	s_setItemValue(uid,thisid,Item_Attribute_PosX,0)
	s_setItemValue(uid,thisid,Item_Attribute_PosY,0)
	s_noticeTreasurePos(uid, 8, posx, posy)
	return VALUE_OK
end
