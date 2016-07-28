--阿兰贝尔的体质
function OnUseItemEvent_55275(uid,thisid)
	local quality = s_getItemValue(uid,thisid,Item_Attribute_Quality)
	if quality == 1 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20518) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20519) ~= 0 then
			s_sysInfo(uid,"已有相同属性加成，无法使用")
			return VALUE_FAIL
		end
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55275") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setupCharState(SCENE_ENTRY_PLAYER,uid)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20517) ~= 0 then
			local time1 = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20517)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20517,time1 + 60*30)   --累计BUFF阿兰贝尔的体质1时间
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20517,1,60*30)   --阿兰贝尔的体质1
		end
		return VALUE_OK
	end

	if quality == 2 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20517) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20519) ~= 0 then
			s_sysInfo(uid,"已有相同属性加成，无法使用")
			return VALUE_FAIL
		end
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55275") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setupCharState(SCENE_ENTRY_PLAYER,uid)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20518) ~= 0 then
			local time1 = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20518)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20518,time1 + 60*30)   --累计BUFF阿兰贝尔的体质2时间
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20518,1,60*30)   --阿兰贝尔的体质2
		end
		return VALUE_OK
	end

	if quality == 3 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20517) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20518) ~= 0 then
			s_sysInfo(uid,"已有相同属性加成，无法使用")
			return VALUE_FAIL
		end
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55275") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setupCharState(SCENE_ENTRY_PLAYER,uid)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20519) ~= 0 then
			local time1 = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20519)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20519,time1 + 60*30)   --累计BUFF阿兰贝尔的体质3时间
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20519,1,60*30)   --阿兰贝尔的体质3
		end
		return VALUE_OK
	end
end

