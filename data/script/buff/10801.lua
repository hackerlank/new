--战士之魂
function OnLoopBuffEvent_10Sec_10801(level,etype,eid)
	local list = s_getTeamEntry(etype,eid,20)
	for i = 1,table.getn(list), 2 do
		if etype ~= list[i] or eid ~= list[i+1] then
			local lv = s_getskilllevel(list[i],list[i+1],44425)
			if lv ~= 0 then
				local flv = lv
				if lv > level then lv = level end

				if s_getbufflevel(list[i],list[i+1],10802) ~= 0 then
					s_updateBuffTime(list[i],list[i+1],10802,30)
				else
					s_addbuff(list[i],list[i+1],10802,flv,30)
				end
			end
		end
	end
end
