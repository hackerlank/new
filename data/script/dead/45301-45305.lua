--农场守望者

function DropWhiteFarmGuardItem(npcid,mid,level)
	if mid == nil or mid == 0 then return end

	local cid = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_POSY)
	local droprand = math.random(1,100)
	if droprand <= 50 then
		local itemrand = math.random(1,2)
		if itemrand == 1 then
			s_addSceneItem(63001,1,cid,posx,posy)
		else
			s_addSceneItem(63002,1,cid,posx,posy)
		end
	end
end
function DropBlueFarmGuardItem(npcid,mid,level)
	local NUM1 = {6, 8, 11, 15, 19, 22, 25, 28, 31, 34}
	local NUM2 = { 23, 28, 29, 32, 35, 36, 38, 39, 41, 42}

	if mid == nil or mid == 0 then return end

	local cid = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_POSY)
	for i = 1,NUM2[level] do
		local num = NUM1[level] + math.random(-NUM1[level]*0.2,NUM1[level]*0.2)
		s_addSceneItem(4,num,cid,posx,posy)
	end
	local droprand = math.random(1,100)
	if droprand <= 60 then
		local itemrand = math.random(1,2)
		if itemrand == 1 then
			s_addSceneItem(63001,1,cid,posx,posy)
		else
			s_addSceneItem(63002,1,cid,posx,posy)
		end
	end
end
function DropYelloFarmGuardItem(npcid,mid,level)
	local NUM1 = { 13, 19, 25, 35, 45, 53, 60, 68, 75, 83}
	local NUM2 = { 32, 35, 38, 41, 44, 45, 47, 49, 50, 51}

	if mid == nil or mid == 0 then return end

	local world_level = s_getWorldLevel()
	local cid = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_POSY)

	for i = 1,math.random(10,15) do	--血精石
		s_addSceneItem(29026,1,cid,posx,posy,0,"1-1")
	end

	----团boss常规道具
	for i = 1,5 do	--魔甲材料
		s_addSceneItem(27115,1,cid,posx,posy,0,"1-1")
	end
	--for i=1,3 do
	--	local rand = math.random(0,100)
	--	if rand <= 50 then	 --矿石焊枪
	--		local rnd = math.random(0,100)
	--		if rnd <= 50 then
	--			s_addSceneItem(29006,1,cid,posx,posy,0,"1-1")
	--		elseif rnd <= 80 then
	--			s_addSceneItem(29007,1,cid,posx,posy,0,"1-1")
	--		else
	--			s_addSceneItem(29008,1,cid,posx,posy,0,"1-1")
	--		end
	--	else  --伐木电锯
	--		local rnd = math.random(0,100)
	--		if rnd <= 50 then
	--			s_addSceneItem(29010,1,cid,posx,posy,0,"1-1")
	--		elseif rnd <= 80 then
	--			s_addSceneItem(29011,1,cid,posx,posy,0,"1-1")
	--		else
	--			s_addSceneItem(29012,1,cid,posx,posy,0,"1-1")
	--		end
	--	end
	--end
	for i = 1,NUM2[level] do	--绑银
		local num = NUM1[level] + math.random(-NUM1[level]*0.2,NUM1[level]*0.2)
		s_addSceneItem(4,num,cid,posx,posy)
	end
	local droprand = math.random(1,100)
	if droprand <= 70 then
		local itemrand = math.random(1,2)
		if itemrand == 1 then
			s_addSceneItem(63001,1,cid,posx,posy)
		else
			s_addSceneItem(63002,1,cid,posx,posy)
		end
	end
