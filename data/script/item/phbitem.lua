--战力第一
function OnUseItemEvent_26200(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"战力第一") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_removebuff(SCENE_ENTRY_PLAYER,uid,20236)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,20236,1,6*24*3600)
	return VALUE_OK
end

--战士战力第一
function OnUseItemEvent_26201(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"战士战力第一") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_removebuff(SCENE_ENTRY_PLAYER,uid,134)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,134,1,6*24*3600)
	return VALUE_OK
end

--刺客战力第一
function OnUseItemEvent_26202(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"刺客战力第一") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_removebuff(SCENE_ENTRY_PLAYER,uid,135)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,135,1,6*24*3600)
	return VALUE_OK
end

--枪手战力第一
function OnUseItemEvent_26203(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"枪手战力第一") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_removebuff(SCENE_ENTRY_PLAYER,uid,136)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,136,1,6*24*3600)
	return VALUE_OK
end

--魔炮战力第一
function OnUseItemEvent_26204(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"魔炮战力第一") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_removebuff(SCENE_ENTRY_PLAYER,uid,137)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,137,1,6*24*3600)
	return VALUE_OK
end

--法师战力第一
function OnUseItemEvent_26205(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"法师战力第一") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_removebuff(SCENE_ENTRY_PLAYER,uid,139)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,139,1,6*24*3600)
	return VALUE_OK
end

--牧师战力第一
function OnUseItemEvent_26206(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"牧师战力第一") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_removebuff(SCENE_ENTRY_PLAYER,uid,138)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,138,1,6*24*3600)
	return VALUE_OK
end
