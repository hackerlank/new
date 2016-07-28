--命运房间宝箱
function OnNpcDeadEvent_Fate(thisid,mid)
	local ctype = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_TYPE)
	local cid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_POSY)

	if ctype == 40 then OnNpcDeadEvent22400_40(cid,posx,posy) end
	if ctype == 41 then OnNpcDeadEvent22400_41(cid,posx,posy) end
	if ctype == 42 then OnNpcDeadEvent22400_42(cid,posx,posy) end
	if ctype == 43 then OnNpcDeadEvent22400_43(cid,posx,posy) end
	if ctype == 44 then OnNpcDeadEvent22400_44(cid,posx,posy) end
	if ctype == 45 then OnNpcDeadEvent22400_45(cid,posx,posy) end
	if ctype == 46 then OnNpcDeadEvent22400_46(cid,posx,posy) end
	if ctype == 47 then OnNpcDeadEvent22400_47(cid,posx,posy) end
	if ctype == 48 then OnNpcDeadEvent22400_48(cid,posx,posy) end
	if ctype == 49 then OnNpcDeadEvent22400_49(cid,posx,posy) end
	if ctype == 53 then OnNpcDeadEvent22400_53(cid,posx,posy) end
	if ctype == 54 then OnNpcDeadEvent22400_54(cid,posx,posy) end
end
function OnNpcDeadEvent22400_40(cid,posx,posy)
	local game = s_getSceneVar(cid,0,4)
	if game == 1 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(1,3),cid,posx,posy)
		end
		s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
	end
	if game == 2 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(1,3),cid,posx,posy)
		end
		s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
		s_addSceneItem(29049,2,cid,posx,posy,0,"1-1")
	end
	local clevel = s_getSceneVar(cid,0,1)
	local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
	for i = 1,table.getn(list), 2 do
		local level = s_getValue(list[i],list[i+1],VALUE_TYPE_LEVEL)
		if level > 0 and clevel > 0 then
			local exp = 15 *(30+level^1.5)*(1+0.15*(clevel -1))
			s_refreshExp(list[i+1],exp,ExpType_Fate,0)
		end
	end
end

