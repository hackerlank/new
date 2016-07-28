
--玉髓盒
function OnUseItemEvent_63392(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_63392") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,100000)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if rand <= 8750 then
		s_addItem(uid,27401,0,1,0,"1-1","OnUseItemEvent_63392") --浮云玉髓（1级）
	elseif rand <= 17500 then
		s_addItem(uid,27411,0,1,0,"1-1","OnUseItemEvent_63392") --绝影玉髓（1级）
	elseif rand <= 26250 then
		s_addItem(uid,27421,0,1,0,"1-1","OnUseItemEvent_63392") --追风玉髓（1级）
	elseif rand <= 35000 then
		s_addItem(uid,27431,0,1,0,"1-1","OnUseItemEvent_63392") --踏雪玉髓（1级）
	elseif rand <= 47500 then
		s_addItem(uid,27402,0,1,0,"1-1","OnUseItemEvent_63392") --浮云玉髓（2级）
	elseif rand <= 60000 then
		s_addItem(uid,27412,0,1,0,"1-1","OnUseItemEvent_63392") --绝影玉髓（2级）
	elseif rand <= 72500 then
		s_addItem(uid,27422,0,1,0,"1-1","OnUseItemEvent_63392") --追风玉髓（2级）
	elseif rand <= 85000 then
		s_addItem(uid,27432,0,1,0,"1-1","OnUseItemEvent_63392") --踏雪玉髓（2级）
	elseif rand <= 87500 then
		s_addItem(uid,27403,0,1,0,"1-1","OnUseItemEvent_63392") --浮云玉髓（3级）
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了浮云玉髓(3级)</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 90000 then
		s_addItem(uid,27413,0,1,0,"1-1","OnUseItemEvent_63392") --绝影玉髓（3级）
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了绝影玉髓(3级)</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 92500 then
		s_addItem(uid,27423,0,1,0,"1-1","OnUseItemEvent_63392") --追风玉髓（3级）
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了追风玉髓(3级)</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 95000 then
		s_addItem(uid,27433,0,1,0,"1-1","OnUseItemEvent_63392") --踏雪玉髓（3级）
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了踏雪玉髓(3级)</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 96125 then
		s_addItem(uid,27404,0,1,0,"1-1","OnUseItemEvent_63392") --浮云玉髓（4级）
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了浮云玉髓(4级)</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 97250 then
		s_addItem(uid,27414,0,1,0,"1-1","OnUseItemEvent_63392") --绝影玉髓（4级）
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了绝影玉髓(4级)</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 98375 then
		s_addItem(uid,27424,0,1,0,"1-1","OnUseItemEvent_63392") --追风玉髓（4级）
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了追风玉髓(4级)</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 99500 then
		s_addItem(uid,27434,0,1,0,"1-1","OnUseItemEvent_63392") --踏雪玉髓（4级）
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了踏雪玉髓(4级)</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 98625 then
		s_addItem(uid,27405,0,1,0,"1-1","OnUseItemEvent_63392") --浮云玉髓（5级）
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了浮云玉髓(5级)</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 98750 then
		s_addItem(uid,27415,0,1,0,"1-1","OnUseItemEvent_63392") --绝影玉髓（5级）
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了绝影玉髓(5级)</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 98875 then
		s_addItem(uid,27425,0,1,0,"1-1","OnUseItemEvent_63392") --追风玉髓（5级）
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了追风玉髓(5级)</n></p>",ChatPos_Sys + ChatPos_Honor)
	elseif rand <= 100000 then
		s_addItem(uid,27435,0,1,0,"1-1","OnUseItemEvent_63392") --踏雪玉髓（5级）
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从镶嵌宝石盒中开出了踏雪玉髓(5级)</n></p>",ChatPos_Sys + ChatPos_Honor)
	end
	return VALUE_OK
end
