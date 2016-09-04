--重生旋风雷暴
function OnLoopBuffEvent_1Sec_20030(level,etype,eid)
	local victim = {}
	local list = s_getNineEntry(etype,eid,10)
	for i = 1,table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER then
			if s_checkPK(20030,etype,eid,list[i],list[i+1]) == VALUE_OK then
				table.insert(victim,list[i])
				table.insert(victim,list[i+1])
			end
		end
	end
	local htype,damage = BossDamage(etype,eid,2)
	MagicHurtAttack(0,etype,eid,htype,damage,unpack(victim))
end
