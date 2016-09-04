--摆摊，删除时取消摆摊
function OnHoldBuff_8(level,etype,eid)
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_MOVE,1)
end
