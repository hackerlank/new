
--星星雕纹宝箱
function OnUseItemEvent_55321(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55321") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,100)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	if rand <= 30 then
		s_addItem(uid,32227,0,1,0,"1-1,2-7,213-1,214-150","OnUseItemEvent_55321") --6升7
	elseif rand <= 70 then
		s_addItem(uid,32227,0,1,0,"1-1,2-9,213-1,214-150","OnUseItemEvent_55321") --8升9
	elseif rand <= 90 then
		s_addItem(uid,32227,0,1,0,"1-1,2-11,213-61,214-150","OnUseItemEvent_55321") --10升11
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从星星雕纹礼盒中开出了11星雕纹</n></p>",ChatPos_Sys + ChatPos_Honor)
	else
		s_addItem(uid,32227,0,1,0,"1-1,2-13,213-61,214-150","OnUseItemEvent_55321") --12升13
		s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从星星雕纹礼盒中开出了13星雕纹</n></p>",ChatPos_Sys + ChatPos_Honor)
		--else
		--s_addItem(uid,32227,0,1,0,"1-1,2-14,213-61,214-150","OnUseItemEvent_55321") --13升14
		--s_countryInfo(country,"<p><n>【系】恭喜</n><q buttonid=6005 ownerid=".. uid .. ">" ..name .. "</q><n>从星星雕纹礼盒中开出了14星雕纹</n></p>",ChatPos_Sys + ChatPos_Honor)
	end
	return VALUE_OK
end
