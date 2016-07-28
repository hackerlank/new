--连环爆炸
function OnRemoveBuffEvent_10417(level,etype,eid,time,value)
	local percent1 = { 0.2,0.23,0.26,0.29,0.32,0.36 }
	local percent2 = { 0.1,0.12,0.14,0.16,0.18,0.20 }
	local maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
	local damage1 = math.floor(maxhp*percent1[level])
	local damage2 = math.floor(maxhp*percent2[level])
	--	s_subValue(etype,eid,VALUE_TYPE_HP,damage1)
	DirectAttack(0,SCENE_ENTRY_PLAYER,value,etype,eid,damage1)
	local list = s_getNineEntry(etype,eid,3)
	for i = 1,table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER and list[i+1] ~= eid then
			--			s_subValue(list[i],list[i+1],VALUE_TYPE_HP,damage2)
			DirectAttack(0,SCENE_ENTRY_PLAYER,value,list[i],list[i+1],damage2)
		end
	end
end
