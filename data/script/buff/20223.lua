function OnLoopBuffEvent_5Sec_20223(level,etype,eid,time,value)
	local dance = s_getbufflevel(etype,eid,49)
	if dance == nil or dance == 0  then
		return
	end
	local npcid = value
	local hp = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_MAXHP)
	if hp ~= nil and maxhp ~= nil and hp < maxhp then
		if math.floor(maxhp*0.15/100) < maxhp-hp then
			s_addValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_HP,math.floor(maxhp*0.15/100))
		else
			s_addValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_HP,maxhp-hp)
		end
	end
end
