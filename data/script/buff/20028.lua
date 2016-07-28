--致命雷暴弹
function OnLoopBuffEvent_3Sec_20028(level,etype,eid,time,value)
	local hp = s_getValue(etype,eid,VALUE_TYPE_HP)
	hp = math.floor(hp * 0.8)
	DirectAttack(7023,etype,eid,etype,eid,hp)
end

--移动清除
REMOVE_BUFF_ON_MOVE_20028 = 1
