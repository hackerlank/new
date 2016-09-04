--自爆
function OnHoldBuff_10410(level,etype,eid)
	s_addValue(etype,eid,VALUE_TYPE_SPEED_SUB_PER,3000)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_ATTACKED,1)
end

function OnRemoveBuffEvent_10410(level,etype,eid,time,eid2)
	local percent1 = {60,70,80,90,100}
	local percent2 = {15,20,25,30,35 }
	local damage = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
	local victim = {}
	local posx= s_getValue(etype,eid,VALUE_TYPE_POSX)
	local posy = s_getValue(etype,eid,VALUE_TYPE_POSY)
	local list = s_getNineEntry(etype,eid2,5)
	for i = 1,table.getn(list), 2 do
		if list[i] ~= etype or list[i+1] ~= eid then
			if s_checkPK(10410,etype,eid,list[i],list[i+1]) == VALUE_OK then
				local x1 = s_getValue(list[i],list[i+1],VALUE_TYPE_POSX)
				local y1 = s_getValue(list[i],list[i+1],VALUE_TYPE_POSY)
				local armyequip = 0
				if list[i] == SCENE_ENTRY_NPC then
					local et1 = s_getValue(list[i],list[i+1],VALUE_TYPE_ARMY_EQUIP_TYPE)
					if et1 ~= 0 then
						armyequip = 1
					end
				end
				if armyequip == 0 then
					if math.sqrt((x1-posx)^2 + (y1-posy)^2) <= 3 then
						table.insert(victim,list[i])
						table.insert(victim,list[i+1])
						table.insert(victim,damage * percent1[level] /100)
					else
						table.insert(victim,list[i])
						table.insert(victim,list[i+1])
						table.insert(victim,damage * percent2[level] /100)
					end
				end
			end
		end
	end
	local slevel = s_getskilllevel(etype,eid,10417)
	if slevel ~= 0 then
		local num = 0
		for i = 1,table.getn(victim), 3 do
			if victim[i] == SCENE_ENTRY_PLAYER then
				local hp = s_getValue(victim[i], victim[i+1], VALUE_TYPE_HP)
				if hp > victim[i+2] then
					if num < 3 then
						s_addbuff(victim[i], victim[i+1],10417,slevel,5,eid)
						num = num + 1
					end
				end
			end
		end
	end
	s_setValue(etype,eid,VALUE_TYPE_HP,0)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_ATTACKED,0)
	DirectAttack(10410,etype,eid,unpack(victim))
end
