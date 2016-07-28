--让附近的没有攻击目标的NPC攻击属主
function OnLoopBuffEvent_5Sec_31(level,etype,eid)
	local list = s_getNineEntry(etype,eid,10)
	for i = 1,table.getn(list), 2 do
		if list[i] ~= etype or list[i+1] ~= eid then
			if list[i] == SCENE_ENTRY_NPC then
				s_setEnemyEnmity(list[i+1],etype,eid,level)
			end
		end
	end
end
