--魔幻卡牌
function OnUseItemEvent_55042(uid,thisid,targetid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	local worldlevel=s_getWorldLevel()
	if level < 61 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if worldlevel<5 then
		if sex ==1 then
			s_openCard(uid,55042,0,thisid,targetid)
		else
			s_openCard(uid,55042,1,thisid,targetid)
		end
	else
		if sex ==1 then
			s_openCard(uid,55042,2,thisid,targetid)
		else
			s_openCard(uid,55042,3,thisid,targetid)
		end
	end
	return VALUE_OK
end
