function OnUseItemEvent_63031(uid,thisid)

	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20530) ~= 0 then
		s_sysInfo(uid,"您身上已经有了更高级的贵族血统了哦~")
		return
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20531) ~= 0 then
		s_sysInfo(uid,"您身上已经有了更高级的贵族血统了哦~")
		return
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20532) ~= 0 then
		s_sysInfo(uid,"您身上已经有了更高级的贵族血统了哦~")
		return
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20533) ~= 0 then
		s_sysInfo(uid,"您身上已经有了更高级的贵族血统了哦~")
		return
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63031") == VALUE_OK then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20529) ~= 0 then
			local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20529)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20529,time + 2592000)
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20529,1,2592000)
		end
		return VALUE_OK
	end
	return VALUE_FAIL
end

function OnUseItemEvent_63032(uid,thisid)

	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20529) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20529)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20531) ~= 0 then
		s_sysInfo(uid,"您身上已经有了更高级的贵族血统了哦~")
		return
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20532) ~= 0 then
		s_sysInfo(uid,"您身上已经有了更高级的贵族血统了哦~")
		return
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20533) ~= 0 then
		s_sysInfo(uid,"您身上已经有了更高级的贵族血统了哦~")
		return
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63032") == VALUE_OK then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20530) ~= 0 then
			local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20530)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20530,time + 2592000)
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20530,1,2592000)
		end
		return VALUE_OK
	end
	return VALUE_FAIL
end
function OnUseItemEvent_63033(uid,thisid)

	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20529) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20529)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20530) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20530)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20532) ~= 0 then
		s_sysInfo(uid,"您身上已经有了更高级的贵族血统了哦~")
		return
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20533) ~= 0 then
		s_sysInfo(uid,"您身上已经有了更高级的贵族血统了哦~")
		return
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63033") == VALUE_OK then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20531) ~= 0 then
			local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20531)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20531,time + 2592000)
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20531,1,2592000)
		end
		return VALUE_OK
	end
	return VALUE_FAIL
end
function OnUseItemEvent_63034(uid,thisid)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20529) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20529)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20530) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20530)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20531) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20531)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20533) ~= 0 then
		s_sysInfo(uid,"您身上已经有了更高级的贵族血统了哦~")
		return
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63034") == VALUE_OK then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20532) ~= 0 then
			local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20532)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20532,time + 2592000)
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20532,1,2592000)
		end
		return VALUE_OK
	end
	return VALUE_FAIL
end

function OnUseItemEvent_63035(uid,thisid)

	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20529) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20529)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20530) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20530)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20531) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20531)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20532) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20532)
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63035") == VALUE_OK then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20533) ~= 0 then
			local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20533)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20533,time + 2592000)
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20533,1,2592000)
		end
		return VALUE_OK
	end
	return VALUE_FAIL
end
