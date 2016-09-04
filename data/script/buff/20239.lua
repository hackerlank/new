--国战连斩光环
function OnLoopBuffEvent_5Sec_20239(level, etype, eid)
	local homeland = s_getValue(etype,eid,VALUE_TYPE_HOMELAND)
	local list = s_getNineEntry(etype,eid,5)
	for i = 1,table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER and list[i+1] ~= eid then
			local country = s_getValue(list[i],list[i+1],VALUE_TYPE_HOMELAND)
			if country == homeland then
				if s_getbufflevel(list[i],list[i+1],20240) ~= 0 then
					s_updateBuffTime(list[i],list[i+1],20240,3*60)
				else
					s_addbuff(list[i],list[i+1],20240,1,3*60)
				end
			end
		end
	end
end

function OnHoldBuff_20239(level,etype,eid)
	OnHoldBuff_20240(level,etype,eid)
end
