--小红
function OnUseItemEvent_23039(userid,thisid,targetid)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,userid,10211) ~= 0 then
		return VALUE_OK
	end
	local hp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HP)
	local maxhp = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_MAXHP)
	if hp == maxhp then
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_23039") == VALUE_OK then
		s_addbuff(SCENE_ENTRY_PLAYER,userid,30001,90,16)
		return VALUE_OK
	end
	return VALUE_FAIL
end
