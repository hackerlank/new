--精神之墙
function OnHoldBuff_10317(level,etype,eid)
	local percent = {80,81,82,83,84,85}
	s_addValue(etype,eid,VALUE_TYPE_SUBMH,percent[level]*100)
end
