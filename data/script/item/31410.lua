--塔布里斯装备礼盒
function OnUseItemEvent_31410(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local EQUIP = {141,142,151,152,161,162,171,172,181,182,191,192}
	local EQUIP1 = {151,152,161,162,171,172,181,182,191,192}
	local weapons = 10
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if pro ~= nil and pro ~= 0 then
		if pro == Profession_Soldier then
			weapons = 10
		end
		if pro == Profession_Spy then
			weapons = 20
		end
		if pro == Profession_Gunman then
			weapons = 30
		end
		if pro == Profession_Blast then
			weapons = 40
		end
		if pro == Profession_Freeman then
			weapons = 50
		end
		if pro == Profession_Doctor then
			weapons = 60
		end
		table.insert(EQUIP,weapons) --在表中插入武器
		if pro == Profession_Soldier or pro == Profession_Gunman then
			table.insert(EQUIP,111) --项链、勋章、戒指
			table.insert(EQUIP,121)
			table.insert(EQUIP,131)
			table.insert(EQUIP1,111)
			table.insert(EQUIP1,121)
			table.insert(EQUIP1,131)
		else
			table.insert(EQUIP,112) --项链、勋章、戒指
			table.insert(EQUIP,122)
			table.insert(EQUIP,132)
			table.insert(EQUIP1,112)
			table.insert(EQUIP1,122)
			table.insert(EQUIP1,132)
		end
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	if level<=60 then
		equip = EQUIP1[math.random(1,table.getn(EQUIP1))] * 100 + 5
	end
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","装备礼盒")

	local equip = EQUIP[math.random(1,table.getn(EQUIP))] * 100 + math.floor((level-1)/10)
	if level<=60 then
		equip = EQUIP1[math.random(1,table.getn(EQUIP1))] * 100 + 5
	end
	s_addItem(uid,equip,0,1,1,"1-1,7-2,6-1","装备礼盒")
	return VALUE_OK
end
