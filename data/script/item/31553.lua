--好好学习
function OnUseItemEvent_31553(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31553") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27108,3,20,0,"1-1","OnUseItemEvent_31553")
	s_addItem(uid,26102,3,20,0,"1-1","OnUseItemEvent_31553")
	s_addItem(uid,14,3,2,0,"1-1","OnUseItemEvent_31553")
	s_addItem(uid,26104,3,1,0,"1-1","OnUseItemEvent_31553")
	s_addItem(uid,31555,3,1,0,"1-1","OnUseItemEvent_31553")
	if math.random(1,100) <= 5 then
		s_addItem(uid,52027,3,1,0,"1-1","OnUseItemEvent_31553")	--5%概率获得7天天狐灵时装
		local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
		s_worldInfo("<p><n>【系】"..name.."</n><n>在打开“好好学习”礼包时，幸运的获得了稀有天狐灵坐骑时装~</n></p>",ChatPos_Sys + ChatPos_Honor)
	end
	return VALUE_OK
end

--天天向上
function OnUseItemEvent_31554(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31554") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,43007,3,40,0,"1-1","OnUseItemEvent_31554")
	s_addItem(uid,43006,3,20,0,"1-1,7-2","OnUseItemEvent_31554") --黄色品质奇幻球
	s_addItem(uid,43012,3,10,0,"1-1","OnUseItemEvent_31554")
	s_addItem(uid,53001,3,1,1,"1-1,420-5,421-335,422-335,423-335,424-335,425-335,78-225,79-335,80-268,81-268,82-1675","OnUseItemEvent_31554") --5级骑魂2个
	s_addItem(uid,53001,3,1,1,"1-1,420-5,421-335,422-335,423-335,424-335,425-335,78-225,79-335,80-268,81-268,82-1675","OnUseItemEvent_31554") --5级骑魂2个
	s_addItem(uid,31555,3,1,0,"1-1","OnUseItemEvent_31554")
	if math.random(1,100) <= 20 then
		s_addItem(uid,42002,3,1,0,"1-1","OnUseItemEvent_31554")	--20%概率获得火星喵喵
		local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
		s_worldInfo("<p><n>【系】"..name.."</n><n>在打开“天天向上”礼包时，幸运的获得了火星喵喵宠物幻化道具~</n></p>",ChatPos_Sys + ChatPos_Honor)
	end
	local itemid =  43103
	itemid = 43103 + 10 *  math.random(0,10)
	s_addItem(uid,itemid,3,1,0,"","OnUseItemEvent_31554")	--随机1张3级性格卡（需可交易）
	return VALUE_OK
end

--小红花
function OnUseItemEvent_31555(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 15 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,31555)
	return VALUE_OK
end
