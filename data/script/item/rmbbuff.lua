--//========RMBbuff处理==========================================
--单人BUFF道具使用
function OnUsePersonBuffItem(uid,thisid,buffid,islife)
	if s_deleteItemByThisID(uid,thisid,1,"OnUsePersonBuffItem") == VALUE_OK then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,buffid) ~= 0 then
			local time = s_getbufftime(SCENE_ENTRY_PLAYER,uid,buffid)
			s_updateBuffTime(SCENE_ENTRY_PLAYER,uid,buffid,time + 30*60)
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,buffid,1,30*60)
		end
		if islife == VALUE_OK then
			s_setup(SCENE_ENTRY_PLAYER,uid,1)
			local hp = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP)
			s_addValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP,hp * 0.25)
		end
		return VALUE_OK
	end
	return VALUE_FAIL
end

--小队BUFF道具使用
function OnUseTeamBuffItem(uid,thisid,buffid,islife)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseTeamBuffItem") == VALUE_OK then
		local team = s_getTeamEntry(SCENE_ENTRY_PLAYER,uid,10)
		if team == nil or table.getn(team) == 0 then
			return VALUE_FAIL
		end
		for i=1, table.getn(team),2 do
			if s_getbufflevel(team[i],team[i+1],buffid) ~= 0 then
				local time = s_getbufftime(team[i],team[i+1],buffid)
				s_updateBuffTime(team[i],team[i+1],buffid,time + 30*60)
			else
				s_addbuff(team[i],team[i+1],buffid,1,30*60)
			end
			if islife == VALUE_OK then
				s_setup(team[i],team[i+1],1)
				local hp = s_getValue(team[i],team[i+1],VALUE_TYPE_HP)
				s_addValue(team[i],team[i+1],VALUE_TYPE_HP,hp * 0.25)
			end
		end
		return VALUE_OK
	end
	return VALUE_FAIL
end

--//==============================================================
--RMB攻击
function OnUseItemEvent_26115(uid,thisid,targetid)
	return OnUsePersonBuffItem(uid,thisid,31031)
end

--RMB小队攻击
function OnUseItemEvent_26118(uid,thisid,targetid)
	return OnUseTeamBuffItem(uid,thisid,31031)
end

--/////////////////////////////////////////////////////
--RMB防御
function OnUseItemEvent_26116(uid,thisid,targetid)
	return OnUsePersonBuffItem(uid,thisid,31032)
end

--RMB小队防御
function OnUseItemEvent_26119(uid,thisid,targetid)
	return OnUseTeamBuffItem(uid,thisid,31032)
end

--//////////////////////////////////////////////////////////
--RMB生命
function OnUseItemEvent_26117(uid,thisid,targetid)
	return OnUsePersonBuffItem(uid,thisid,31033,VALUE_OK)
end

--RMB小队生命
function OnUseItemEvent_26120(uid,thisid,targetid)
	return OnUseTeamBuffItem(uid,thisid,31033,VALUE_OK)
end

