--蝎型兽光环
function OnLoopBuffEvent_5Sec_20101(level, etype, eid, time, value)
	local driver = s_getValue(etype,eid,VALUE_TYPE_DRIVER)
	local list = s_getCorpsEntry(SCENE_ENTRY_PLAYER,driver,5)
	for i = 1,table.getn(list), 2 do
		if s_getbufflevel(list[i],list[i+1],2001) ~= 0 then
			s_updateBuffTime(list[i],list[i+1],2001,30)
		else
			s_addbuff(list[i],list[i+1],2001,level,30,value)
		end
	end
end
