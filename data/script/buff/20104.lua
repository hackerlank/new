--王者之威
function OnLoopBuffEvent_5Sec_20104(level, etype, eid)
	local homeland = s_getValue(etype,eid,VALUE_TYPE_HOMELAND)
	local list = s_getNineEntry(etype,eid,5)
	for i = 1,table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER and list[i+1] ~= eid then
			local country = s_getValue(list[i],list[i+1],VALUE_TYPE_HOMELAND)
			if country == homeland then
				if s_getbufflevel(list[i],list[i+1],2005) ~= 0 then
					s_updateBuffTime(list[i],list[i+1],2005,30)
				else
					s_addbuff(list[i],list[i+1],2005,1,30)
				end
			end
		end
	end
end

function OnHoldBuff_20104(level,etype,eid)
	OnHoldBuff_2005(level,etype,eid)
end
