--血液汲取
function OnLoopBuffEvent_1Sec_20025(level,etype,eid,time,value)
	local hp = math.floor(s_getValue(etype,eid,VALUE_TYPE_HP)*0.2)
	if hp >= 1 then
		s_addValue(SCENE_ENTRY_NPC,value,VALUE_TYPE_HP,hp)
		DirectAttack(7020,SCENE_ENTRY_NPC,value,etype,eid,hp)
	end
end
