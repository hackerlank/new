NEW_YEAR_WORD1 = {"马上有钱","一马当先","马上有一切","马到成功","马跃檀溪","马上有房","马上有福","龙马精神","百事可乐"}
NEW_YEAR_WORD2 = { "心想事成","身体健康","岁岁平安","年年有余","财源广进","步步高升","吉祥如意","大吉大利","招财进宝"}

--神马拜年卡
function OnUseItemEvent_31310(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") == VALUE_FAIL then
		return VALUE_FAIL
	end
	local w1 = NEW_YEAR_WORD1[math.random(1,table.getn(NEW_YEAR_WORD1))]
	local w2 = NEW_YEAR_WORD2[math.random(1,table.getn(NEW_YEAR_WORD2))]
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	s_worldInfo("<p><n color='GXColorBlueSky'>["..name .. "]给大家拜年啦！大家"..w1.."，"..w2.."！</n></p>",ChatPos_Sys + ChatPos_Honor)
	OnUseItemEvent_31310item(uid,31310)
	return VALUE_OK
end
--骏马拜年卡
function OnUseItemEvent_31309(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") == VALUE_FAIL then
		return VALUE_FAIL
	end
	local w1 = NEW_YEAR_WORD1[math.random(1,table.getn(NEW_YEAR_WORD1))]
	local w2 = NEW_YEAR_WORD2[math.random(1,table.getn(NEW_YEAR_WORD2))]
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	s_countryInfo(country,"<p><n color='GXColorBlueSky'>["..name .. "]给大家拜年啦！祝大家"..w1.."，"..w2.."！</n></p>",ChatPos_Sys + ChatPos_Honor)
	OnUseItemEvent_31309item(uid,31309)
	return VALUE_OK
end
--阉割银龙拜年卡
function OnUseItemEvent_31347(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") == VALUE_FAIL then
		return VALUE_FAIL
	end
	local w1 = NEW_YEAR_WORD1[math.random(1,table.getn(NEW_YEAR_WORD1))]
	local w2 = NEW_YEAR_WORD2[math.random(1,table.getn(NEW_YEAR_WORD2))]
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	s_countryInfo(country,"<p><n color='GXColorBlueSky'>["..name .. "]给大家拜年啦！祝大家"..w1.."，"..w2.."！</n></p>",ChatPos_Sys + ChatPos_Honor)
	OnUseItemEvent_31309_31310(uid,31347)
	return VALUE_OK
end
function OnUseItemEvent_31309item(uid,baseid)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local rand = math.random(1,10000)
	if rand <= 1500 then
		s_addItem(uid,26102,3,3,0,"1-1","幸运宝石")
	elseif rand <= 3000 then
		s_addItem(uid,26102,3,2,0,"1-1","幸运宝石")
	elseif rand <= 4000 then
		s_addItem(uid,27108,3,6,0,"1-1","升级宝石")
	elseif rand <= 5000 then
		s_addItem(uid,27108,3,4,0,"1-1","升级宝石")
	elseif rand <= 5500 then
		s_addItem(uid,26128,3,6,0,"1-1","祝福宝石")
	elseif rand <= 6000 then
		s_addItem(uid,26128,3,4,0,"1-1","祝福宝石")
	elseif rand <= 6500 then
		s_addItem(uid,29026,3,20,0,"1-1","血精石")
	elseif rand <= 7000 then
		s_addItem(uid,29026,3,12,0,"1-1","血精石")
	elseif rand <= 7500 then
		s_addItem(uid,26113,3,12,0,"1-1","血精石")
	elseif rand <= 8000 then
		s_addItem(uid,26113,3,8,0,"1-1","血精石")
	elseif rand <= 9000 then
		local	rand2 =  math.random(1,4)
		if	rand2 == 1 then
			s_addItem(uid,55066,3,1,0,"1-1","春联道具")
		elseif rand2 == 2 then
			s_addItem(uid,55067,3,1,0,"1-1","春联道具")
		elseif rand2 == 3 then
			s_addItem(uid,55068,3,1,0,"1-1","春联道具")
		elseif rand2 == 4 then
			s_addItem(uid,55069,3,1,0,"1-1","春联道具")
		end
	elseif rand <= 9200 then
		s_addItem(uid,29800,3,1,0,"1-1","贪财小妖")
	elseif rand <= 9400 then
		s_addItem(uid,29052,3,1,0,"1-1","金水壶")
	elseif rand <= 9550 then
		s_addItem(uid,26104,3,1,0,"","重铸材料")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>向大家拜年时意外获得了重铸材料！</n><book bookid='70055'>[关于拜年]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9700 then
		s_addItem(uid,27110,3,1,0,"2-4","4等金刚钻")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>向大家拜年时意外获得了4等金刚钻！</n><book bookid='70055'>[关于拜年]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9850 then
		s_addItem(uid,26149,3,1,0,"2-4","合金材料4级")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>向大家拜年时意外获得了合金材料（4级）！</n><book bookid='70055'>[关于拜年]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 10000 then
		s_addItem(uid,32238,3,1,0,"","蓝色星耀石盒")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>向大家拜年时意外获得了蓝色星耀石盒！</n><book bookid='70055'>[关于拜年]</book></p>",ChatPos_Sys + ChatPos_Honor)
	end
end


function OnUseItemEvent_31310item(uid,baseid)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local rand = math.random(1,10000)
	if rand <= 1000 then
		s_addItem(uid,26102,3,12,0,"1-1","幸运宝石")
	elseif rand <= 2000 then
		s_addItem(uid,26102,3,10,0,"1-1","幸运宝石")
	elseif rand <= 3000 then
		s_addItem(uid,27108,3,24,0,"1-1","升级宝石")
	elseif rand <= 4000 then
		s_addItem(uid,27108,3,20,0,"1-1","升级宝石")
	elseif rand <= 4250 then
		s_addItem(uid,26113,3,48,0,"1-1","经验药剂中")
	elseif rand <= 4500 then
		s_addItem(uid,26113,3,40,0,"1-1","经验药剂中")
	elseif rand <= 4750 then
		s_addItem(uid,43012,3,48,0,"1-1","宠物经验药剂中")
	elseif rand <= 5000 then
		s_addItem(uid,43012,3,40,0,"1-1","宠物经验药剂中")
	elseif rand <= 5500 then
		s_addItem(uid,26104,3,3,0,"1-1","重铸材料")
	elseif rand <= 6000 then
		s_addItem(uid,26104,3,2,0,"1-1","重铸材料")
	elseif rand <= 7000 then
		local	rand2 =  math.random(1,4)
		if	rand2 == 1 then
			s_addItem(uid,55066,3,2,0,"1-1","春联道具")
		elseif rand2 == 2 then
			s_addItem(uid,55067,3,2,0,"1-1","春联道具")
		elseif rand2 == 3 then
			s_addItem(uid,55068,3,2,0,"1-1","春联道具")
		elseif rand2 == 4 then
			s_addItem(uid,55069,3,2,0,"1-1","春联道具")
		end
	elseif rand <= 7500 then
		s_addItem(uid,26149,3,3,0,"1-1,2-3","合金材料3级")
	elseif rand <= 8000 then
		s_addItem(uid,26149,3,2,0,"1-1,2-3","合金材料3级")
	elseif rand <= 8500 then
		s_addItem(uid,55048,3,1,0,"1-1,7-1","蓝色神之水滴")
	elseif rand <= 9000 then
		s_addItem(uid,32207,3,1,0,"1-1","4等宝石盒")
	elseif rand <= 9150 then
		s_addItem(uid,27110,3,1,0,"2-4","4等金刚钻")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>向大家拜年时意外获得了4等金刚钻！</n><book bookid='70055'>[关于拜年]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9350 then
		local	rand3 =  math.random(1,4)
		if	rand3 == 1 then
			s_addItem(uid,27131,3,1,0,"","神谕道具")
		elseif rand3 == 2 then
			s_addItem(uid,27141,3,1,0,"","神谕道具")
		elseif rand3 == 3 then
			s_addItem(uid,27151,3,1,0,"","神谕道具")
		elseif rand3 == 4 then
			s_addItem(uid,27161,3,1,0,"","神谕道具")
		end
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>向大家拜年时意外获得了神谕道具！</n><book bookid='70055'>[关于拜年]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9600 then
		s_addItem(uid,32237,3,1,0,"","白色星耀石盒")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>向大家拜年时意外获得了白色星耀石盒！</n><book bookid='70055'>[关于拜年]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9700 then
		s_addItem(uid,27125,3,10,0,"","羽灵")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>向大家拜年时意外获得了羽灵*10！</n><book bookid='70055'>[关于拜年]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9950 then
		s_addItem(uid,55047,3,1,0,"","宠物3级报恩技能盒")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>向大家拜年时意外获得了宠物3级报恩技能盒！</n><book bookid='70055'>[关于拜年]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 9980 then
		s_addItem(uid,27110,3,1,0,"2-5","金刚钻5等")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>向大家拜年时意外获得了5等金刚钻！</n><book bookid='70055'>[关于拜年]</book></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 10000 then
		s_addItem(uid,32238,3,1,0,"","蓝色星耀石盒")
		s_worldInfo("<p><n>【系】恭喜"..name.."</n><n>向大家拜年时意外获得了蓝色星耀石盒！</n><book bookid='70055'>[关于拜年]</book></p>",ChatPos_Sys + ChatPos_Honor)
	end
end
