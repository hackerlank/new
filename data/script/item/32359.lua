--装备奖励
function OnUseItemEventnvshenitem2(uid,thisid,quality)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local pro = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_PROFESSION)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEventnvshenitem") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if pro == Profession_Soldier then pro = 1 mo = 1
	elseif pro == Profession_Spy then pro = 2 mo = 2
	elseif pro == Profession_Gunman then pro = 3 mo = 1
	elseif pro == Profession_Blast then pro = 4 mo = 2
	elseif pro == Profession_Freeman then pro = 5 mo = 2
	elseif pro == Profession_Doctor then pro = 6 mo = 2
	end
	itemlevel = 7
	x = math.random(1,160)
	if x <= 10 then s_addItem(uid,14100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 20 then	s_addItem(uid,14200+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 30 then	s_addItem(uid,15100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 40 then	s_addItem(uid,15200+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 50 then	s_addItem(uid,16100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 60 then	s_addItem(uid,16200+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 70 then	s_addItem(uid,17100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 80 then	s_addItem(uid,17200+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK	end
	if x <= 90 then	s_addItem(uid,18100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657")	return VALUE_OK	end
	if x <= 100 then s_addItem(uid,18200+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK end
	if x <= 110 then s_addItem(uid,19100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK end
	if x <= 120 then s_addItem(uid,19200+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK end
	if x <= 130 then s_addItem(uid,1000*pro+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK end
	if x <= 140 then s_addItem(uid,11000+mo*100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK end
	if x <= 150 then s_addItem(uid,12000+mo*100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK end
	if x <= 160 then s_addItem(uid,13000+mo*100+itemlevel,0,1,1,quality,"OnUseItemEvent_31657") return VALUE_OK end
	return VALUE_OK
end

--完美绿色10星装备宝箱
function OnUseItemEvent_32359(uid,thisid)	return OnUseItemEventnvshenitem2(uid, thisid, "1-1,2-10,6-2,7-3","10星绿色装备")	end
