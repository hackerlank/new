function Dealitem_turkey(uid)
	local worldlevel = s_getWorldLevel()
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	local rand = math.random(1,10000)
	if rand <= 2500 then
		s_addItem(uid,26102,3,2,0,"1-1","幸运宝石")
	elseif rand <= 5000 then
		if worldlevel <=3 then
			s_addItem(uid,26141,3,3,0,"1-1","初级生命精华")
		else
			s_addItem(uid,26145,3,2,0,"1-1","高级生命精华")
		end
	elseif rand <= 7500 then
		s_addItem(uid,23051,3,15,0,"1-1","经验药剂小")
	elseif rand <= 8000 then
		s_addItem(uid,31479,3,1,0,"1-1","装备盒")
	elseif rand <= 8995 then
		s_addItem(uid,10,3,5,0,"1-1","赠点券")
		s_countryInfo(country,"<p><n>【系】恭喜"..name.."</n><n>打开感恩礼包，意外获得了500赠点券！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9095 then
		s_addItem(uid,32212,3,1,0,"","3等宝石盒子")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>打开感恩礼包，意外获得了3等宝石盒子！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9795 then
		s_addItem(uid,26104,3,1,0,"1-1","重铸材料")
		s_countryInfo(country,"<p><n>【系】恭喜"..name.."</n><n>打开感恩礼包，意外获得了重铸材料！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9945 then
		s_addItem(uid,27110,3,1,1,"2-4","4等金刚钻")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>打开感恩礼包，意外获得了4等金刚钻！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9998 then
		local	rand2 =  math.random(1,4)
		if	rand2 == 1 then
			s_addItem(uid,27131,3,1,0,"","神谕道具")
		elseif rand2 == 2 then
			s_addItem(uid,27141,3,1,0,"","神谕道具")
		elseif rand2 == 3 then
			s_addItem(uid,27151,3,1,0,"","神谕道具")
		elseif rand2 == 4 then
			s_addItem(uid,27161,3,1,0,"","神谕道具")
		end
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>打开感恩礼包，意外获得了神谕道具！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9999 then
		if sex ==1 then
			s_addItem(uid,math.random(20244,20255),3,1,1,"3-2592000","10%男属性时装")
		else
			s_addItem(uid,math.random(20256,20267),3,1,1,"3-2592000","10%女属性时装")
		end
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>打开感恩礼包，意外获得了十二星宫角色时装（10%属性，30天）！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 10000 then
		s_addItem(uid,52047,3,1,1,"3-2592000","坐骑时装感恩")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>打开感恩礼包，意外获得了噬魂战骑坐骑时装（10%属性，30天）！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	end
end

--感恩火鸡
function OnUseItemEvent_55038(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"删除感恩礼包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	Dealitem_turkey(uid)
	s_addVar(uid,10007,6,s_getVar(uid,10007,6)+1)
	if	s_getVar(uid,10007,6) >= 10 then
		s_addVar(uid,10007,6,0)
		s_addItem(uid,55040,3,1,1,"1-1","火鸡的精华")
	end
	return VALUE_OK
end

--精品感恩火鸡
function OnUseItemEvent_55039(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"删除精品感恩礼包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	for i=1,10 do
		Dealitem_turkey(uid)
	end
	s_addItem(uid,55040,3,1,1,"1-1","火鸡的精华")
	return VALUE_OK
end
