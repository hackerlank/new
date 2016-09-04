--融合2,所有属性增加8%
function OnHoldBuff_1013(level,etype,eid)
	local demonid = s_getcurdemon(eid)
	if demonid == 0 or demonid == nil then
		return
	end
	local percent = 0.20
	local pdam = s_getItemValue(eid,demonid,Item_Attribute_Demon_Pdam)
	local addpdam = math.floor(pdam*percent)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,addpdam)
	s_addValue(etype,eid,VALUE_TYPE_DEMON_PDAM,addpdam)
	local mdam = s_getItemValue(eid,demonid,Item_Attribute_Demon_Mdam)
	local addmdam = math.floor(mdam*percent)
	s_addValue(etype,eid,VALUE_TYPE_MDAM_ADD_EXT,addmdam)
	s_addValue(etype,eid,VALUE_TYPE_DEMON_MDAM,addmdam)
	local pdef = s_getItemValue(eid,demonid,Item_Attribute_Demon_Pdef)
	local addpdef = math.floor(pdef*percent)
	s_addValue(etype,eid,VALUE_TYPE_PDEF_ADD_EXT,addpdef)
	s_addValue(etype,eid,VALUE_TYPE_DEMON_PDEF,addpdef)
	local mdef = s_getItemValue(eid,demonid,Item_Attribute_Demon_Mdef)
	local addmdef = math.floor(mdef*percent)
	s_addValue(etype,eid,VALUE_TYPE_MDEF_ADD_EXT,addmdef)
	s_addValue(etype,eid,VALUE_TYPE_DEMON_MDEF,addmdef)
	local maxhp = s_getItemValue(eid,demonid,Item_Attribute_Demon_Maxhp)
	local addmaxhp = math.floor(maxhp*percent)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,addmaxhp)
	s_addValue(etype,eid,VALUE_TYPE_DEMON_MAXHP,addmaxhp)
end

--宠物休息清除标记
REMOVE_BUFF_ON_DEMON_REST_1013 = 1
