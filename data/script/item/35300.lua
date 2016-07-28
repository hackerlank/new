
--装备奖励
function OnUseItemEventlianzhanitem(uid,thisid,quality)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEventlianzhanitem") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if pro == Profession_Soldier then pro = 1 mo = 1
	elseif pro == Profession_Spy then pro = 2 mo = 2
	elseif pro == Profession_Gunman then pro = 3 mo = 1
	elseif pro == Profession_Blast then pro = 4 mo = 2
	elseif pro == Profession_Freeman then pro = 5 mo = 2
	elseif pro == Profession_Doctor then pro = 6 mo = 2
	end
	if level < 61 then itemlevel = 5
	elseif level >= 61 and level <= 70 then itemlevel = 6
	elseif level >= 71 and level <= 80 then itemlevel = 7
	elseif level >= 81 and level <= 90 then	itemlevel = 8
	elseif level >= 91 and level <= 100 then	itemlevel = 9
	elseif level >= 101 and level <= 110 then	itemlevel = 10
	elseif level >= 111 and level <= 120 then	itemlevel = 11
	elseif level >= 121 and level <= 130 then	itemlevel = 12
	elseif level >= 131 and level <= 140 then	itemlevel = 13
	elseif level >= 141 then itemlevel = 14
	end
	s_addItem(uid,14100+itemlevel,0,1,1,quality,"OnUseItemEventlianzhanitem")
	s_addItem(uid,15100+itemlevel,0,1,1,quality,"OnUseItemEventlianzhanitem")
	s_addItem(uid,16200+itemlevel,0,1,1,quality,"OnUseItemEventlianzhanitem")
	s_addItem(uid,17100+itemlevel,0,1,1,quality,"OnUseItemEventlianzhanitem")
	s_addItem(uid,17200+itemlevel,0,1,1,quality,"OnUseItemEventlianzhanitem")
	s_addItem(uid,18100+itemlevel,0,1,1,quality,"OnUseItemEventlianzhanitem")
	s_addItem(uid,19200+itemlevel,0,1,1,quality,"OnUseItemEventlianzhanitem")
	s_addItem(uid,1000*pro+itemlevel,0,1,1,quality,"OnUseItemEventlianzhanitem")
	s_addItem(uid,11000+mo*100+itemlevel,0,1,1,quality,"OnUseItemEventlianzhanitem")
	s_addItem(uid,12000+mo*100+itemlevel,0,1,1,quality,"OnUseItemEventlianzhanitem")
	s_addItem(uid,12000+mo*100+itemlevel,0,1,1,quality,"OnUseItemEventlianzhanitem")
	s_addItem(uid,13000+mo*100+itemlevel,0,1,1,quality,"OnUseItemEventlianzhanitem")
	s_addItem(uid,13000+mo*100+itemlevel,0,1,1,quality,"OnUseItemEventlianzhanitem")
	return VALUE_OK
end

--连斩王活动绿装
function OnUseItemEvent_35300(uid,thisid)	return OnUseItemEventlianzhanitem(uid, thisid, "1-1,6-2,7-3","连斩王")	end
