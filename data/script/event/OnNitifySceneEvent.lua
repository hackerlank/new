--场景全局事件回调
function OnNotifySceneEvent(eventid,value1,value2,value3)
	if eventid == 1 then		--团战
		CopySceneInfo_3:CorpsBattleEventCall(value1,value2,value3)
	elseif eventid == 2 then	--团挑战
		CopySceneInfo_3:CorpsBattleEventCall(value1,value2,value3)
	elseif eventid == 4 then	--军战
		CopySceneInfo_7:ArmyBattleEventCall(value1,value2,value3)
	elseif eventid == 5 then	--团副本
		CorpsCopyStartEvent(value1)
	elseif eventid == 6 then	--国王挑战
		CopySceneInfo_7:ArmyBattleEventCall(value1,value2,value3)
	elseif eventid == 8 then
		CopySceneInfo_7:ArmyBattleEventCall(value1,value2,value3)
	elseif eventid == 9 then
		CopySceneInfo_7:ArmyBattleEventCall(value1,value2,value3)
	elseif eventid == 10007 or eventid == 10009 then	--极速狂飙
		if s_isCountryInServer(13) == VALUE_OK then
			local list = pack(s_getCountryList())
			for i = 1,table.getn(list) do
				s_registerGomapMsgBox(list[i],list[i],3,361,414,31,"本国今日活动极速狂飙已经发布，是否立即前往光明要塞飚车党胡哥处报名?",eAreaType_Right)
			end
	end
	elseif eventid == 10024 or eventid == 10025 then
		if s_isCountryInServer(13) == VALUE_OK then
			local list = pack(s_getCountryList())
			for i = 1,table.getn(list) do
				s_registerGomapMsgBox(list[i],list[i],189,218,200,81,"跨区今日活动极速狂飙已经发布，是否立即前往魔境仙踪奥兹国王处报名？",eAreaType_Right)
			end
		end
	elseif eventid == 10020 or eventid == 10021 or eventid == 10022 then
		if s_isCountryInServer(13) == VALUE_OK then --只从中立区发布任务，避免各个服务器重复发布
			if s_getWorldLevel() > 1 then
				s_worldInfo("<p><n color=\"GXColorBlueSky\">王者试炼已经开启，胜利者有机会获得</n><n color=\"GXColorYellow\">“王者之翼”</n><n color=\"GXColorBlueSky\">！报名处</n><goto id=\"154\" mapid=\"118\" cid=\"13\" flagpoint=\"1\" /></p>",10)
		end
		end
	elseif eventid >= 20013 and eventid <= 20018 then
		if s_isCountryInServer(13) == VALUE_OK then
			s_worldInfo("<p><n color=\"GXColorBlueSky\">核子魔窟已开启！击败BOSS有机会获得</n><n color=\"GXColorYellow\">“神兵魔武”</n><n color=\"GXColorBlueSky\">！报名处</n><goto id=\"163\" mapid=\"118\" cid=\"13\" flagpoint=\"1\" /><book bookid='70018' text='[详细]'/></p>",10)
		end
	elseif eventid == 20042 then
		local cid = value1
		if s_isCountryInServer(cid) == VALUE_OK then
			s_registerGomapMsgBox(cid,cid,3,383,382,21,"国家舞会已开始，是否前往参加",eAreaType_Right)
		end
	elseif eventid == 1007 then
		local corps = value1
		if corps > 0 then
			local countryid = s_getCorpsField(corps, CorpVar_Country)
			if s_isCountryInServer(countryid) == VALUE_OK then
				JunXunTaskBegin(corps)
			end
		end
	elseif eventid == 1009 then
		local corps = value1
		if corps > 0 then
			local countryid = s_getCorpsField(corps, CorpVar_Country)
			if s_isCountryInServer(countryid) == VALUE_OK then
				OnJunXunBombEndEvent(corps)
			end
		end
	end
end

