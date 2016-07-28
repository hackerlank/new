--叹息之墙（闪电）
function OnUseItemEvent_29132(uid,thisid)
	if s_getMedal(uid) ~= MedalType_Lightning then
		return VALUE_FAIL
	end
	local curday = s_getCurTime(TIME_ALLDAYS)
	if s_deleteItemByThisID(uid,thisid,1,"使用道具叹息之墙（闪电）") == VALUE_OK then
		local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
		local list = s_getNineEntry(SCENE_ENTRY_PLAYER,uid,12)
		for i = 1,table.getn(list), 2 do
			if list[i] == SCENE_ENTRY_PLAYER then
				local homeland = s_getValue(list[i],list[i+1],VALUE_TYPE_HOMELAND)
				if homeland == country then
					if s_getbufflevel(list[i],list[i+1],31058) ~= 0 then
						s_removebuff(list[i],list[i+1],31058)
					end
					s_addbuff(list[i],list[i+1],31058,25,300)
				end
			end
		end
		s_addVar(uid,116,4,curday);
		return VALUE_OK
	end
	return VALUE_FAIL
end
