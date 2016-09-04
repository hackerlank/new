local qualityRatio = {1, 1.5, 2, 3, 6}
function OnCorpsEquipDeadEvent(thisid,mid)
	local corpsid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_NPC_CORPS)
	if corpsid == 0 or corpsid == nil then
		return
	end
	local quality = s_getCorpsVar(corpsid,1,36)
	local ratio = (qualityRatio[quality] or 1)
	local mcorps = s_getCorpsId(mid)
	if mcorps ~= nil and mcorps ~= 0 then
		if s_getCorpsVar(mcorps,1,50) < CORPS_ACTIVITY_33707 then
			s_addCorpsVar(mcorps,1,50,s_getCorpsVar(mcorps,1,50)+1)
		end
		if s_getVar(mid,130,8) == 0 then
			s_setVar(mid,130,8,1)
			s_setVar(mid,130,100,s_getVar(mid,130,100)+1)
			s_debugUser(mid,"团活力，袭击特勤机甲，参与度：1")
		end
	end
	local ninePlayerList = s_getNineEntry(SCENE_ENTRY_NPC,thisid,30)
	local msg = "很遗憾，未能保护好特勤机甲，本次团拓展失败了"
	for i = 1, table.getn(ninePlayerList), 2 do
		if s_getCorpsId(ninePlayerList[i+1]) == corpsid then
			exp = 75 * (50 + 0.1 * (s_getValue(SCENE_ENTRY_PLAYER,ninePlayerList[i+1],VALUE_TYPE_LEVEL) ^ 2.2)) * ratio
			s_refreshExp(ninePlayerList[i+1],exp,ExpType_OptionalTask,0)
			s_sysInfo(ninePlayerList[i+1],msg,ChatPos_Important + ChatPos_Sys)
			s_addField(ninePlayerList[i+1],UserVar_CooperationPoint,5)
			s_sysInfo(ninePlayerList[i+1],"个人协作点增加5点")
		end
		--团魔甲中的玩家添加奖励
		if ninePlayerList[i] == SCENE_ENTRY_NPC and s_getValue(SCENE_ENTRY_NPC,ninePlayerList[i+1],VALUE_TYPE_NPCTYPE) == NPC_TYPE_ARMYEQUIP and s_getEquipEntry(ninePlayerList[i+1]) ~= nil then
			local list = s_getEquipEntry(ninePlayerList[i+1])
			for i,memberid in ipairs(list) do
				if s_getCorpsId(memberid) == corpsid then
					exp = 75 * (50 + 0.1 * (s_getValue(SCENE_ENTRY_PLAYER,memberid,VALUE_TYPE_LEVEL) ^ 2.2)) * ratio
					-- 经验
					s_refreshExp(memberid,exp,ExpType_OptionalTask,0)
					-- 协作点
					s_addField(memberid,UserVar_CooperationPoint,5)
					s_sysInfo(memberid,"个人协作点增加5点")
					s_sysInfo(memberid,msg,ChatPos_Important + ChatPos_Sys)
				else
					break
				end
			end
		end
		if ninePlayerList[i] == SCENE_ENTRY_PLAYER and s_getCorpsId(ninePlayerList[i+1]) == mcorps and mcorps ~= 0 then
			if s_getVar(ninePlayerList[i+1],130,8) == 0 then
				s_setVar(ninePlayerList[i+1],130,8,1)
				s_setVar(ninePlayerList[i+1],130,100,s_getVar(ninePlayerList[i+1],130,100)+1)
				s_debugUser(ninePlayerList[i+1],"团活力，袭击特勤机甲，参与度：1")
			end
		end
	end
	local murdererName = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_NAME)
	if murdererName ~= nil and murdererName ~= 0 then
		local curCountry = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_CURRENT_COUNTRY)
		s_countryInfo(curCountry,"英勇的" .. murdererName .. "击毁了潜入的特勤机甲，保护了国家水晶！",ChatPos_Important)
		s_addItem(mid,31498,0,quality * 1,0,"","击毁特勤机甲奖励")
	end
	s_addCorpsVar(corpsid,1,39,0)
	s_addCorpsVar(corpsid,1,40,0)
end

function OnNpcDeadEvent44339(thisid,mid)
	return OnCorpsEquipDeadEvent(thisid,mid)
end
function OnNpcDeadEvent44340(thisid,mid)
	return OnCorpsEquipDeadEvent(thisid,mid)
end
function OnNpcDeadEvent44341(thisid,mid)
	return OnCorpsEquipDeadEvent(thisid,mid)
end
function OnNpcDeadEvent44342(thisid,mid)
	return OnCorpsEquipDeadEvent(thisid,mid)
end
function OnNpcDeadEvent44343(thisid,mid)
	return OnCorpsEquipDeadEvent(thisid,mid)
end
for i = 44339,44343 do
	RegisterMyNpcDeadEvent(i,"OnCorpsEquipDeadEvent($1,$2)")
end
