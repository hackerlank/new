--牧神潘的精神
function OnUseItemEvent_55271(uid,thisid)
	local quality = s_getItemValue(uid,thisid,Item_Attribute_Quality)
	if quality == 1 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20506) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20507) ~= 0 then
			s_sysInfo(uid,"已有相同属性加成，无法使用")
			return VALUE_FAIL
		end
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55271") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setupCharState(SCENE_ENTRY_PLAYER,uid)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20505) ~= 0 then
			local time1 = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20505)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20505,time1 + 60*30)   --累计BUFF牧神潘的精神1时间
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20505,1,60*30)   --牧神潘的精神1
		end
		return VALUE_OK
	end

	if quality == 2 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20505) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20507) ~= 0 then
			s_sysInfo(uid,"已有相同属性加成，无法使用")
			return VALUE_FAIL
		end
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55271") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setupCharState(SCENE_ENTRY_PLAYER,uid)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20506) ~= 0 then
			local time1 = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20506)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20506,time1 + 60*30)   --累计BUFF牧神潘的精神2时间
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20506,1,60*30)   --牧神潘的精神2
		end
		return VALUE_OK
	end

	if quality == 3 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20505) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20506) ~= 0 then
			s_sysInfo(uid,"已有相同属性加成，无法使用")
			return VALUE_FAIL
		end
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55271") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setupCharState(SCENE_ENTRY_PLAYER,uid)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20507) ~= 0 then
			local time1 = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20507)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20507,time1 + 60*30)   --累计BUFF牧神潘的精神3时间
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20507,1,60*30)   --牧神潘的精神3
		end
		return VALUE_OK
	end
end

