--战争水晶
function OnHoldBuff_20302(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,1500)
end
function OnHoldBuff_20303(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,1500)
end
function OnHoldBuff_20304(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_PER,1500)
end
function OnHoldBuff_20305(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_PER,1500)
end
function OnLoopBuffEvent_1Sec_20306(level,etype,eid,time,value)
	local maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
	s_addValue(etype,eid,VALUE_TYPE_HP,maxhp * 0.05)
end
--怒气buff
function OnHoldBuff_20307(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,10000)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,10000)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_PER,10000)
end
--旗帜
--[[function OnHoldBuff_20300(level,etype,eid)
s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,5000)
s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,5000)
end
function OnHoldBuff_20301(level,etype,eid)
s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,2500)
s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_PER,2500)
end--]]
function OnRemoveBuffEvent_20300(level,etype,eid,time)
	if time == 0 then return end
	local mapid = s_getValue(etype,eid,VALUE_TYPE_CURRENT_MAP)
	if mapid ~= 157 then
		return
	end
	local npcid = s_summon(etype,eid,60765)
	local sid = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid,60633,1) == eid then
		s_setSceneVar(sid,60633,1,npcid)
	end
end
function OnRemoveBuffEvent_20301(level,etype,eid,time)
	if time == 0 then return end
	local mapid = s_getValue(etype,eid,VALUE_TYPE_CURRENT_MAP)
	if mapid ~= 157 then
		return
	end
	local npcid = s_summon(etype,eid,60766)
	local sid = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_SCENE_ID)
	for i=1,4 do
		if s_getSceneVar(sid,60634,i) == eid then
			s_setSceneVar(sid,60634,i,npcid)
		end
	end
end
