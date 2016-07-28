--锐化3，物攻,化攻增加%12
function OnHoldBuff_1024(level,etype,eid)
	local demonid = s_getcurdemon(eid)
	if demonid == 0 or demonid == nil then
		return
	end
	local pdam = s_getItemValue(eid,demonid,Item_Attribute_Demon_Pdam)
	local mdam = s_getItemValue(eid,demonid,Item_Attribute_Demon_Mdam)
	pdam = math.floor(pdam*0.12)
	mdam = math.floor(mdam*0.12)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,pdam)
	s_addValue(etype,eid,VALUE_TYPE_DEMON_PDAM,pdam)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,mdam)
	s_addValue(etype,eid,VALUE_TYPE_DEMON_MDAM,mdam)
end

--宠物休息清除标记
REMOVE_BUFF_ON_DEMON_REST_1024 = 1
