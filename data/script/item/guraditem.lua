--要塞随机卷轴
function OnUseItemEvent_31570(uid,thisid,targetid)
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	if mapid ~= 111 then
		s_sysInfo(uid,"<p><n>这里</n><n color='GXColorRed'>不是守卫要塞</n><n>，传送卷轴感应不到魔法的波动。</n></p>",ChatPos_Sys + ChatPos_Important)
		return
	end
	--使用道具
	if s_deleteItemByThisID(uid,thisid,1,"要塞随机卷轴使用") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,20)
	if rand == 1 then
		s_goto(SCENE_ENTRY_PLAYER,uid,47,203)
	elseif rand == 2 then
		s_goto(SCENE_ENTRY_PLAYER,uid,224,222)
	elseif rand == 3 then
		s_goto(SCENE_ENTRY_PLAYER,uid,40,35)
	elseif rand == 4 then
		s_goto(SCENE_ENTRY_PLAYER,uid,43,44)
	elseif rand == 5 then
		s_goto(SCENE_ENTRY_PLAYER,uid,197,65)
	elseif rand == 6 then
		s_goto(SCENE_ENTRY_PLAYER,uid,206,222)
	elseif rand == 7 then
		s_goto(SCENE_ENTRY_PLAYER,uid,43,64)
	elseif rand == 8 then
		s_goto(SCENE_ENTRY_PLAYER,uid,160,101)
	elseif rand == 9 then
		s_goto(SCENE_ENTRY_PLAYER,uid,173,227)
	elseif rand == 10 then
		s_goto(SCENE_ENTRY_PLAYER,uid,144,225)
	elseif rand == 11 then
		s_goto(SCENE_ENTRY_PLAYER,uid,121,142)
	elseif rand == 12 then
		s_goto(SCENE_ENTRY_PLAYER,uid,38,113)
	elseif rand == 13 then
		s_goto(SCENE_ENTRY_PLAYER,uid,34,149)
	elseif rand == 14 then
		s_goto(SCENE_ENTRY_PLAYER,uid,75,187)
	elseif rand == 15 then
		s_goto(SCENE_ENTRY_PLAYER,uid,113,225)
	elseif rand == 16 then
		s_goto(SCENE_ENTRY_PLAYER,uid,81,230)
	elseif rand == 17 then
		s_goto(SCENE_ENTRY_PLAYER,uid,62,197)
	elseif rand == 18 then
		s_goto(SCENE_ENTRY_PLAYER,uid,29,172)
	elseif rand == 19 then
		s_goto(SCENE_ENTRY_PLAYER,uid,27,201)
	elseif rand == 20 then
		s_goto(SCENE_ENTRY_PLAYER,uid,38,216)
	end
	return VALUE_OK
end


--要塞机枪兵
function OnUseItemEvent_31571(uid,thisid,targetid)
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	local posx = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
	if mapid ~= 111 then
		s_sysInfo(uid,"<p><n>这里</n><n color='GXColorRed'>不是守卫要塞</n><n>，道具感应不到魔法的波动。</n></p>",ChatPos_Sys + ChatPos_Important)
		return
	end
	if math.abs(posx - 43) < 9 and math.abs(posy - 212) < 9 then
		s_sysInfo(uid,"<p><n>注意安全，不可</n><n color='GXColorRed'>在要塞雕像附近放置机枪兵</n></p>",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	--使用道具
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31571") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,338)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,120*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,20502,1,120)
	return VALUE_OK
end

--要塞炮塔
function OnUseItemEvent_31572(uid,thisid,targetid)
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	local posx = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
	if mapid ~= 111 then
		s_sysInfo(uid,"<p><n>这里</n><n color='GXColorRed'>不是守卫要塞</n><n>，道具感应不到魔法的波动。</n></p>",ChatPos_Sys + ChatPos_Important)
		return
	end
	if math.abs(posx - 43) < 9 and math.abs(posy - 212) < 9 then
		s_sysInfo(uid,"<p><n>注意安全，不可</n><n color='GXColorRed'>在要塞雕像附近放置机枪兵</n></p>",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	--使用道具
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31572") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,339)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,120*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,20502,1,120)
	return VALUE_OK
end

--要塞战旗
function OnUseItemEvent_31573(uid,thisid,targetid)
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	if mapid ~= 111 then
		s_sysInfo(uid,"<p><n>这里</n><n color='GXColorRed'>不是守卫要塞</n><n>，道具感应不到魔法的波动。</n></p>",ChatPos_Sys + ChatPos_Important)
		return
	end
	--使用道具
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31573") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,340)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,120*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,20503,20,120)
	s_addbuff(SCENE_ENTRY_NPC,npcid,20502,1,120)
	return VALUE_OK
end





















