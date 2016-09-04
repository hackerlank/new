--小红
function OnUseItemEvent_23031(userid,thisid,targetid)
	local hp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_MAXHP)
	if hp == maxhp then
		return VALUE_FAIL
	end
	local value = GetCureHp(userid,200)
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_23031") == VALUE_OK then
		s_addValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HP,value)
		return VALUE_OK
	end
	return VALUE_FAIL
end

function GetCureHp(uid,value)
	local add = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_ADD_CURE_HP)
	if add == 0 then
		return value
	end
	if add > 10000 then add = 10000 end
	value = value + add * value / 10000
	return math.floor(value)
end
