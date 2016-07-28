--暴风闪电
function OnLoopBuffEvent_2Sec_20066(level,etype,eid,time,value)
	local victim = {}
	local list = s_getNineEntry(etype,eid,5)
	for i = 1,table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER then
			table.insert(victim,list[i])
			table.insert(victim,list[i+1])
		end
	end
	if table.getn(victim) > 0 then
		local htype,damage = BossDamage(SCENE_ENTRY_NPC,value,1)
		MagicHurtAttack(7118,SCENE_ENTRY_NPC,value,htype,damage,unpack(victim))
	end
end
