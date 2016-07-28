--灼热辐射
function OnLoopBuffEvent_2Sec_10416(level,etype,eid,time,value)
	local percent = { 15,16,17,18,19,20 }
	local hurt = math.floor(value*percent[level]/100)
	local list = s_getNineEntry(etype,eid,5)
	for i = 1,table.getn(list), 2 do
		if list[i] ~= etype or list[i+1] ~= eid then
			if s_checkPK(10416,etype,eid,list[i],list[i+1]) == VALUE_OK then
				--				s_subValue(list[i],list[i+1],VALUE_TYPE_HP,hurt)
				DirectAttack(0,etype,eid,list[i],list[i+1],hurt)
			end
		end
	end
end
