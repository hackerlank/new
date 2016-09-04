--国战连斩光环
function OnLoopBuffEvent_5Sec_20503(level, etype, eid)
	local list = s_getNineEntry(etype,eid,5)
	for i = 1,table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER and list[i+1] ~= eid then
			if s_getbufflevel(list[i],list[i+1],20504) ~= 0 then
				s_updateBuffTime(list[i],list[i+1],20504,60)
			else
				s_addbuff(list[i],list[i+1],20504,20,60)
			end
		end
	end
end

function OnHoldBuff_20503(level,etype,eid)
	OnHoldBuff_20504(level,etype,eid)
end
