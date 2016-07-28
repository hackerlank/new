--复活旗帜B
function OnNpcDeadEventPalaceWar22991(mid,thisid)
	local cid = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_SCENE_ID)
	CopySceneInfo_75:GroupInfo(cid,1,"<p><n>【系】我方复活令旗被击破，复活点已转移城外，请等待官员再次插旗标记宫殿复活点！</n></p>")
	CopySceneInfo_75:GroupInfo(cid,2,"<p><n>【系】敌方复活令旗被成功击破，敌方复活点将转移城外，防止敌方官员再次插旗标记复活点！</n></p>")
	--设置重生时间
	local npcid = s_getValue(SCENE_ENTRY_NPC,thisid,VALUE_TYPE_DEAD_BORN_NPC)
	if npcid ~= nil and npcid ~= 0 then
		s_setNpcReliveTime(npcid,60)
	else
		s_debug("找不到旗帜A的npcid")
	end
end

--主神
function OnNpcDeadEventPalaceWar22985(mid,thisid)
	--	s_setCountryWarVal(Country_War_Border, Country_War_Occupy_Defense, curcountry)
	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_CURRENT_COUNTRY)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_HOMELAND)
	s_addCountryVar(curcountry,1,163,homeland)
	s_setCountryWarVal(Country_War_Palace_Master_Life, 0, curcountry)
end
function OnNpcDeadEventPalaceWar22986(mid,thisid)
	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_CURRENT_COUNTRY)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_HOMELAND)
	s_addCountryVar(curcountry,1,163,homeland)
	s_setCountryWarVal(Country_War_Palace_Master_Life, 0, curcountry)
end
function OnNpcDeadEventPalaceWar22987(mid,thisid)
	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_CURRENT_COUNTRY)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_HOMELAND)
	s_addCountryVar(curcountry,1,163,homeland)
	s_setCountryWarVal(Country_War_Palace_Master_Life, 0, curcountry)
end
function OnNpcDeadEventPalaceWar22988(mid,thisid)
	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_CURRENT_COUNTRY)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_HOMELAND)
	s_addCountryVar(curcountry,1,163,homeland)
	s_setCountryWarVal(Country_War_Palace_Master_Life, 0, curcountry)
end

--复活水晶
function OnNpcDeadEventPalaceWar22989(mid,thisid)
	local cid = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_SCENE_ID)
	CopySceneInfo_75:GroupInfo(cid,2,"<p><n>【系】我方宫殿内的复活水晶被击破，宫殿中将不再存在复活点！请至宫殿传送门处进入宫殿</n></p>")
	CopySceneInfo_75:GroupInfo(cid,1,"<p><n>【系】成功击破守方复活水晶，守方玩家将不能再使用宫殿内的复活点！</n></p>")
	s_setNpcReliveTime(thisid,60)
end

RegisterMyNpcDeadEvent(22991,"OnNpcDeadEventPalaceWar22991($1,$2)")
RegisterMyNpcDeadEvent(22985,"OnNpcDeadEventPalaceWar22985($1,$2)")
RegisterMyNpcDeadEvent(22986,"OnNpcDeadEventPalaceWar22986($1,$2)")
RegisterMyNpcDeadEvent(22987,"OnNpcDeadEventPalaceWar22987($1,$2)")
RegisterMyNpcDeadEvent(22988,"OnNpcDeadEventPalaceWar22988($1,$2)")
RegisterMyNpcDeadEvent(22989,"OnNpcDeadEventPalaceWar22989($1,$2)")
--s_setCountryWarVal(Country_War_Border, Country_War_Occupy_Defense, curcountry)
