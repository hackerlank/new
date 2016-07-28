--幻影闪避
function OnLoopBuffEvent_10Sec_10805(level,etype,eid)
	local list = s_getTeamEntry(etype,eid,20)
	for i = 1,table.getn(list), 2 do
		if etype ~= list[i] or eid ~= list[i+1] then
			local lv = s_getskilllevel(list[i],list[i+1],44427)
			if lv ~= 0 then
				local flv = lv
				if lv > level then lv = level end

				if s_getbufflevel(list[i],list[i+1],10806) ~= 0 then
					s_updateBuffTime(list[i],list[i+1],10806,30)
				else
					s_addbuff(list[i],list[i+1],10806,flv,30)
				end
			end
		end
	end
end