function OnNpcDeadEvent22400_41(cid,posx,posy)
	local game = s_getSceneVar(cid,0,4)
	if game == 1 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(3,9),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
		end
	end
	if game == 2 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(3,9),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
			local thisid = s_addSceneItem(29049,2,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
		end
	end
	if game == 3 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(3,9),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		local bossnum = 25/(table.getn(list) / 2)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5 + bossnum,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
		end
	end
	if game == 4 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(3,9),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,10,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
		end
		for i = 1,30 do
			s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
		end
	end
	local clevel = s_getSceneVar(cid,0,1)
	local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
	for i = 1,table.getn(list), 2 do
		local level = s_getValue(list[i],list[i+1],VALUE_TYPE_LEVEL)
		if level > 0 and clevel > 0 then
			local exp = 15 *(30+level^1.5)*(1+0.15*(clevel -1))
			s_refreshExp(list[i+1],exp,ExpType_Fate,0)
		end
	end
end
function OnNpcDeadEvent22400_42(cid,posx,posy)
	local game = s_getSceneVar(cid,0,4)
	if game == 1 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(5,15),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
		end
	end
	if game == 2 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(5,15),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
			local thisid = s_addSceneItem(29049,2,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
		end
	end
	if game == 3 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(5,15),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		local bossnum = 30/(table.getn(list) / 2)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5 + bossnum,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
		end
	end
	if game == 4 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(5,15),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,10,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
		end
		local gem = {27201,27211,27221,27231,27241}
		for i = 1,6 do
			s_addSceneItem(gem[math.random(1,5)],2,cid,posx,posy,0,"1-1")
		end
	end
	local clevel = s_getSceneVar(cid,0,1)
	local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
	for i = 1,table.getn(list), 2 do
		local level = s_getValue(list[i],list[i+1],VALUE_TYPE_LEVEL)
		if level > 0 and clevel > 0 then
			local exp = 20 *(30+level^1.5)*(1+0.15*(clevel -1))
			s_refreshExp(list[i+1],exp,ExpType_Fate,0)
		end
	end
end
function OnNpcDeadEvent22400_43(cid,posx,posy)
	local game = s_getSceneVar(cid,0,4)
	if game == 1 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(7,21),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
		end
	end
	if game == 2 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(7,21),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			local thisid = s_addSceneItem(29049,2,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
		end
	end
	if game == 3 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(7,21),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		local bossnum = 30/(table.getn(list) / 2)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5 + bossnum,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
		end
	end
	if game == 4 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(7,21),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,10,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
		end
		local gem = {27201,27211,27221,27231,27241}
		for i = 1,10 do
			s_addSceneItem(gem[math.random(1,5)],2,cid,posx,posy,0,"1-1")
		end
	end
	local clevel = s_getSceneVar(cid,0,1)
	local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
	for i = 1,table.getn(list), 2 do
		local level = s_getValue(list[i],list[i+1],VALUE_TYPE_LEVEL)
		if level > 0 and clevel > 0 then
			local exp = 25 *(30+level^1.5)*(1+0.15*(clevel -1))
			s_refreshExp(list[i+1],exp,ExpType_Fate,0)
		end
	end
end
function OnNpcDeadEvent22400_44(cid,posx,posy)
	local game = s_getSceneVar(cid,0,4)
	if game == 1 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(9,27),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
		end
	end
	if game == 2 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(9,27),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
			local thisid = s_addSceneItem(29049,2,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
		end
	end
	if game == 3 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(9,27),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		local bossnum = 35/(table.getn(list) / 2)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5 + bossnum,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
		end
	end
	if game == 4 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(9,27),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,10,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
		end
		local gem = {27201,27211,27221,27231,27241}
		for i = 1,15 do
			s_addSceneItem(gem[math.random(1,5)],2,cid,posx,posy,0,"1-1")
		end
	end
	local clevel = s_getSceneVar(cid,0,1)
	local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
	for i = 1,table.getn(list), 2 do
		local level = s_getValue(list[i],list[i+1],VALUE_TYPE_LEVEL)
		if level > 0 and clevel > 0 then
			local exp = 30 *(30+level^1.5)*(1+0.15*(clevel -1))
			s_refreshExp(list[i+1],exp,ExpType_Fate,0)
		end
	end
end
function OnNpcDeadEvent22400_45(cid,posx,posy)
	local game = s_getSceneVar(cid,0,4)
	if game == 1 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(11,33),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
		end
	end
	if game == 2 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(11,33),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			local thisid = s_addSceneItem(29049,2,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
		end
	end
	if game == 3 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(11,33),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		local bossnum = 40/(table.getn(list) / 2)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5 + bossnum,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
		end
	end
	if game == 4 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(11,33),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,10,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
		end
		local gem = {27201,27211,27221,27231,27241}
		for i = 1,20 do
			s_addSceneItem(gem[math.random(1,5)],2,cid,posx,posy,0,"1-1")
		end
	end
	local clevel = s_getSceneVar(cid,0,1)
	local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
	for i = 1,table.getn(list), 2 do
		local level = s_getValue(list[i],list[i+1],VALUE_TYPE_LEVEL)
		if level > 0 and clevel > 0 then
			local exp = 30 *(30+level^1.5)*(1+0.15*(clevel -1))
			s_refreshExp(list[i+1],exp,ExpType_Fate,0)
		end
	end
end

function OnNpc22400DeadAdd(uid,cid,posx,posy,baseid,num)
	local thisid = s_addSceneItem(baseid,num,cid,posx,posy,0,"1-1")
	if thisid ~= 0 and thisid ~= nil then
		s_setSceneItemValue(thisid,2,1)     --属主类型
		s_setSceneItemValue(thisid,3,uid)   --属主id
		s_setSceneItemValue(thisid,4,61)   --属主保护时间
	end
end

function OnNpcDeadEvent22400_46(cid,posx,posy)
	local game = s_getSceneVar(cid,0,4)
	if game == 1 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
		end
	end
	if game == 2 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
			local thisid = s_addSceneItem(29049,2,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
		end
	end
	if game == 3 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		local bossnum = 45/(table.getn(list) / 2)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5 + bossnum,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 4 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,10,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
		local gem = {27201,27211,27221,27231,27241}
		for i = 1,25 do
			s_addSceneItem(gem[math.random(1,5)],2,cid,posx,posy,0,"1-1")
		end
	end
	local clevel = s_getSceneVar(cid,0,1)
	local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
	for i = 1,table.getn(list), 2 do
		local level = s_getValue(list[i],list[i+1],VALUE_TYPE_LEVEL)
		if level > 0 and clevel > 0 then
			local exp = 40 *(30+level^1.5)*(1+0.15*(clevel -1))
			s_refreshExp(list[i+1],exp,ExpType_Fate,0)
		end
	end
end

function OnNpcDeadEvent22400_47(cid,posx,posy)
	local game = s_getSceneVar(cid,0,4)
	if game == 1 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			--OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 2 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			local thisid = s_addSceneItem(29049,2,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
			--OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 3 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		local bossnum = 45/(table.getn(list) / 2)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5 + bossnum,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 4 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,10,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
		local gem = {27201,27211,27221,27231,27241}
		for i = 1,25 do
			s_addSceneItem(gem[math.random(1,5)],2,cid,posx,posy,0,"1-1")
		end
	end
	local clevel = s_getSceneVar(cid,0,1)
	local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
	for i = 1,table.getn(list), 2 do
		local level = s_getValue(list[i],list[i+1],VALUE_TYPE_LEVEL)
		if level > 0 and clevel > 0 then
			local exp = 40 *(30+level^1.5)*(1+0.15*(clevel -1))
			s_refreshExp(list[i+1],exp,ExpType_Fate,0)
		end
	end
end

function OnNpcDeadEvent22400_48(cid,posx,posy)
	local game = s_getSceneVar(cid,0,4)
	if game == 1 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			--OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 2 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			local thisid = s_addSceneItem(29049,2,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
			--OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 3 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		local bossnum = 45/(table.getn(list) / 2)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5 + bossnum,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 4 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,10,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
		local gem = {27201,27211,27221,27231,27241}
		for i = 1,25 do
			s_addSceneItem(gem[math.random(1,5)],2,cid,posx,posy,0,"1-1")
		end
	end
	local clevel = s_getSceneVar(cid,0,1)
	local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
	for i = 1,table.getn(list), 2 do
		local level = s_getValue(list[i],list[i+1],VALUE_TYPE_LEVEL)
		if level > 0 and clevel > 0 then
			local exp = 40 *(30+level^1.5)*(1+0.15*(clevel -1))
			s_refreshExp(list[i+1],exp,ExpType_Fate,0)
		end
	end
end

function OnNpcDeadEvent22400_49(cid,posx,posy)
	local game = s_getSceneVar(cid,0,4)
	if game == 1 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			--OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 2 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			local thisid = s_addSceneItem(29049,2,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
			--OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 3 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		local bossnum = 45/(table.getn(list) / 2)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5 + bossnum,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 4 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,10,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
		local gem = {27201,27211,27221,27231,27241}
		for i = 1,25 do
			s_addSceneItem(gem[math.random(1,5)],2,cid,posx,posy,0,"1-1")
		end
	end
	local clevel = s_getSceneVar(cid,0,1)
	local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
	for i = 1,table.getn(list), 2 do
		local level = s_getValue(list[i],list[i+1],VALUE_TYPE_LEVEL)
		if level > 0 and clevel > 0 then
			local exp = 40 *(30+level^1.5)*(1+0.15*(clevel -1))
			s_refreshExp(list[i+1],exp,ExpType_Fate,0)
		end
	end
end

function OnNpcDeadEvent22400_53(cid,posx,posy)
	local game = s_getSceneVar(cid,0,4)
	if game == 1 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			--OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 2 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			local thisid = s_addSceneItem(29049,2,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
			--OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 3 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		local bossnum = 45/(table.getn(list) / 2)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5 + bossnum,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 4 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,10,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
		local gem = {27201,27211,27221,27231,27241}
		for i = 1,25 do
			s_addSceneItem(gem[math.random(1,5)],2,cid,posx,posy,0,"1-1")
		end
	end
	local clevel = s_getSceneVar(cid,0,1)
	local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
	for i = 1,table.getn(list), 2 do
		local level = s_getValue(list[i],list[i+1],VALUE_TYPE_LEVEL)
		if level > 0 and clevel > 0 then
			local exp = 40 *(30+level^1.5)*(1+0.15*(clevel -1))
			s_refreshExp(list[i+1],exp,ExpType_Fate,0)
		end
	end
end

function OnNpcDeadEvent22400_54(cid,posx,posy)
	local game = s_getSceneVar(cid,0,4)
	if game == 1 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			--OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 2 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			local thisid = s_addSceneItem(29049,2,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
			end
			--OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 3 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		local bossnum = 45/(table.getn(list) / 2)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,5 + bossnum,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
	end
	if game == 4 then
		for i=1,6 do	--绑银
			s_addSceneItem(4,math.random(13,39),cid,posx,posy)
		end
		local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
		for i = 1,table.getn(list), 2 do	--升级宝石
			local thisid = s_addSceneItem(27108,10,cid,posx,posy,0,"1-1")
			if thisid ~= 0 and thisid ~= nil then
				s_setSceneItemValue(thisid,2,1)     --属主类型
				s_setSceneItemValue(thisid,3,list[i+1])   --属主id
				s_setSceneItemValue(thisid,4,61)   --属主保护时间
			end
			OnNpc22400DeadAdd(list[i+1],cid,posx,posy,27199,1)
		end
		local gem = {27201,27211,27221,27231,27241}
		for i = 1,25 do
			s_addSceneItem(gem[math.random(1,5)],2,cid,posx,posy,0,"1-1")
		end
	end
	local clevel = s_getSceneVar(cid,0,1)
	local list = s_getCopyEntry(cid,SCENE_ENTRY_PLAYER)
	for i = 1,table.getn(list), 2 do
		local level = s_getValue(list[i],list[i+1],VALUE_TYPE_LEVEL)
		if level > 0 and clevel > 0 then
			local exp = 40 *(30+level^1.5)*(1+0.15*(clevel -1))
			s_refreshExp(list[i+1],exp,ExpType_Fate,0)
		end
	end
end
RegisterMyNpcDeadEvent(22400,"OnNpcDeadEvent_Fate($2,$1)")
