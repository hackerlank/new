--跳舞
function OnLoopBuffEvent_10Sec_49(level,etype,eid)
	--交通方式不存档
	local traffictype,trafficid = s_getTrafficType(eid)
	if traffictype == TrafficType_None then
		s_removebuff(etype,eid,49)
		return
	end
	local level = s_getValue(etype,eid,VALUE_TYPE_LEVEL)
	local ret = CheckInDoubleDance(etype,eid)
	local exp = 0
	local ticketbuff1 = 57
	local ticketbuff2 = 125
	local ticketbuff3 = 126
	local ticketbufflevel1 = s_getbufflevel(etype,eid,ticketbuff1)
	local ticketbufflevel2 = s_getbufflevel(etype,eid,ticketbuff2)
	local ticketbufflevel3 = s_getbufflevel(etype,eid,ticketbuff3)
	local rates = {1,2.5,4.5,8,8}
	if ticketbufflevel1 > 0 then
		local quality = s_getbuffvalue(etype,eid,ticketbuff1) + 1
		--0.6*(30+人物等级^1.5)/10秒*颜色加成
		exp = math.floor(0.6*(30+level^1.5) * rates[quality] )
	elseif ticketbufflevel2 > 0 then
		local quality = s_getbuffvalue(etype,eid,ticketbuff2) + 1
		--1.0*(30+人物等级^1.5)/10秒*颜色加成
		--兵王2修改 begin
		if level <= 60 then
			exp = math.floor(0.6*(30+level^1.5) * rates[quality] )
		else
			exp = math.floor(1.0*(30+level^1.5) * rates[quality] )
		end
		--兵王2修改 end 只有这段生效
	elseif ticketbufflevel3 > 0 then
		local quality = s_getbuffvalue(etype,eid,ticketbuff3) + 1
		--1.5*(30+人物等级^1.5)/10秒*颜色加成
		exp = math.floor(1.5*(30+level^1.5) * rates[quality] )
	elseif ret == VALUE_OK then
		--2+0.03*人物等级^1.5
		exp = math.floor(7+0.06*level^1.5)
	else
		--经验公式:1+0.02*人物等级^1.5
		exp = math.floor(3+0.04*level^1.5)
	end
	local country = s_getValue(etype,eid,VALUE_TYPE_HOMELAND)
	local step = s_getEvent(Relation_Country,country,CountryEv_Dancing)
	local step1 = s_getEvent(Relation_World,homeland,WorldEv_Time)
	local rate = 1.0
	if step == EventStep_Run then	--国家舞会加成50%
		--国家舞会 活力点获得
		if s_getVar(eid,130,13) == 0 then
			s_addVar(eid,130,13,1)
			s_addVar(eid,130,200,s_getVar(eid,130,200)+1)
			s_debugUser(eid,"国家活力点，国家舞会，参与度：1")
	end
	rate = 1.5
	local curday = s_getCurTime(TIME_ALLDAYS)
	if s_getVar(eid,116,3) ~= curday then
		s_addVar(eid,116,3,curday);
		s_addCountryVar(country,1,20,s_getCountryVar(country,1,20)+1)
	end
	elseif step1 ~= EventStep_Run then
		local specialbuff = s_getbufflevel(etype,eid,31071)
		if specialbuff > 0 then
			rate = 1.5
		end
	end
	if step1 == EventStep_Run then
		rate = 1.5
	end
	local num = GetTeamDanceNum(etype,eid)
	if num > 1 then
		rate = rate+((num-1)*0.1)
	end
	local worldlevel = s_getWorldLevel()
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,eid,VALUE_TYPE_HOMELAND)
	local countrystate = s_getCountryState(homeland)
	rate = rate + GetWorldLevelExp(level,worldlevel,countrystate)*0.01

	if s_checkZoneType(etype,eid,ZONE_DANCE) == VALUE_OK then
		s_refreshExp(eid,exp*rate,ExpType_Dance,49)
	end
end

function CheckInDoubleDance(etype,eid)
	local ret,otype,oid = CheckCoupleTeam(etype,eid)
	local traffictype,trafficid = s_getTrafficType(eid)
	if traffictype == TrafficType_DanceDouble then
		local reset = VALUE_FAIL
		if ret ~= VALUE_OK then
			reset = VALUE_OK
		else
			local bufflevel = s_getbufflevel(otype,oid,49)
			if bufflevel == 0 or bufflevel == nil then
				reset = VALUE_OK
			end
		end
		if reset == VALUE_OK then
			s_resetTrafficType(eid)
			local dancelevel = s_getskilllevel(etype,eid,50005)
			s_setTrafficType(eid,TrafficType_Dance,dancelevel)
			traffictype = TrafficType_Dance
		end
	end
	if traffictype == TrafficType_DanceDouble then
		return VALUE_OK
	end
	return VALUE_FAIL
end

function GetTeamDanceNum(etype,eid)
	local num = 0
	local list = s_getTeamEntry(etype,eid,15)
	for i = 1,table.getn(list), 2 do
		if s_getbufflevel(list[i],list[i+1],49) > 0 then
			num = num +1
		end
	end
	return num
end
