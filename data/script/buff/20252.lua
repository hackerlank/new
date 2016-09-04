-- (团飞艇副本)空雷 (停止移动)3s,同时移除飞艇当前增益buff
function OnHoldBuff_20252(level,etype,eid)
	s_worldInfo("空雷")
	s_setValue(etype,eid,VALUE_TYPE_UNABLE_MOVE,1)
	s_removebuff(etype,eid,20250)
	s_removebuff(etype,eid,20254)
end
