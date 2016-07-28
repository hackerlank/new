--镖车被砸
function OnGuardDeadEvent_44503(uid,murder,taskid,p1,p2)
	local money = p1
	local rate = p2/100.0
	if money > 0 then
		money = math.floor(money * 0.8)
		local usermoney = math.floor(money * rate)
		s_addMoney(murder,MoneyType_Money,usermoney,"击败外勤人员镖车奖励")
		s_sysInfo(murder,"击败外勤人员的镖车获得奖励",ChatPos_Sys + ChatPos_Important)
		local corps = s_getCorpsId(murder)
		if corps > 0 then
			s_addCorpsField(corps,CorpVar_Money,money)
		end
	end
	if uid > 0 then
		s_sysInfo(uid,"外勤镖车被击败，团跑商任务失败",ChatPos_Sys + ChatPos_Important)
		local ringtask = s_getTaskVar(uid,taskid,MvarIndex_Ring)
		s_delTask(uid,taskid,1)
		if ringtask ~= nil and ringtask == 20004 then
			RingTaskInfo20004:onFinal(uid)
		end
	end
end

