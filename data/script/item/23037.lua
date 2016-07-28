--小红
function OnUseItemEvent_23037(userid,thisid,targetid)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,userid,10211) ~= 0 then
		return VALUE_OK
	end
	local hp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_MAXHP)
	if hp == maxhp then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_23037") == VALUE_OK then
		s_addbuff(SCENE_ENTRY_PLAYER,userid,30001,30,16)
		return VALUE_OK
	end
	return VALUE_FAIL
end
