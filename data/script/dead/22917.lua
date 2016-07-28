--破碎水晶球
function OnNpcDeadEvent22917(thisid,mid)
	local dtype = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_DEAD_TYPE)
	if dtype == NPC_DEAD_TYPE_TIME  then
		local victim = {}
		local list = s_getNineEntry(SCENE_ENTRY_NPC,thisid,10)
		for i = 1,table.getn(list), 2 do
			if list[i] == SCENE_ENTRY_PLAYER then
				table.insert(victim,list[i])
				table.insert(victim,list[i+1])
			end
		end
		if table.getn(victim) > 0 then
			local htype,damage = BossDamage(SCENE_ENTRY_NPC,thisid,1)
			MagicHurtAttack(7014,SCENE_ENTRY_NPC,thisid,htype,damage,unpack(victim))
		end
	end
end
s_setNpcDeadEvent(22917)
