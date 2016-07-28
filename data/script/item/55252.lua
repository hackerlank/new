--沉甸甸的红包
function OnUseItemEvent_55252(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 35 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	local money = 0
	if s_getVar(uid,116,165) == 1 then
		money = 100
	elseif s_getVar(uid,116,165) == 2 then
		money = 200
	elseif s_getVar(uid,116,165) >= 3 then
		money = 300
	end
	if money ~= 0 then
		if s_removeMoney(uid,MoneyType_Money,money,"开沉甸甸的红包") ~= VALUE_OK then
			s_sysInfo(uid,"银币不足，不可开启")
			return VALUE_FAIL
		end
	end
	if s_deleteItemByThisID(uid,thisid,1,"开沉甸甸的红包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	-- 1     2     3    4    5     6     7    8    9    10    11  12  13 几率
	local rates = {1500, 1000, 800, 1500, 1000, 1000, 500, 500, 800, 399, 1000, 50, 1}
	local rand = math.random(1,10000)
	local value = 0
	local itemrates = 0
	for i=1,table.getn(rates) do
		value = value + rates[i]
		itemrates = i
		if rand <= value then
			if itemrates == 1 then
				s_addItem(uid,26102,3,2,0,"1-1","幸运宝石中")
			elseif itemrates == 2 then
				s_addItem(uid,26141,3,3,0,"1-1","初级生命精华小")
			elseif itemrates == 3 then
				s_addItem(uid,32211,3,1,0,"1-1","三绿宝箱")
			elseif itemrates == 4 then
				s_addItem(uid,23051,3,15,0,"1-1","经验药剂小")
			elseif itemrates == 5 then
				s_addItem(uid,29026,3,10,0,"1-1","血精石")
			elseif itemrates == 6 then
				s_addItem(uid,43007,3,10,0,"1-1","潜力之印")
			elseif itemrates == 7 then
				s_addItem(uid,55048,3,1,0,"1-1","神之水滴")
			elseif itemrates == 8 then
				s_addItem(uid,32212,3,1,0,"1-1","三等宝石盒子")
			elseif itemrates == 9 then
				s_addItem(uid,31410,3,3,0,"1-1","装备礼盒")
			elseif itemrates == 10 then
				s_addItem(uid,43006,3,20,0,"1-1,7-1","蓝色奇幻球")
			elseif itemrates == 11 then
				s_addItem(uid,10,3,3,0,"1-1","100赠点券")
			elseif itemrates == 12 then
				s_addItem(uid,27110,3,1,0,"1-1,2-4","金刚钻4等")
			elseif itemrates == 13 then
				s_addItem(uid,55253,3,1,0,"1-1","马到成功时装礼盒")
				local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
				s_worldInfo("<p><n>【系】"..name.."</n><n>开启沉甸甸的红包，获得春节限定马到成功时装！这是要逆天么！</n></p>",ChatPos_Sys + ChatPos_Honor)
			end
			break;
		end
	end
	s_setVar(uid,116,165,s_getVar(uid,116,165)+1)
	return VALUE_OK
end

