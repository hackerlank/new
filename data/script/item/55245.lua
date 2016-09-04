--圣诞小金锤
function OnUseItemEvent_55245(uid,thisid,targetid)
	local targetbaseid = s_getitembaseid(uid,targetid)
	if targetbaseid == nil or targetbaseid == 0 then
		s_sysInfo(uid,"无效的目标道具")
		return VALUE_FAIL
	end
	if targetbaseid ~= ItemID_Christmas_Silver_Egg and  targetbaseid ~= ItemID_Christmas_Gold_Egg then
		s_messageBox(uid,"小金锤只能用来砸开圣诞彩蛋！")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55245") == VALUE_OK and s_deleteItemByThisID(uid,targetid,1,"OnUseItemEvent_55245") == VALUE_OK then
		if targetbaseid == ItemID_Christmas_Silver_Egg then
			s_sysInfo(uid,"银蛋银蛋，新鲜的银蛋被您砸开了")
			Dealitem_goldenballs(uid)
			return VALUE_OK
		else
			s_sysInfo(uid,"金蛋金蛋，新鲜的金蛋被您砸开了")
			Dealitem_goldenballs2(uid)
			return VALUE_OK
		end
	end
end

--银蛋
function Dealitem_goldenballs(uid)
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
		s_countryInfo(country,"<p><n>【系】恭喜"..name.."</n><n>砸开圣诞银蛋，意外获得了500赠点券！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9095 then
		s_addItem(uid,32212,3,1,0,"","3等宝石盒子")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>砸开圣诞银蛋，意外获得了3等宝石盒子！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9795 then
		s_addItem(uid,26104,3,1,0,"1-1","重铸材料")
		s_countryInfo(country,"<p><n>【系】恭喜"..name.."</n><n>砸开圣诞银蛋，意外获得了重铸材料！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9945 then
		s_addItem(uid,27110,3,1,1,"2-4","4等金刚钻")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>砸开圣诞银蛋，意外获得了4等金刚钻！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
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
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>砸开圣诞银蛋，意外获得了神谕道具！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9999 then
		if sex ==1 then
			s_addItem(uid,math.random(20244,20255),3,1,1,"3-2592000","10%男属性时装")
		else
			s_addItem(uid,math.random(20256,20267),3,1,1,"3-2592000","10%女属性时装")
		end
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>砸开圣诞银蛋，意外获得了十二星宫角色时装（10%属性，30天）！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 10000 then
		s_addItem(uid,52047,3,1,1,"3-2592000","坐骑时装感恩")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>砸开圣诞银蛋，意外获得了噬魂战骑坐骑时装（10%属性，30天）！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	end
end


--金蛋
function Dealitem_goldenballs2(uid)
	local worldlevel = s_getWorldLevel()
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	local rand = math.random(1,10000)
	if rand <= 2500 then
		s_addItem(uid,26102,3,20,0,"1-1","幸运宝石")
	elseif rand <= 5000 then
		s_addItem(uid,14,3,4,0,"1-1","赠点券")
		s_countryInfo(country,"<p><n>【系】恭喜"..name.."</n><n>砸开圣诞金蛋，意外获得了4000赠点券！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 6000 then
		s_addItem(uid,32212,3,3,0,"","3等宝石盒子")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>砸开圣诞金蛋，意外获得了3个3等宝石盒子！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 7000 then
		s_addItem(uid,26104,3,8,0,"1-1","重铸材料")
		s_countryInfo(country,"<p><n>【系】恭喜"..name.."</n><n>砸开圣诞金蛋，意外获得了8个重铸材料！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 7500 then
		s_addItem(uid,27110,3,1,1,"2-4","4等金刚钻")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>砸开圣诞金蛋，意外获得了4等金刚钻！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9000 then
		s_addItem(uid,55048,3,1,0,"1-1,7-1","神之水滴")
	elseif rand <= 9400 then
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
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>砸开圣诞金蛋，意外获得了神谕道具！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9900 then
		s_addItem(uid,32237,3,1,0,"1-1","白色星耀石礼盒")
		s_countryInfo(country,"<p><n>【系】恭喜"..name.."</n><n>砸开圣诞金蛋，意外获得了白色星耀石礼盒！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9960 then
		s_addItem(uid,27125,3,5,0,"1-1","羽灵")
		s_countryInfo(country,"<p><n>【系】恭喜"..name.."</n><n>砸开圣诞金蛋，意外获得了羽灵*5！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9992 then
		if sex ==1 then
			s_addItem(uid,math.random(20244,20255),3,1,1,"3-2592000","10%男属性时装")
		else
			s_addItem(uid,math.random(20256,20267),3,1,1,"3-2592000","10%女属性时装")
		end
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>砸开圣诞金蛋，意外获得了十二星宫角色时装（10%属性，30天）！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 10000 then
		s_addItem(uid,52047,3,1,1,"3-2592000","坐骑时装感恩")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>砸开圣诞金蛋，意外获得了噬魂战骑坐骑时装（10%属性，30天）！</n><book bookid='70271'>[关于]</book></p>",ChatPos_Sys + ChatPos_Honor)
	end
end
