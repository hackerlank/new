--钓鱼
FishRateData =
{
	{{29056,940},{29060,970},{29057,990},{29058,1000}},
	{{29056,785},{29060,905},{29057,985},{29058,1000}},
	{{29056,630},{29060,830},{29057,980},{29058,1000}},
	{{29056,375},{29060,725},{29057,975},{29058,1000}},
}
function OnLoopBuffEvent_5Sec_101(level,etype,eid)
	--交通方式不存档
	local traffictype,trafficid = s_getTrafficType(eid)
	if traffictype == TrafficType_None then
		s_removebuff(etype,eid,101)
		return
	end
	local weapon = s_getWeapon(eid)
	local baseid  = s_getItemValue(eid,weapon,Item_Base_ID)
	if baseid ~= 29062 then
		s_sysInfo(eid,"您可以到钓鱼管理员处购买鱼竿");
		s_removebuff(etype,eid,101)
		return
	end
	if s_checkZoneType(etype,eid,ZONE_FISH) == VALUE_FAIL then
		s_sysInfo(eid,"非钓鱼区域无法获得经验");
		return
	end
	local dur = s_getItemValue(eid,weapon,Item_Attribute_Dur)
	if dur > 0 then
		s_setItemValue(eid,weapon,Item_Attribute_Dur,dur-1)
		s_refreshItem(eid,weapon)
	end

	local level = s_getValue(etype,eid,VALUE_TYPE_LEVEL)
	local exp = 0
	local ticketbuff = 100
	local ticketbufflevel = s_getbufflevel(etype,eid,ticketbuff)
	if ticketbufflevel > 0 then
		local quality = s_getbuffvalue(etype,eid,ticketbuff) + 1
		local rand = math.random(1,1000)
		local itemid = 0
		local exp = 0
		if quality > 4 then return end

		local luck = math.random(1,100)
		local wday = s_getCurTime(TIME_CURWDAYS)
		local hours = s_getCurTime(TIME_CURHOURS)
		if wday == 0 and hours < 21 then --周日钓鱼活动
			local ITEMS = {29532,29533,29534}
			if quality == 1 then
				if luck <= 5 then
					s_addItem(eid,ITEMS[math.random(1,table.getn(ITEMS))],0,1,0,"1-1","钓鱼")
				end
			elseif quality == 2 then
				if luck <= 10 then
					s_addItem(eid,ITEMS[math.random(1,table.getn(ITEMS))],0,1,0,"1-1","钓鱼")
				end
			elseif quality == 3 then
				if luck <= 15 then
					s_addItem(eid,ITEMS[math.random(1,table.getn(ITEMS))],0,1,0,"1-1","钓鱼")
				end
			elseif quality == 4 then
				if luck <= 20 then
					s_addItem(eid,ITEMS[math.random(1,table.getn(ITEMS))],0,1,0,"1-1","钓鱼")
				end
			end
		end

		local fish29057_buff = 97
		local fish29058_buff = 98
		if rand <= FishRateData[quality][1][2] then
			local num={0.8,1.6,2.6,5}
			exp = math.floor(num[quality]*(30+level^1.5))
			s_refreshExp(eid,exp,ExpType_Fish,101)
			s_fishUpStick(eid)
			return
		elseif rand <= FishRateData[quality][2][2] then
			itemid = FishRateData[quality][2][1]
			exp = math.floor(6*(30+level^1.5))
		elseif rand <= FishRateData[quality][3][2] then
			itemid = FishRateData[quality][3][1]
			exp = math.floor(7*(30+level^1.5))
			local fish29058_buff_level = s_getbufflevel(etype,eid,fish29058_buff)
			if fish29058_buff_level == 0 then
				local fish29057_buff_level = s_getbufflevel(etype,eid,fish29057_buff)
				if fish29057_buff_level > 0 then
					s_removebuff(etype,eid,fish29057_buff)
				end
				s_addbuff(SCENE_ENTRY_PLAYER,eid,fish29057_buff,1,1*60)
			end
		elseif rand <= FishRateData[quality][4][2] then
			itemid = FishRateData[quality][4][1]
			exp = math.floor(8*(30+level^1.5))
			local fish29057_buff_level = s_getbufflevel(etype,eid,fish29057_buff)
			if fish29057_buff_level > 0 then
				s_removebuff(etype,eid,fish29057_buff)
			end
			local fish29058_buff_level = s_getbufflevel(etype,eid,fish29058_buff)
			if fish29058_buff_level > 0 then
				s_removebuff(etype,eid,fish29058_buff)
			end
			s_addbuff(SCENE_ENTRY_PLAYER,eid,fish29058_buff,1,1*60)
			local name = s_getValue(SCENE_ENTRY_PLAYER,eid,VALUE_TYPE_NAME)
			s_nineInfo(eid,"波光一闪，一条金色的硕大鲤鱼飞出水面。"..name.."真是钓鱼达人，居然钓上了一条水晶皇后鱼",ChatPos_Sys)
		end
		local scr = "1-1,225-"..exp
		if exp ~= 0 then
			s_addItem(eid,itemid,0,1,1,scr,"钓鱼")
			s_fishUpStick(eid)
		end
	end
end
