--战争水晶（物攻）
function OnNpcDeadEvent60628(mid,thisid)
	local redbuff = 20300
	local bluebuff = 20301
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_CURRENT_MAP)
	if mapid ~= 157 then
		return
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,redbuff) > 0 or
		s_getbufflevel(SCENE_ENTRY_PLAYER,mid,bluebuff) > 0 then
		return
	end
	local buffid = 20302
	for i=20302,20306 do
		if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,i) > 0 then
			s_removebuff(SCENE_ENTRY_PLAYER, mid, i)
		end
	end
	s_addbuff(SCENE_ENTRY_PLAYER,mid,buffid,1,30)
end

--战争水晶（魔攻）
function OnNpcDeadEvent60629(mid,thisid)
	local redbuff = 20300
	local bluebuff = 20301
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_CURRENT_MAP)
	if mapid ~= 157 then
		return
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,redbuff) > 0 or
		s_getbufflevel(SCENE_ENTRY_PLAYER,mid,bluebuff) > 0 then
		return
	end
	local buffid = 20303
	for i=20302,20306 do
		if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,i) > 0 then
			s_removebuff(SCENE_ENTRY_PLAYER, mid, i)
		end
	end
	s_addbuff(SCENE_ENTRY_PLAYER,mid,buffid,1,30)
end

--战争水晶（物防）
function OnNpcDeadEvent60630(mid,thisid)
	local redbuff = 20300
	local bluebuff = 20301
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_CURRENT_MAP)
	if mapid ~= 157 then
		return
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,redbuff) > 0 or
		s_getbufflevel(SCENE_ENTRY_PLAYER,mid,bluebuff) > 0 then
		return
	end
	local buffid = 20304
	for i=20302,20306 do
		if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,i) > 0 then
			s_removebuff(SCENE_ENTRY_PLAYER, mid, i)
		end
	end
	s_addbuff(SCENE_ENTRY_PLAYER,mid,buffid,1,30)
end

--战争水晶（魔防）
function OnNpcDeadEvent60631(mid,thisid)
	local redbuff = 20300
	local bluebuff = 20301
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_CURRENT_MAP)
	if mapid ~= 157 then
		return
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,redbuff) > 0 or
		s_getbufflevel(SCENE_ENTRY_PLAYER,mid,bluebuff) > 0 then
		return
	end
	local buffid = 20305
	for i=20302,20306 do
		if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,i) > 0 then
			s_removebuff(SCENE_ENTRY_PLAYER, mid, i)
		end
	end
	s_addbuff(SCENE_ENTRY_PLAYER,mid,buffid,1,30)
end

--战争水晶（回血）
function OnNpcDeadEvent60632(mid,thisid)
	local redbuff = 20300
	local bluebuff = 20301
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_CURRENT_MAP)
	if mapid ~= 157 then
		return
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,redbuff) > 0 or
		s_getbufflevel(SCENE_ENTRY_PLAYER,mid,bluebuff) > 0 then
		return
	end
	local buffid = 20306
	for i=20302,20306 do
		if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,i) > 0 then
			s_removebuff(SCENE_ENTRY_PLAYER, mid, i)
		end
	end
	s_addbuff(SCENE_ENTRY_PLAYER,mid,buffid,1,30)
end

--红色旗帜（初始）
function OnNpcDeadEvent60633(thisid,mid)
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_CURRENT_MAP)
	if mapid ~= 157 then
		return
	end
	local sid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	s_setSceneVar(sid,60633,1,mid)
	for i=20302,20306 do
		s_removebuff(SCENE_ENTRY_PLAYER,mid,i)
	end
	local redbuff = 20300
	local bluebuff = 20301
	if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,redbuff) == 0 then
		s_addbuff(SCENE_ENTRY_PLAYER,mid,redbuff,1,20*60)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,bluebuff) > 0 then
			--刷新NPC不在这里处理
			s_removebuff(SCENE_ENTRY_PLAYER, mid, bluebuff)
		end
	else
		local npcid = s_summon(SCENE_ENTRY_PLAYER,mid,60765)
		s_setSceneVar(sid,60633,1,npcid)
	end
end

