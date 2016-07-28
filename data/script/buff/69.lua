--核子魔窟报名
function OnLoopBuffEvent_1Min_69(level,etype,eid)
	local hour = s_getCurTime(TIME_CURHOURS)
	if hour == 10 or hour == 13 or hour == 15 or hour == 17 or hour == 19 or hour == 22 then
		local min = s_getCurTime(TIME_CURMINUTES)
		if min >= 27 and min <30 then
			if math.floor(s_getVar(eid,101,16) /60*60) ~= math.floor(s_getCurTime(TIME_ALLSECONDS)) then
				local func = "OnBuffAction_59($1,$2)"
				local buttons = "确定|3|Enter|取消|4|Esc|稍后|5|Esc"
				local msg = "核子魔窟开放，是否赶往参加？"
				s_registerMsgBox(eid,func,buttons,msg,300)
			end
		end
	end
end
function OnBuffAction_59(uid,result)
	if result == Button_Yes then
		s_gomap(uid,13,118,115,117)
	elseif result == Button_No then
		s_sysInfo(uid,"您选择放弃参加本次核子魔窟副本，您的通行证将被保留,我们会安排您参加下次的副本")
	end
	s_addVar(uid,101,16,s_getCurTime(TIME_ALLSECONDS))
end
