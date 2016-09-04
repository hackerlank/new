--单兵火箭炮
function OnUseItemEvent_31442(userid,thisid,targetid)
	local baseid = s_getValue(SCENE_ENTRY_NPC,targetid,VALUE_TYPE_BASE_ID)
	if baseid ~= 60808 and baseid ~= 60809 then
		s_sysInfo(userid,"请先选中指定NPC")
		return VALUE_FAIL
	end
	local country = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_CURRENT_COUNTRY)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HOMELAND)
	if country == homeland then
		s_sysInfo(userid,"不能对本国NPC使用")
		return VALUE_FAIL
	end
	if s_isFriendCountry(country,homeland) == VALUE_OK then
		s_sysInfo(userid,"不能对盟国NPC使用")
		return VALUE_FAIL
	end
	local maxhp = s_getValue(SCENE_ENTRY_NPC,targetid,VALUE_TYPE_MAXHP)
	local maxpdef = s_getValue(SCENE_ENTRY_NPC,targetid,VALUE_TYPE_PDEF)
	local damage = maxhp*0.70+maxpdef
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_31442") ~= VALUE_OK then
		return VALUE_FAIL
	end
	MagicAttack(7179,VALUE_TYPE_PDAM,SCENE_ENTRY_PLAYER,userid,SCENE_ENTRY_NPC,targetid,damage)
	return VALUE_OK
end
