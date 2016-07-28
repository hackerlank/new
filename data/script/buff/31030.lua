--毒刃
function OnLoopBuffEvent_2Sec_31030(level,etype,eid,time,value)
	local hp = 0;local maxhp = 0;
	if etype == SCENE_ENTRY_NPC then
		maxhp = s_getValue(SCENE_ENTRY_PLAYER,value,VALUE_TYPE_MAXHP)
		if maxhp == nil or maxhp == 0 then
			maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
		end
		hp = math.floor(maxhp * level / 100)
	else
		maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
		hp = math.floor(maxhp * level / 100)
	end
	DirectAttack(0,SCENE_ENTRY_PLAYER,value,etype,eid,hp)
end
