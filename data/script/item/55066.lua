--2013蛇年春联
function OnUseItemEvent_55066(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"春联扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 125 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,55066)
	return VALUE_OK
end

function OnUseItemEvent_55067(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"春联扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 125 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,55067)
	return VALUE_OK
end

function OnUseItemEvent_55068(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"春联扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 125 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,55068)
	return VALUE_OK
end

function OnUseItemEvent_55069(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"春联扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 125 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,55069)
	return VALUE_OK
end

function OnUseItemEvent_55089(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"春联扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 250 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,55089)
	return VALUE_OK
end
