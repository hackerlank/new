
--镶嵌宝石盒
function OnUseItemEvent_63386(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63386") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,1000)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if rand <= 70 then
		s_addItem(uid,27201,0,1,0,"1-1","OnUseItemEvent_63386") --1级红宝石
	elseif rand <= 140 then
		s_addItem(uid,27211,0,1,0,"1-1","OnUseItemEvent_63386") --1级蓝宝石
	elseif rand <= 210 then
		s_addItem(uid,27221,0,1,0,"1-1","OnUseItemEvent_63386") --1级黄宝石
	elseif rand <= 280 then
		s_addItem(uid,27231,0,1,0,"1-1","OnUseItemEvent_63386") --1级绿宝石
	elseif rand <= 350 then
		s_addItem(uid,27241,0,1,0,"1-1","OnUseItemEvent_63386") --1级紫宝石
	elseif rand <= 450 then
		s_addItem(uid,27202,0,1,0,"1-1","OnUseItemEvent_63386") --2级红宝石
	elseif rand <= 550 then
		s_addItem(uid,27212,0,1,0,"1-1","OnUseItemEvent_63386") --2级蓝宝石
	elseif rand <= 650 then
		s_addItem(uid,27222,0,1,0,"1-1","OnUseItemEvent_63386") --2级黄宝石
	elseif rand <= 750 then
		s_addItem(uid,27232,0,1,0,"1-1","OnUseItemEvent_63386") --2级绿宝石
	elseif rand <= 850 then
		s_addItem(uid,27242,0,1,0,"1-1","OnUseItemEvent_63386") --2级紫宝石
	elseif rand <= 870 then
		s_addItem(uid,27203,0,1,0,"1-1","OnUseItemEvent_63386") --3级红宝石
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了3级红宝石</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 890 then
		s_addItem(uid,27213,0,1,0,"1-1","OnUseItemEvent_63386") --3级蓝宝石
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了3级蓝宝石</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 910 then
		s_addItem(uid,27223,0,1,0,"1-1","OnUseItemEvent_63386") --3级黄宝石
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了3级黄宝石</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 930 then
		s_addItem(uid,27233,0,1,0,"1-1","OnUseItemEvent_63386") --3级绿宝石
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了3级绿宝石</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 950 then
		s_addItem(uid,27243,0,1,0,"1-1","OnUseItemEvent_63386") --3级紫宝石
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了3级紫宝石</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 959 then
		s_addItem(uid,27204,0,1,0,"1-1","OnUseItemEvent_63386") --4级红宝石
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了4级红宝石</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 968 then
		s_addItem(uid,27214,0,1,0,"1-1","OnUseItemEvent_63386") --4级蓝宝石
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了4级蓝宝石</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 977 then
		s_addItem(uid,27224,0,1,0,"1-1","OnUseItemEvent_63386") --4级黄宝石
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了4级黄宝石</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 986 then
		s_addItem(uid,27234,0,1,0,"1-1","OnUseItemEvent_63386") --4级绿宝石
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了4级绿宝石</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 995 then
		s_addItem(uid,27244,0,1,0,"1-1","OnUseItemEvent_63386") --4级紫宝石
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了4级紫宝石</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 996 then
		s_addItem(uid,27205,0,1,0,"1-1","OnUseItemEvent_63386") --5级红宝石
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了5级红宝石</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 997 then
		s_addItem(uid,27215,0,1,0,"1-1","OnUseItemEvent_63386") --5级蓝宝石
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了5级蓝宝石</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 998 then
		s_addItem(uid,27225,0,1,0,"1-1","OnUseItemEvent_63386") --5级黄宝石
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了5级黄宝石</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 999 then
		s_addItem(uid,27235,0,1,0,"1-1","OnUseItemEvent_63386") --5级绿宝石
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了5级绿宝石</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 1000 then
		s_addItem(uid,27245,0,1,0,"1-1","OnUseItemEvent_63386") --5级紫宝石
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了5级紫宝石</n></p>",ChatPos_Sys + ChatPos_Honor)
	end
	return VALUE_OK
end
