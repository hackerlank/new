--生化2，化防融合增加8%
function OnHoldBuff_1021(level,etype,eid)
	local demonid = s_getcurdemon(eid)
	if demonid == 0 or demonid == nil then
		return
	end
	local mdef = s_getItemValue(eid,demonid,Item_Attribute_Demon_Mdef)
	mdef = math.floor(pdef*0.08)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,mdef)
	s_addValue(etype,eid,VALUE_TYPE_DEMON_MDEF,mdef)
end

--宠物休息清除标记
REMOVE_BUFF_ON_DEMON_REST_1021 = 1
