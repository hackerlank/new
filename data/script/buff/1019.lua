--共生，生命最大值增加8%
function OnHoldBuff_1019(level,etype,eid)
	local demonid = s_getcurdemon(eid)
	if demonid == 0 or demonid == nil then
		return
	end
	local maxhp = s_getItemValue(eid,demonid,Item_Attribute_Demon_Maxhp)
	local add = math.floor(maxhp*0.08)
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,add)
	s_addValue(etype,eid,VALUE_TYPE_DEMON_MAXHP,add)
end

