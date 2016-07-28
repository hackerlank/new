--国家镖车
function OnHolidayEvent_CountryGuard_Notify(hour,minute)
	if s_getWorldLevel() < 2 then
		return
	end
	if s_isCountryInServer(13) == VALUE_OK then
		s_worldInfo("12:00整国家水晶押运兽会随机在2个国家启动，请各国国民做好准备。",ChatPos_Pop)
	end
end

function OnHolidayEvent_CountryGuard_Begin(hour,minute)
	if s_getWorldLevel() < 2 then
		return
	end
	if s_isCountryInServer(13) == VALUE_OK then
		s_worldInfo("国家水晶押运兽启动，请留意右下角国家水晶押运兽状态！",ChatPos_Sys + ChatPos_Important)
	end
end

RegisterHolidayActivityEvent(11,40,"OnHolidayEvent_CountryGuard_Notify")
RegisterHolidayActivityEvent(12,0,"OnHolidayEvent_CountryGuard_Begin")
