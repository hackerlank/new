--血肉重生
function OnRemoveBuffEvent_20061(level,etype,eid)
	local maxhp = s_getValue(etype,eid,VALUE_TYPE_MAXHP)
	s_addValue(etype,eid,VALUE_TYPE_HP,maxhp)
end