end
function DropGreenFarmGuardItem(npcid,mid,level)
	local NUM1 = { 13, 19, 25, 35, 45, 53, 60, 68, 75, 83}
	local NUM2 = { 32, 35, 38, 41, 44, 45, 47, 49, 50, 51}

	if mid == nil or mid == 0 then return end

	local world_level = s_getWorldLevel()
	local cid = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_POSY)

	for i = 1,math.random(10,15) do	--血精石
		s_addSceneItem(29026,1,cid,posx,posy,0,"1-1")
	end
	for i = 1,math.random(20,28) do	--升级宝石
		if world_level == 1 then
			s_addSceneItem(27108,1,cid,posx,posy,0,"1-1")
	else
		s_addSceneItem(27108,1,cid,posx,posy,0,"1-1")
	end
	end
	for i = 1,math.random(5,7) do	--装备包
		s_addSceneItem(31410,1,cid,posx,posy,0,"1-1")
	end

	--local gem_1_1 ={27201,27211,27221,27231,27241}
	--local gem_2_1 ={27251,27261,27271,27281,27291}镶嵌宝石
	--for i = 1,math.random(8,15) do	--镶嵌宝石
	--	if world_level <= 5 then
	--		s_addSceneItem(gem_1_1[math.random(1,5)],1,cid,posx,posy,0,"1-1")
	--	else
	--		s_addSceneItem(gem_2_1[math.random(1,5)],1,cid,posx,posy,0,"1-1")
	--	end
	--end
	----团boss常规道具
	for i = 1,7 do	--魔甲材料
		s_addSceneItem(27115,1,cid,posx,posy,0,"1-1")
	end
	for i = 1,NUM2[level] do	--绑银
		local num = NUM1[level] + math.random(-NUM1[level]*0.2,NUM1[level]*0.2)
		s_addSceneItem(4,num,cid,posx,posy)
	end
	local droprand = math.random(1,100)
	if droprand <= 80 then
		local itemrand = math.random(1,2)
		if itemrand == 1 then
			s_addSceneItem(63001,1,cid,posx,posy)
		else
			s_addSceneItem(63002,1,cid,posx,posy)
		end
	end
end
function DropPurpleFarmGuardItem(npcid,mid,level)
	local NUM1 = { 13, 19, 25, 35, 45, 53, 60, 68, 75, 83}
	local NUM2 = { 32, 35, 38, 41, 44, 45, 47, 49, 50, 51}

	if mid == nil or mid == 0 then return end

	local world_level = s_getWorldLevel()
	local cid = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_POSY)

	--local BOOK = {26115,26116,26117,26143}
	--for i = 1,math.random(2,4) do	--作战指南
	--	s_addSceneItem(BOOK[math.random(1,4)],1,cid,posx,posy,0,"1-1")	--作战指南
	--end

	for i = 1,math.random(10,15) do	--血精石
		s_addSceneItem(29026,1,cid,posx,posy,0,"1-1")
	end
	for i = 1,math.random(20,28) do	--升级宝石
		if world_level == 1 then
			s_addSceneItem(27108,1,cid,posx,posy,0,"1-1")
	else
		s_addSceneItem(27108,1,cid,posx,posy,0,"1-1")
	end
	end
	for i = 1,math.random(5,7) do	--装备包
		s_addSceneItem(31410,1,cid,posx,posy,0,"1-1")
	end
	for i = 1,math.random(10,15) do	--金刚钻
		s_addSceneItem(27110,1,cid,posx,posy,0,"1-1,2-2")
	end

	----团boss常规道具
	for i = 1,10 do	--魔甲材料
		s_addSceneItem(27115,1,cid,posx,posy,0,"1-1")
	end
	for i = 1,NUM2[level] do	--绑银
		local num = NUM1[level] + math.random(-NUM1[level]*0.2,NUM1[level]*0.2)
		s_addSceneItem(4,num,cid,posx,posy)
	end
	local itemrand = math.random(1,2)
	if itemrand == 1 then
		s_addSceneItem(63001,1,cid,posx,posy)
	else
		s_addSceneItem(63002,1,cid,posx,posy)
	end
