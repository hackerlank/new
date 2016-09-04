--国庆礼包
function OnUseItemEvent_55000(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55000") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55012,3,1,0,"1-1","OnUseItemEvent_55000")
	s_addItem(uid,30017,3,1,0,"1-1","OnUseItemEvent_55000")
	return VALUE_OK
end

--中秋礼包
function OnUseItemEvent_55001(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55001") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,55004,3,2,0,"1-1","OnUseItemEvent_55001")
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local rand = math.random(1,100)
	if level >= 21 and level <= 29 then
		if rand <= 50 then
			s_addItem(uid,29066,3,5,0,"1-1,7-1","中秋活动")--舞票
		elseif rand > 50 then
			s_addItem(uid,47001,3,5,0,"1-1,7-1","中秋活动")--猎命师手札
		end
	elseif level >= 30 and level <= 39 then
		if rand <= 50 then
			s_addItem(uid,29066,3,5,0,"1-1,7-1","中秋活动")--舞票
		elseif rand > 50 then
			s_addItem(uid,47001,3,5,0,"1-1,7-1","中秋活动")--猎命师手札
		end
	elseif level >= 40 and level <= 49 then
		if rand <= 50 then
			s_addItem(uid,29066,3,5,0,"1-1,7-1","中秋活动")--舞票
		elseif rand > 50 then
			s_addItem(uid,47001,3,5,0,"1-1,7-1","中秋活动")--猎命师手札
		end
	elseif level >= 50 and level <= 59 then
		if rand <= 50 then
			s_addItem(uid,29066,3,5,0,"1-1,7-1","中秋活动")--舞票
		elseif rand > 50 then
			s_addItem(uid,47001,3,5,0,"1-1,7-1","中秋活动")--猎命师手札
		end
	elseif level >= 60 and level <= 69 then
		if rand <= 33 then
			s_addItem(uid,29066,3,5,0,"1-1,7-1","中秋活动")--舞票
		elseif rand <= 66 then
			s_addItem(uid,29061,3,5,0,"1-1,7-1","中秋活动")--钓鱼卡
		elseif rand > 67 then
			s_addItem(uid,47001,3,5,0,"1-1,7-1","中秋活动")--猎命师手札
		end
	elseif level >= 70 and level <= 79 then
		if rand <= 33 then
			s_addItem(uid,29066,3,5,0,"1-1,7-1","中秋活动")--舞票
		elseif rand <= 66 then
			s_addItem(uid,29061,3,5,0,"1-1,7-1","中秋活动")--钓鱼卡
		elseif rand > 67 then
			s_addItem(uid,47001,3,5,0,"1-1,7-1","中秋活动")--猎命师手札
		end
	elseif level >= 80 and level <= 89 then
		if rand <= 33 then
			s_addItem(uid,29066,3,5,0,"1-1,7-1","中秋活动")--舞票
		elseif rand <= 66 then
			s_addItem(uid,29061,3,5,0,"1-1,7-1","中秋活动")--钓鱼卡
		elseif rand > 67 then
			s_addItem(uid,47001,3,5,0,"1-1,7-1","中秋活动")--猎命师手札
		end
	elseif level >= 90 and level <= 99 then
		if rand <= 33 then
			s_addItem(uid,29066,3,5,0,"1-1,7-1","中秋活动")--舞票
		elseif rand <= 66 then
			s_addItem(uid,29061,3,5,0,"1-1,7-1","中秋活动")--钓鱼卡
		elseif rand > 67 then
			s_addItem(uid,47001,3,5,0,"1-1,7-1","中秋活动")--猎命师手札
		end
	elseif level >= 100 then
		if rand <= 33 then
			s_addItem(uid,29066,3,5,0,"1-1,7-1","中秋活动")--舞票
		elseif rand <= 66 then
			s_addItem(uid,29061,3,5,0,"1-1,7-1","中秋活动")--钓鱼卡
		elseif rand > 67 then
			s_addItem(uid,47001,3,5,0,"1-1,7-1","中秋活动")--猎命师手札
		end
	end
	return VALUE_OK
end

--美味的月饼
function OnUseItemEvent_55005(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55005") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29026,3,3,0,"1-1","OnUseItemEvent_55005")
	s_addItem(uid,27108,3,3,0,"1-1","OnUseItemEvent_55005")
	s_addItem(uid,26149,3,3,0,"1-1","OnUseItemEvent_55005")
	s_addItem(uid,55006,3,1,0,"1-1","OnUseItemEvent_55005")
	return VALUE_OK
end

--爱我中华
function OnUseItemEvent_55012(uid,thisid,targetid)
	local map,x,y = 5,313,658;
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	local posx = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if country == homeland or s_isFriendCountry(country,homeland)  == VALUE_OK  then
		s_sysInfo(uid,"<p><n>似乎不是正确的地点呢！需前往敌国</n><goto pos="..x..","..y.." mapid="..map.."/></p>",ChatPos_Sys + ChatPos_Important)
		return
	end
	if mapid ~= map then
		s_sysInfo(uid,"<p><n>似乎不是正确的地点呢！需前往敌国</n><goto pos="..x..","..y.." mapid="..map.."/></p>",ChatPos_Sys + ChatPos_Important)
		return
	end
	if math.abs(posx - x) > 3 or math.abs(posy - y) > 3 then
		s_sysInfo(uid,"<p><n>好像还有不少距离啊！需前往敌国</n><goto pos="..x..","..y.." mapid="..map.."/></p>",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,uid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5047,1,10)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if sex == 1 then
		s_countryInfo(homeland,"<p><n>【系】"..name.."</n><n>高声呐喊：苍老师是世界的，钓鱼岛是中国的！</n></p>",ChatPos_Sys + ChatPos_Honor)
	else
		s_countryInfo(homeland,"<p><n>【系】"..name.."</n><n>高声呐喊：凯蒂猫是世界的，钓鱼岛是中国的！</n></p>",ChatPos_Sys + ChatPos_Honor)
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 50 * (50+0.1*level^2.2)
	s_refreshExp(uid,exp,ExpType_Item,31380)
	return VALUE_OK
end
