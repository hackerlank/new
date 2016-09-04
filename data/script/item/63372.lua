--宠物幻化包
function OnUseItemEvent_63372(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"宠物幻化包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,100)
	if rand <= 20 then
		s_addItem(uid,42021,3,1,0,"1-1,3-259200","宠物幻化包")--宠物幻化包
	elseif rand <= 40 then
		s_addItem(uid,42017,3,1,0,"1-1,3-259200","宠物幻化包")--宠物幻化包
	elseif rand <= 60 then
		s_addItem(uid,42016,3,1,0,"1-1,3-259200","宠物幻化包")--宠物幻化包
	elseif rand <= 80 then
		s_addItem(uid,42001,3,1,0,"1-1,3-259200","宠物幻化包")--宠物幻化包
	else
		s_addItem(uid,42002,3,1,0,"1-1,3-259200","宠物幻化包")--宠物幻化包
	end
	return VALUE_OK
end
