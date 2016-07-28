--战士之魂
function OnHoldBuff_10802(level,etype,eid)
	local percent = {150,250,450,650,1000,1350,2000,2400,2800,3500,
		4000,4500,5500,6000,6500,7000}
	s_addValue(etype,eid,VALUE_TYPE_MAXHP_ADD_EXT,percent[level])
end
