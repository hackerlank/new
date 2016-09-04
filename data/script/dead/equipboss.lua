--魔甲BOSS
function OnNpcDeadEvent20021(thisid,mid)
	local x = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSX)
	local y = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSY)
	local sid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	for i=1,math.random(2,3) do
		s_addSceneItem(27201,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(2,3) do
		s_addSceneItem(27211,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(2,3) do
		s_addSceneItem(27221,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(2,3) do
		s_addSceneItem(27231,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(2,3) do
		s_addSceneItem(27241,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(20,25) do
		s_addSceneItem(27108,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(10,15) do
		s_addSceneItem(27123,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(15,20) do
		s_addSceneItem(27126,1,sid,x,y,0,"1-1")
	end
	local mcorps = s_getCorpsId(mid)
	if mcorps ~= nil and mcorps ~= 0 then
		if s_getVar(mid,130,11) == 0 then
			s_setVar(mid,130,11,1)
			s_setVar(mid,130,100,s_getVar(mid,130,100)+1)
			s_debugUser(mid,"团活力，击败魔甲BOSS，参与度：1")
		end
		if s_getCorpsVar(mcorps,1,53) < CORPS_ACTIVITY_33710 then
			s_addCorpsVar(mcorps,1,53,s_getCorpsVar(mcorps,1,53)+1)
		end
		local list = s_getNineEntry(SCENE_ENTRY_NPC,thisid,30)
		for i = 1, table.getn(list), 2 do
			if list[i] == SCENE_ENTRY_PLAYER and mcorps == s_getCorpsId(list[i+1]) then
				if s_getVar(list[i+1],130,11) == 0 then
					s_setVar(list[i+1],130,11,1)
					s_setVar(list[i+1],130,100,s_getVar(list[i+1],130,100)+1)
					s_debugUser(list[i+1],"团活力，击败魔甲BOSS，参与度：1")
				end
			elseif list[i] == SCENE_ENTRY_NPC and s_getValue(SCENE_ENTRY_NPC,list[i+1],VALUE_TYPE_NPCTYPE) == NPC_TYPE_ARMYEQUIP then
				local murderlist = s_getEquipEntry(list[i+1])
				for i,memberid in ipairs(murderlist) do
					if s_getCorpsId(memberid) == mcorps then
						if s_getVar(memberid,130,11) == 0 then
							s_setVar(memberid,130,11,1)
							s_setVar(memberid,130,100,s_getVar(memberid,130,100)+1)
							s_debugUser(memberid,"团活力，击败魔甲BOSS，参与度：1")
						end
					end
				end
			end
		end
	end
end
function OnNpcDeadEvent20022(thisid,mid)
	local x = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSX)
	local y = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSY)
	local sid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	for i=1,math.random(2,3) do
		s_addSceneItem(27201,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(2,3) do
		s_addSceneItem(27211,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(2,3) do
		s_addSceneItem(27221,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(2,3) do
		s_addSceneItem(27231,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(2,3) do
		s_addSceneItem(27241,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(20,25) do
		s_addSceneItem(27108,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(10,15) do
		s_addSceneItem(27123,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(15,20) do
		s_addSceneItem(27126,1,sid,x,y,0,"1-1")
	end
	local mcorps = s_getCorpsId(mid)
	if mcorps ~= nil and mcorps ~= 0 then
		if s_getVar(mid,130,11) == 0 then
			s_setVar(mid,130,11,1)
			s_setVar(mid,130,100,s_getVar(mid,130,100)+1)
			s_debugUser(mid,"团活力，击败魔甲BOSS，参与度：1")
		end
		if s_getCorpsVar(mcorps,1,53) < CORPS_ACTIVITY_33710 then
			s_addCorpsVar(mcorps,1,53,s_getCorpsVar(mcorps,1,53)+1)
		end
		local list = s_getNineEntry(SCENE_ENTRY_NPC,thisid,30)
		for i = 1, table.getn(list), 2 do
			if list[i] == SCENE_ENTRY_PLAYER and mcorps == s_getCorpsId(list[i+1]) then
				if s_getVar(list[i+1],130,11) == 0 then
					s_setVar(list[i+1],130,11,1)
					s_setVar(list[i+1],130,100,s_getVar(list[i+1],130,100)+1)
					s_debugUser(list[i+1],"团活力，击败魔甲BOSS，参与度：1")
				end
			elseif list[i] == SCENE_ENTRY_NPC and s_getValue(SCENE_ENTRY_NPC,list[i+1],VALUE_TYPE_NPCTYPE) == NPC_TYPE_ARMYEQUIP then
				local murderlist = s_getEquipEntry(list[i+1])
				for i,memberid in ipairs(murderlist) do
					if s_getCorpsId(memberid) == mcorps then
						if s_getVar(memberid,130,11) == 0 then
							s_setVar(memberid,130,11,1)
							s_setVar(memberid,130,100,s_getVar(memberid,130,100)+1)
							s_debugUser(memberid,"团活力，击败魔甲BOSS，参与度：1")
						end
					end
				end
			end
		end
	end
end
function OnNpcDeadEvent20023(thisid,mid)
	local x = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSX)
	local y = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSY)
	local sid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	for i=1,math.random(2,3) do
		s_addSceneItem(27201,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(2,3) do
		s_addSceneItem(27211,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(2,3) do
		s_addSceneItem(27221,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(2,3) do
		s_addSceneItem(27231,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(2,3) do
		s_addSceneItem(27241,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(20,25) do
		s_addSceneItem(27108,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(10,15) do
		s_addSceneItem(27123,1,sid,x,y,0,"1-1")
	end
	for i=1,math.random(15,20) do
		s_addSceneItem(27126,1,sid,x,y,0,"1-1")
	end
	local mcorps = s_getCorpsId(mid)
	if mcorps ~= nil and mcorps ~= 0 then
		if s_getVar(mid,130,11) == 0 then
			s_setVar(mid,130,11,1)
			s_setVar(mid,130,100,s_getVar(mid,130,100)+1)
			s_debugUser(mid,"团活力，击败魔甲BOSS，参与度：1")
		end
		if s_getCorpsVar(mcorps,1,53) < CORPS_ACTIVITY_33710 then
			s_addCorpsVar(mcorps,1,53,s_getCorpsVar(mcorps,1,53)+1)
		end
		local list = s_getNineEntry(SCENE_ENTRY_NPC,thisid,30)
		for i = 1, table.getn(list), 2 do
			if list[i] == SCENE_ENTRY_PLAYER and mcorps == s_getCorpsId(list[i+1]) then
				if s_getVar(list[i+1],130,11) == 0 then
					s_setVar(list[i+1],130,11,1)
					s_setVar(list[i+1],130,100,s_getVar(list[i+1],130,100)+1)
					s_debugUser(list[i+1],"团活力，击败魔甲BOSS，参与度：1")
				end
			elseif list[i] == SCENE_ENTRY_NPC and s_getValue(SCENE_ENTRY_NPC,list[i+1],VALUE_TYPE_NPCTYPE) == NPC_TYPE_ARMYEQUIP then
				local murderlist = s_getEquipEntry(list[i+1])
				for i,memberid in ipairs(murderlist) do
					if s_getCorpsId(memberid) == mcorps then
						if s_getVar(memberid,130,11) == 0 then
							s_setVar(memberid,130,11,1)
							s_setVar(memberid,130,100,s_getVar(memberid,130,100)+1)
							s_debugUser(memberid,"团活力，击败魔甲BOSS，参与度：1")
						end
					end
				end
			end
		end
	end
end
s_setNpcDeadEvent(20021)
s_setNpcDeadEvent(20022)
s_setNpcDeadEvent(20023)