end
-------------------------------------------------------------------------------
RegisterMyNpcDeadEvent(45301,"DropWhiteFarmGuardItem($2,$1,1)")
RegisterMyNpcDeadEvent(45302,"DropBlueFarmGuardItem($2,$1,1)")
RegisterMyNpcDeadEvent(45303,"DropYelloFarmGuardItem($2,$1,1)")
RegisterMyNpcDeadEvent(45304,"DropGreenFarmGuardItem($2,$1,1)")
RegisterMyNpcDeadEvent(45305,"DropPurpleFarmGuardItem($2,$1,1)")
-------------------------------------------------------------------------------
RegisterMyNpcDeadEvent(45306,"DropWhiteFarmGuardItem($2,$1,2)")
RegisterMyNpcDeadEvent(45307,"DropBlueFarmGuardItem($2,$1,2)")
RegisterMyNpcDeadEvent(45308,"DropYelloFarmGuardItem($2,$1,2)")
RegisterMyNpcDeadEvent(45309,"DropGreenFarmGuardItem($2,$1,2)")
RegisterMyNpcDeadEvent(45310,"DropPurpleFarmGuardItem($2,$1,2)")
-------------------------------------------------------------------------------
RegisterMyNpcDeadEvent(45311,"DropWhiteFarmGuardItem($2,$1,3)")
RegisterMyNpcDeadEvent(45312,"DropBlueFarmGuardItem($2,$1,3)")
RegisterMyNpcDeadEvent(45313,"DropYelloFarmGuardItem($2,$1,3)")
RegisterMyNpcDeadEvent(45314,"DropGreenFarmGuardItem($2,$1,3)")
RegisterMyNpcDeadEvent(45315,"DropPurpleFarmGuardItem($2,$1,3)")
-------------------------------------------------------------------------------
RegisterMyNpcDeadEvent(45316,"DropWhiteFarmGuardItem($2,$1,4)")
RegisterMyNpcDeadEvent(45317,"DropBlueFarmGuardItem($2,$1,4)")
RegisterMyNpcDeadEvent(45318,"DropYelloFarmGuardItem($2,$1,4)")
RegisterMyNpcDeadEvent(45319,"DropGreenFarmGuardItem($2,$1,4)")
RegisterMyNpcDeadEvent(45320,"DropPurpleFarmGuardItem($2,$1,4)")
-------------------------------------------------------------------------------
RegisterMyNpcDeadEvent(45321,"DropWhiteFarmGuardItem($2,$1,5)")
RegisterMyNpcDeadEvent(45322,"DropBlueFarmGuardItem($2,$1,5)")
RegisterMyNpcDeadEvent(45323,"DropYelloFarmGuardItem($2,$1,5)")
RegisterMyNpcDeadEvent(45324,"DropGreenFarmGuardItem($2,$1,5)")
RegisterMyNpcDeadEvent(45325,"DropPurpleFarmGuardItem($2,$1,5)")
-------------------------------------------------------------------------------
RegisterMyNpcDeadEvent(45326,"DropWhiteFarmGuardItem($2,$1,6)")
RegisterMyNpcDeadEvent(45327,"DropBlueFarmGuardItem($2,$1,6)")
RegisterMyNpcDeadEvent(45328,"DropYelloFarmGuardItem($2,$1,6)")
RegisterMyNpcDeadEvent(45329,"DropGreenFarmGuardItem($2,$1,6)")
RegisterMyNpcDeadEvent(45330,"DropPurpleFarmGuardItem($2,$1,6)")
-------------------------------------------------------------------------------
RegisterMyNpcDeadEvent(45331,"DropWhiteFarmGuardItem($2,$1,7)")
RegisterMyNpcDeadEvent(45332,"DropBlueFarmGuardItem($2,$1,7)")
RegisterMyNpcDeadEvent(45333,"DropYelloFarmGuardItem($2,$1,7)")
RegisterMyNpcDeadEvent(45334,"DropGreenFarmGuardItem($2,$1,7)")
RegisterMyNpcDeadEvent(45335,"DropPurpleFarmGuardItem($2,$1,7)")
-------------------------------------------------------------------------------
RegisterMyNpcDeadEvent(45336,"DropWhiteFarmGuardItem($2,$1,8)")
RegisterMyNpcDeadEvent(45337,"DropBlueFarmGuardItem($2,$1,8)")
RegisterMyNpcDeadEvent(45338,"DropYelloFarmGuardItem($2,$1,8)")
RegisterMyNpcDeadEvent(45339,"DropGreenFarmGuardItem($2,$1,8)")
RegisterMyNpcDeadEvent(45340,"DropPurpleFarmGuardItem($2,$1,8)")
-------------------------------------------------------------------------------
RegisterMyNpcDeadEvent(45341,"DropWhiteFarmGuardItem($2,$1,9)")
RegisterMyNpcDeadEvent(45342,"DropBlueFarmGuardItem($2,$1,9)")
RegisterMyNpcDeadEvent(45343,"DropYelloFarmGuardItem($2,$1,9)")
RegisterMyNpcDeadEvent(45344,"DropGreenFarmGuardItem($2,$1,9)")
RegisterMyNpcDeadEvent(45345,"DropPurpleFarmGuardItem($2,$1,9)")
-------------------------------------------------------------------------------
RegisterMyNpcDeadEvent(45346,"DropWhiteFarmGuardItem($2,$1,10)")
RegisterMyNpcDeadEvent(45347,"DropBlueFarmGuardItem($2,$1,10)")
RegisterMyNpcDeadEvent(45348,"DropYelloFarmGuardItem($2,$1,10)")
RegisterMyNpcDeadEvent(45349,"DropGreenFarmGuardItem($2,$1,10)")
RegisterMyNpcDeadEvent(45350,"DropPurpleFarmGuardItem($2,$1,10)")
-------------------------------------------------------------------------------