--蓝色旗帜（初始）
function OnNpcDeadEvent60634(thisid,mid)
	local sid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	for i=20302,20306 do
		s_removebuff(SCENE_ENTRY_PLAYER,mid,i)
	end
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_CURRENT_MAP)
	if mapid ~= 157 then
		return
	end
	local redbuff = 20300
	local bluebuff = 20301
	if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,redbuff) > 0 then
		local npcid = s_summon(SCENE_ENTRY_PLAYER,mid,60766)
		for i=1,4 do
			if s_getSceneVar(sid,60634,i) == thisid then
				s_setSceneVar(sid,60634,i,npcid)
			end
		end
	elseif s_getbufflevel(SCENE_ENTRY_PLAYER,mid,bluebuff) > 0 then
		local npcid = s_summon(SCENE_ENTRY_PLAYER,mid,60766)
		for i=1,4 do
			if s_getSceneVar(sid,60634,i) == mid then
				s_setSceneVar(sid,60634,i,npcid)
			end
			if s_getSceneVar(sid,60634,i) == thisid then
				s_setSceneVar(sid,60634,i,mid)
			end
		end
	else
		for i=1,4 do
			if s_getSceneVar(sid,60634,i) == thisid then
				s_setSceneVar(sid,60634,i,mid)
			end
		end
		s_addbuff(SCENE_ENTRY_PLAYER,mid,bluebuff,1,20*60)
	end
end

--红色旗帜（刷新）
function OnNpcDeadEvent60765(thisid,mid)
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_CURRENT_MAP)
	if mapid ~= 157 then
		return
	end
	local sid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	s_setSceneVar(sid,60633,1,mid)
	for i=20302,20306 do
		s_removebuff(SCENE_ENTRY_PLAYER,mid,i)
	end
	local redbuff = 20300
	local bluebuff = 20301
	if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,redbuff) == 0 then
		s_addbuff(SCENE_ENTRY_PLAYER,mid,redbuff,1,20*60)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,bluebuff) > 0 then
			--刷新NPC不在这里处理
			s_removebuff(SCENE_ENTRY_PLAYER, mid, bluebuff)
		end
	else
		local npcid = s_summon(SCENE_ENTRY_PLAYER,mid,60765)
		s_setSceneVar(sid,60633,1,npcid)
	end
end

--蓝色旗帜（刷新）
function OnNpcDeadEvent60766(thisid,mid)
	local sid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	for i=20302,20306 do
		s_removebuff(SCENE_ENTRY_PLAYER,mid,i)
	end
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_CURRENT_MAP)
	if mapid ~= 157 then
		return
	end
	local redbuff = 20300
	local bluebuff = 20301
	if s_getbufflevel(SCENE_ENTRY_PLAYER,mid,redbuff) > 0 then
		local npcid = s_summon(SCENE_ENTRY_PLAYER,mid,60766)
		for i=1,4 do
			if s_getSceneVar(sid,60634,i) == thisid then
				s_setSceneVar(sid,60634,i,npcid)
			end
		end
	elseif s_getbufflevel(SCENE_ENTRY_PLAYER,mid,bluebuff) > 0 then
		local npcid = s_summon(SCENE_ENTRY_PLAYER,mid,60766)
		for i=1,4 do
			if s_getSceneVar(sid,60634,i) == mid then
				s_setSceneVar(sid,60634,i,npcid)
			end
			if s_getSceneVar(sid,60634,i) == thisid then
				s_setSceneVar(sid,60634,i,mid)
			end
		end
	else
		for i=1,4 do
			if s_getSceneVar(sid,60634,i) == thisid then
				s_setSceneVar(sid,60634,i,mid)
			end
		end
		s_addbuff(SCENE_ENTRY_PLAYER,mid,bluebuff,1,20*60)
	end
end
RegisterMyNpcDeadEvent(60632,"OnNpcDeadEvent60632($1,$2)")
RegisterMyNpcDeadEvent(60631,"OnNpcDeadEvent60631($1,$2)")
RegisterMyNpcDeadEvent(60630,"OnNpcDeadEvent60630($1,$2)")
RegisterMyNpcDeadEvent(60629,"OnNpcDeadEvent60629($1,$2)")
RegisterMyNpcDeadEvent(60628,"OnNpcDeadEvent60628($1,$2)")
s_setNpcDeadEvent(60766)
s_setNpcDeadEvent(60765)
s_setNpcDeadEvent(60634)
s_setNpcDeadEvent(60633)
--[[
s_setNpcDeadEvent(60632)
s_setNpcDeadEvent(60631)
s_setNpcDeadEvent(60630)
s_setNpcDeadEvent(60629)
s_setNpcDeadEvent(60628)
]]
