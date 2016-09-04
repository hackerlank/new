--神秘手套图纸
function OnMakeItem_22004(uid,thisid,num, matid, matnum)
	local quality = s_getItemValue(uid,thisid,Item_Attribute_Quality)
	if quality ==  EquipQuality_White then
		local rand = math.random(1,100)
		if rand <= 30 then
			quality = EquipQuality_Blue
		elseif rand <= 40 then
			quality = EquipQuality_Yellow
		elseif rand <= 43 then
			quality = EquipQuality_Green
		end
	end
	local targetid = 22004
	local attr = Item_Attribute_Quality.."-"..quality
	if s_deleteItemByThisID(uid,thisid,num,"生活制造") == VALUE_OK
		and s_deleteItemByThisID(uid,matid,matnum,"生活制造") == VALUE_OK then
		return s_addItem(uid,targetid,0,num,1,attr,"合成")
	end
end
function OnProductItem_22004(uid,num, matid, matnum)
	local quality = EquipQuality_White
	if quality ==  EquipQuality_White then
		local rand = math.random(1,100)
		if rand <= 30 then
			quality = EquipQuality_Blue
		elseif rand <= 40 then
			quality = EquipQuality_Yellow
		elseif rand <= 43 then
			quality = EquipQuality_Green
		end
	end
	local targetid = 22004
	local attr = Item_Attribute_Quality.."-"..quality
	if s_deleteItemByThisID(uid,matid,matnum,"生活制造") == VALUE_OK then
		return s_addItem(uid,targetid,0,num,1,attr,"合成")
	end
end
