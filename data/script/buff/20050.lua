--邪恶诅咒
function OnLoopBuffEvent_5Sec_20050(level, etype, eid)
	local list = s_getNineEntry(etype,eid,5)
	for i = 1,table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER then
		--if s_getbufflevel(list[i],list[i+1],2005) ~= 0 then
		--s_updateBuffTime(list[i],list[i+1],2005,30)
		--else
		--s_addbuff(list[i],list[i+1],2005,1,30)
		--end
		end
	end
end
