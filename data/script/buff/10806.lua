--幻影闪避
function OnHoldBuff_10806(level,etype,eid)
	local percent = {6,9,10,11,13,14,15,16,17,19,20}
	s_addValue(etype,eid,VALUE_TYPE_HIDE,percent[level]*100)
end
