--致命吸血
function OnLoopBuffEvent_1Sec_20033(level, etype, eid,time,value)
	local hp = s_getValue(SCENE_ENTRY_NPC,value,VALUE_TYPE_HP)
	if hp > 0 then
		local maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
		s_subValue(etype,eid,VALUE_TYPE_HP,maxhp*0.03)
		s_addValue(SCENE_ENTRY_NPC,value,VALUE_TYPE_HP,maxhp*0.03)
	end
end
