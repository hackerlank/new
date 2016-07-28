---伊阿珀托斯的敏捷
function OnUseItemEvent_55273(uid,thisid)
	local quality = s_getItemValue(uid,thisid,Item_Attribute_Quality)
	if quality == 1 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20512) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20513) ~= 0 then
			s_sysInfo(uid,"已有相同属性加成，无法使用")
			return VALUE_FAIL
		end
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55273") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setupCharState(SCENE_ENTRY_PLAYER,uid)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20511) ~= 0 then
			local time1 = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20511)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20511,time1 + 60*30)   --累计BUFF伊阿珀托斯的敏捷1时间
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20511,1,60*30)   --伊阿珀托斯的敏捷1
		end
		return VALUE_OK
	end

	if quality == 2 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20511) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20513) ~= 0 then
			s_sysInfo(uid,"已有相同属性加成，无法使用")
			return VALUE_FAIL
		end
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55273") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setupCharState(SCENE_ENTRY_PLAYER,uid)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20512) ~= 0 then
			local time1 = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20512)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20512,time1 + 60*30)   --累计BUFF伊阿珀托斯的敏捷2时间
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20512,1,60*30)   --伊阿珀托斯的敏捷2
		end
		return VALUE_OK
	end

	if quality == 3 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20511) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20512) ~= 0 then
			s_sysInfo(uid,"已有相同属性加成，无法使用")
			return VALUE_FAIL
		end
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55273") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setupCharState(SCENE_ENTRY_PLAYER,uid)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20513) ~= 0 then
			local time1 = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20513)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20513,time1 + 60*30)   --累计BUFF伊阿珀托斯的敏捷3时间
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20513,1,60*30)   --伊阿珀托斯的敏捷3
		end
		return VALUE_OK
	end
end
