--藏宝图
--//======================================================
--// 配置格式,row[1]-概率,row[2]-操作类型
--// 操作类型具体操作
--// 1--获得指定道具(row[3]-数量,row[4]-道具ID
--// 2--获得指定道具列表中随机道具(row[3]-数量,row[4]-道具ID列表,row[5]-道具品质生成概率列表,可选)
--//======================================================
TreasureData =
{
	map_3 =
	{
		{40,    1,  20,     5},
		{23,    1,  20,  27108},
		{5,     2,  1,  {21251,21252,21253,21254,21255,21256,21257,21258}},
	},
	map_4 =
	{
		{40,    1,  15,     5},
		{23,    1,  15,  27108},
		{5,     2,  1,  {21251,21252,21253,21254,21255,21256,21257,21258}},
	},
	map_6 =
	{
		{40,    1,  25,     5},
		{32,    1,  25,  27108},
		{23,    1,  15,  29026},
		{5,     2,  1,  {21251,21252,21253,21254,21255,21256,21257,21258}},
	},
	map_7 =
	{
		{40,    1,  30,     5},
		{35,    1,  20,  29026},
		{20,    2,  10, {27201,27211,27221,27231,27241}},
		{5,     2,  1,  {21251,21252,21253,21254,21255,21256,21257,21258}},
	},
}

function OnUseItemEvent_31005(uid,thisid,targetid)
	local itemid = thisid
	local country = s_getItemValue(uid,itemid,Item_Attribute_PosCountry)
	local map = s_getItemValue(uid,itemid,Item_Attribute_PosMap)
	local x = s_getItemValue(uid,itemid,Item_Attribute_PosX)
	local y = s_getItemValue(uid,itemid,Item_Attribute_PosY)
	local curCountry = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	if country == 0 then
		country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	end
	if country ~= curCountry then
		s_sysInfo(uid,"目标国家不正确")
		return VALUE_FAIL
	end
	if CheckNearPos(uid,map,x,y,5) ~= VALUE_OK then
		return VALUE_FAIL
	end
	local call = string.format("OnGetTreasure(%u,%u,%u)",uid,itemid,map)
	s_showbar(uid,5000,call,UninterruptActionType_TASK,1)
	return VALUE_OK
end

function OnGetTreasure(uid,itemid,mapid)
	local info = rawget(TreasureData,"map_"..mapid)
	if info == nil then
		return
	end
	if s_deleteItemByThisID(uid,itemid,1,"OnGetTreasure") ~= VALUE_OK then
		return
	end
	local rand = math.random(1,100)
	local percent = 0
	local ret = VALUE_FAIL
	local sceneid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
	for i = 1, table.getn(info) do
		percent = percent + info[i][1]
		if rand <= percent then
			if info[i][2] == 1 then
				for j = 1, info[i][3] do
					local thisid = s_addSceneItem(info[i][4],1,sceneid,posx,posy,0,"")
					if thisid ~= 0 and thisid ~= nil then
						s_setSceneItemValue(thisid,2,1)     --属主类型
						s_setSceneItemValue(thisid,3,uid)   --属主id
					end
				end
			elseif info[i][2] == 2 then
				for j = 1, info[i][3] do
					local rand1 = math.random(1,table.getn(info[i][4]))
					local baseid = info[i][4][rand1]
					local attr = ""
					if info[i][5] ~= nil then
						local per = 0
						local rand2 = math.random(1,100)
						for k = 1, table.getn(info[i][5]) do
							per = per + info[i][5][k]
							if rand2 <= per then
								attr = "7-"..(k-1)
								break
							end
						end
					end
					local thisid = s_addSceneItem(baseid,1,sceneid,posx,posy,0,attr)
					if thisid ~= 0 and thisid ~= nil then
						s_setSceneItemValue(thisid,2,1)     --属主类型
						s_setSceneItemValue(thisid,3,uid)   --属主id
					end
				end
			end
			break
		end
	end
end
