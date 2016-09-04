--铠化,物理防御增加8%
function OnHoldBuff_1008(level,etype,eid)
	local demonid = s_getcurdemon(eid)
	if demonid == 0 or demonid == nil then
		return
	end
	local pdef = math.floor(s_getItemValue(eid,demonid,Item_Attribute_Demon_Pdef)*0.08)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,pdef)
	s_addValue(etype,eid,VALUE_TYPE_DEMON_PDEF,pdef)
end

