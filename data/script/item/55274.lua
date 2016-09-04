--德魔忒尔的智慧
function OnUseItemEvent_55274(uid,thisid)
	local quality = s_getItemValue(uid,thisid,Item_Attribute_Quality)
	if quality == 1 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20515) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20516) ~= 0 then
			s_sysInfo(uid,"已有相同属性加成，无法使用")
			return VALUE_FAIL
		end
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55274") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setupCharState(SCENE_ENTRY_PLAYER,uid)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20514) ~= 0 then
			local time1 = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20514)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20514,time1 + 60*30)   --累计BUFF德魔忒尔的智慧1时间
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20514,1,60*30)   --德魔忒尔的智慧1
		end
		return VALUE_OK
	end

	if quality == 2 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20514) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20516) ~= 0 then
			s_sysInfo(uid,"已有相同属性加成，无法使用")
			return VALUE_FAIL
		end
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55274") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setupCharState(SCENE_ENTRY_PLAYER,uid)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20515) ~= 0 then
			local time1 = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20515)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20515,time1 + 60*30)   --累计BUFF德魔忒尔的智慧2时间
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20515,1,60*30)   --德魔忒尔的智慧2
		end
		return VALUE_OK
	end

	if quality == 3 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20514) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20515) ~= 0 then
			s_sysInfo(uid,"已有相同属性加成，无法使用")
			return VALUE_FAIL
		end
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55274") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setupCharState(SCENE_ENTRY_PLAYER,uid)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20516) ~= 0 then
			local time1 = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20516)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20516,time1 + 60*30)   --累计BUFF德魔忒尔的智慧3时间
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20516,1,60*30)   --德魔忒尔的智慧3
		end
		return VALUE_OK
	end
end

