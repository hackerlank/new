--赫淮斯托斯的力量
function OnUseItemEvent_55272(uid,thisid)
	local quality = s_getItemValue(uid,thisid,Item_Attribute_Quality)
	if quality == 1 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20509) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20510) ~= 0 then
			s_sysInfo(uid,"已有相同属性加成，无法使用")
			return VALUE_FAIL
		end
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55272") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setupCharState(SCENE_ENTRY_PLAYER,uid)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20508) ~= 0 then
			local time1 = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20508)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20508,time1 + 60*30)   --累计BUFF赫淮斯托斯的力量1时间
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20508,1,60*30)   --赫淮斯托斯的力量1
		end
		return VALUE_OK
	end

	if quality == 2 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20508) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20510) ~= 0 then
			s_sysInfo(uid,"已有相同属性加成，无法使用")
			return VALUE_FAIL
		end
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55272") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setupCharState(SCENE_ENTRY_PLAYER,uid)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20509) ~= 0 then
			local time1 = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20509)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20509,time1 + 60*30)   --累计BUFF赫淮斯托斯的力量2时间
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20509,1,60*30)   --赫淮斯托斯的力量2
		end
		return VALUE_OK
	end

	if quality == 3 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20508) ~= 0 or s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20509) ~= 0 then
			s_sysInfo(uid,"已有相同属性加成，无法使用")
			return VALUE_FAIL
		end
		if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55272") ~= VALUE_OK then
			return VALUE_FAIL
		end
		s_setupCharState(SCENE_ENTRY_PLAYER,uid)
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20510) ~= 0 then
			local time1 = s_getbufftime(SCENE_ENTRY_PLAYER,uid,20510)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,20510,time1 + 60*30)   --累计BUFF赫淮斯托斯的力量3时间
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20510,1,60*30)   --赫淮斯托斯的力量3
		end
		return VALUE_OK
	end
end
