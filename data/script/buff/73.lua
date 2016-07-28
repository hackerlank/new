--副本倒计时
function OnLoopBuffEvent_1Sec_73(level,etype,eid,time,value)
	if time > 1 then
		s_sysInfo(eid,"离开副本倒计时:" .. time - 1)
	end
	if time == 1 and s_getValue(etype,eid,VALUE_TYPE_SCENE_ID) ~= 0 then
		s_relive(etype,eid)
		ReturnUserHome(eid,"OnLoopBuffEvent_1Sec_73")
	end
end
