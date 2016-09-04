--新年爆竹
function OnUseItemEvent_55070(uid,thisid,targetid)
	local baseid = s_getValue(SCENE_ENTRY_NPC,targetid,VALUE_TYPE_BASE_ID)
	if baseid ~= 60983 and baseid ~= 60984 then
		s_sysInfo(uid,"不是年兽")
		return VALUE_FAIL
	end
	--[[local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if country == homeland then
	s_sysInfo(uid,"不能对本国NPC使用")
	return VALUE_FAIL
	end
	if s_isFriendCountry(country,homeland) == VALUE_OK then
	s_sysInfo(uid,"不能对盟国NPC使用")
	return VALUE_FAIL
	end]]--
	local maxhp = s_getValue(SCENE_ENTRY_NPC,targetid,VALUE_TYPE_MAXHP)
	local maxpdef = s_getValue(SCENE_ENTRY_NPC,targetid,VALUE_TYPE_PDEF)
	local damage = 0
	if baseid == 60983 then
		damage = maxhp*0.0005+maxpdef
	elseif baseid == 60984 then
		damage = maxhp*0.05+maxpdef
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55070") ~= VALUE_OK then
		return VALUE_FAIL
	end
	MagicAttack(7218,VALUE_TYPE_PDAM,SCENE_ENTRY_PLAYER,uid,SCENE_ENTRY_NPC,targetid,damage)
	return VALUE_OK
end
