--NEW_YEAR_WORD1 = {"龙蛇飞舞","福星高照","龙马精神","花开富贵","开春大吉","合家幸福","飞黄腾达","鱼跃龙门","百事可乐"}
--NEW_YEAR_WORD2 = { "心想事成","身体健康","岁岁平安","年年有余","财源广进","步步高升","吉祥如意","大吉大利","招财进宝"}

--蛇年拜年卡
function OnUseItemEvent_55065(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") == VALUE_FAIL then
		return VALUE_FAIL
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local w1 = NEW_YEAR_WORD1[math.random(1,table.getn(NEW_YEAR_WORD1))]
	local w2 = NEW_YEAR_WORD2[math.random(1,table.getn(NEW_YEAR_WORD2))]
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	s_worldInfo("<p><n color='GXColorBlueSky'>["..name .. "]给大家拜年啦！大家"..w1.."，"..w2.."！</n></p>",ChatPos_Sys + ChatPos_Honor)
	local exp = 20 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,55065)
	return VALUE_OK
end
