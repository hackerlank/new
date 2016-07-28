--炮火支持
function OnLoopBuffEvent_5Sec_20102(level, etype, eid)
	local driver = s_getValue(etype,eid,VALUE_TYPE_DRIVER)
	local quality = s_getValue(etype,eid,VALUE_TYPE_ARMY_EQUIP_QUALITY)
	local list = s_getCorpsEntry(SCENE_ENTRY_PLAYER,driver,5)
	for i = 1,table.getn(list), 2 do
		if s_getbufflevel(list[i],list[i+1],2002) ~= 0 then
			s_updateBuffTime(list[i],list[i+1],2002,30)
		else
			s_addbuff(list[i],list[i+1],2002,1,30,quality)
		end
	end
end
