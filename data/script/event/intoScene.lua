--进入场景
function OnPlayerIntoScene(uid)
	--清除活动变量
	ResetActiveVar(uid)
	--参加升1级送12元活动
	JoinLevelupReward(uid)
	--检查是否有升1级送12元活动
	CheckHaveLevelupReward(uid)
	--右测气泡提示有升1级送12元奖励未领取
	RemindLevelupReward(uid)
	--CheckAddCommonSkill(uid)
	--检查是否有新手礼物
	CheckHaveLeftPresent(uid)
	--社会关系检查
	OnRelationOnlineEvent(uid)
	--离线猎命师手扎
	OnLastOfflineExpEvent(uid)
	--是否处于掠夺
	OnCountryRobEvent(uid)
	--新功能提示
	OnNewFunctionTips(uid)
	--9天夺宝
	OnNineDayPresentEvent(uid)
	--取消新手保护
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level >= 1 then
		s_cancelProtect(uid)
	end
	if s_getField(uid,UserVar_LovePartner) == 0 then
		if s_getVar(uid, 30265, 11) ~= 0 then
			ShowAddQingYuanDialog(uid, s_getVar(uid, 30265, 11))
		end
	end
	--团购开启期间角色上线收到右侧气泡提示
	--	local curDay = s_getCurTime(TIME_ALLDAYS)
	local year = s_getCurTime(TIME_CURYEARS)+1900
	local month = s_getCurTime(TIME_CURMONTHS) + 1
	local mday = s_getCurTime(TIME_CURMDAYS)
	--	if level >= 61 and year == 2015 and ((month == 4 and mday >= 27) or (month == 5 and mday <= 10)) then
	if level >= 61 and year == 2015 and month == 7 and mday >= 13 and mday <= 26 then
		s_sysRight(uid,101,"超值团购，参团有奖！",0,1,1,0,0)
	end
	--VIP5没有buff的增加buff
	local viplevel = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_VIP_LEVEL)
	local bufflevel = s_getbufflevel(SCENE_ENTRY_PLAYER,uid,157)
	if viplevel == 5 and bufflevel == 0 then
		s_addbuff(SCENE_ENTRY_PLAYER,uid,157,1,31 * 86400)
	end
end
function OnCountryRobEvent(uid)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local step = s_getEvent(Relation_Country,homeland,20041)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if step == 2 and level >= 31 then
		local var = s_getVar(uid,110,2)
		local today = s_getCurTime(TIME_ALLDAYS)
		if var ~= today then
			local tcid = s_getCountryVar(homeland,3,1)
			local tcname = s_getCountryName(tcid)
			local msg = string.format("%s国王对本国发布了威慑与掠夺，在此期间杀死%s的士兵将获得双倍功勋。是否立刻前往边关？",tcname,tcname)
			local func = "OnUserGotoRob($1,$2)"
			local buttons = "确定|3|Enter|取消|4|Esc|稍后|5|Esc"
			s_registerMsgBox(uid,func,buttons,msg,0,0,eAreaType_Right,eHideButtonType_WeiShe_LueDuo,1)
		end
	end
end
function OnUserGotoRob(uid,ret)
	if ret == Button_Yes then
		if s_gomap(uid,1,7,620,115) == VALUE_OK then
			local today = s_getCurTime(TIME_ALLDAYS)
			s_addVar(uid,110,2,today)
		end
	end
end
function OnLastOfflineExpEvent(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 31 then
		return --31级之前不算
	end
	local time = s_getCurTime(TIME_ALLSECONDS)
	local last = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LAST_OFFLINE)
	if last + 18 * 60 * 60 >= time then --18小时以上才算
		return
	end
	local point = math.floor((time - last - 18 * 60 * 60)/360)
	point = s_getVar(uid,112,2) + point
	if point >= 2000 then
		point = 2000
	end
	s_addVar(uid,112,2,point)
end
--离线任务经验计算
function OnOfflineTaskExpEvent(uid,ttype)
	local last_day = s_getVar(uid,8,101) --前线速递30022
	if  ttype == 1 and last_day ~=0 and last_day < s_getCurTime(TIME_ALLDAYS) then
		local num = 0
		local day = s_getCurTime(TIME_ALLDAYS) - last_day
		if day > 1 then
			num = (day -1)* 2 + num
			if num >= 14 then num = 14 end
		end
		local mul = 0
		if num == 0 then mul = 0
		elseif num <= 1 then mul = 1;
		elseif num <= 4 then mul = (0.2 + 0.8*num);
		elseif num <= 8 then mul = (1.0 + 0.6*num);
		elseif num <= 14 then mul =(2.6 + 0.4*num); end
		s_addVar(uid,8,1,mul*10)
	end
	local last_day = s_getVar(uid,8,111)--前线速递30023
	if  ttype == 2 and last_day ~=0 and last_day < s_getCurTime(TIME_ALLDAYS) then
		local num = 0
		local day = s_getCurTime(TIME_ALLDAYS) - last_day
		if day > 1 then
			num = (day-1) * 2 + num
			if num >= 14 then num = 14 end
		end
		local mul = 0
		if num == 0 then mul = 0
		elseif num <= 1 then mul = 1;
		elseif num <= 4 then mul = (0.2 + 0.8*num);
		elseif num <= 8 then mul = (1.0 + 0.6*num);
		elseif num <= 14 then mul =(2.6 + 0.4*num);end
		s_addVar(uid,8,11,mul*10)
	end
	local last_day = s_getVar(uid,8,102) --生存训练30043
	if  ttype == 3 and last_day ~=0 and last_day < s_getCurTime(TIME_ALLDAYS) then
		local num = 0
		local day = s_getCurTime(TIME_ALLDAYS) - last_day
		if day > 1 then
			num = day-1 + num
			if num >= 7 then num = 7 end
		end
		local mul = 0
		if num == 0 then mul = 0
		elseif num <= 1 then mul = 1;
		elseif num <= 4 then mul = (0.2 + 0.8*num);
		elseif num <= 8 then mul = (1.0 + 0.6*num);
		elseif num <= 14 then mul =(2.6 + 0.4*num);end
		s_addVar(uid,8,2,mul*10)
	end
	local last_day = s_getVar(uid,8,112)--生存训练30045
	if  ttype == 4 and last_day ~=0 and last_day < s_getCurTime(TIME_ALLDAYS) then
		local num = 0
		local day = s_getCurTime(TIME_ALLDAYS) - last_day
		if day > 1 then
			num = day-1 + num
			if num >= 7 then num = 7 end
		end
		local mul = 0
		if num == 0 then mul = 0
		elseif num <= 1 then mul = 1;
		elseif num <= 4 then mul = (0.2 + 0.8*num);
		elseif num <= 8 then mul = (1.0 + 0.6*num);
		elseif num <= 14 then mul =(2.6 + 0.4*num); end
		s_addVar(uid,8,12,mul*10)
	end
	local last_day = s_getVar(uid,8,103) --收集情报30025
	if  ttype == 5 and last_day ~=0 and last_day < s_getCurTime(TIME_ALLDAYS) then
		local num = 0
		local day = s_getCurTime(TIME_ALLDAYS) - last_day
		if day > 1 then
			num = (day-1) * 2 + num
			if num >= 14 then num = 14 end
		end
		local mul = 0
		if num == 0 then mul = 0
		elseif num <= 1 then mul = 1;
		elseif num <= 4 then mul = (0.2 + 0.8*num);
		elseif num <= 8 then mul = (1.0 + 0.6*num);
		elseif num <= 14 then mul =(2.6 + 0.4*num); end
		s_addVar(uid,8,3,mul*10)
	end
	local last_day = s_getVar(uid,8,113)--收集情报30055
	if  ttype == 6 and last_day ~=0 and last_day < s_getCurTime(TIME_ALLDAYS) then
		local num = 0
		local day = s_getCurTime(TIME_ALLDAYS) - last_day
		if day > 1 then
			num = (day-1) * 2 + num
			if num >= 14 then num = 14 end
		end
		local mul = 0
		if num == 0 then mul = 0
		elseif num <= 1 then mul = 1;
		elseif num <= 4 then mul = (0.2 + 0.8*num);
		elseif num <= 8 then mul = (1.0 + 0.6*num);
		elseif num <= 14 then mul =(2.6 + 0.4*num); end
		s_addVar(uid,8,13,mul*10)
	end
	local last_day = s_getVar(uid,8,104)--情缘任务国内30265
	if  ttype == 7 and last_day ~=0 and last_day < s_getCurTime(TIME_ALLDAYS) then
		local num = 0
		local day = s_getCurTime(TIME_ALLDAYS) - last_day
		if day > 1 then
			num = (day-1) * 2 + num
			if num >= 14 then num = 14 end
		end
		local mul = 0
		if num == 0 then mul = 0
		elseif num <= 1 then mul = 1;
		elseif num <= 4 then mul = (0.2 + 0.8*num);
		elseif num <= 8 then mul = (1.0 + 0.6*num);
		elseif num <= 14 then mul =(2.6 + 0.4*num); end
		s_addVar(uid,8,4,mul*10)
	end
	local last_day = s_getVar(uid,8,105)--情缘任务国外30265
	if  ttype == 8 and last_day ~=0 and last_day < s_getCurTime(TIME_ALLDAYS) then
		local num = 0
		local day = s_getCurTime(TIME_ALLDAYS) - last_day
		if day > 1 then
			num = (day-1) * 2 + num
			if num >= 14 then num = 14 end
		end
		local mul = 0
		if num == 0 then mul = 0
		elseif num <= 1 then mul = 1;
		elseif num <= 4 then mul = (0.2 + 0.8*num);
		elseif num <= 8 then mul = (1.0 + 0.6*num);
		elseif num <= 14 then mul =(2.6 + 0.4*num); end
		s_addVar(uid,8,5,mul*10)
	end
end
--新年红包
--[[function OnRequestTimerPresentEvent(uid)
local month = s_getCurTime(TIME_CURMONTHS) + 1
local mday = s_getCurTime(TIME_CURMDAYS)
if month == 2 and mday < 8 then
return
end
if month == 2 and mday > 24 then
return
end
local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
if level < 21 then
s_sysInfo(uid,"21级之后才能领取")
return
end
local time = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_ONLINE_DAYTIME)
if time < 60 * (60 - 1) then
s_sysInfo(uid,"您的当前在线时间不足一小时")
return
end
if s_getVar(uid,10002,6) == s_getCurTime(TIME_ALLDAYS) then
s_sysInfo(uid,"您已经领取过礼包了")
return
end
s_addVar(uid,10002,6,s_getCurTime(TIME_ALLDAYS))
s_addItem(uid,31284,0,1,0,"1-1","新年礼包")
s_addItem(uid,55065,0,3,0,"1-1","新年拜年贴")
end]]

--中秋节活动
--[[function OnRequestZhongQiuTimerPresentEvent(uid)
local month = s_getCurTime(TIME_CURMONTHS) + 1
local mday = s_getCurTime(TIME_CURMDAYS)
if month == 9 and mday < 29 then
return
end
if month == 10 and mday > 8 then
return
end
local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
if level < 21 then
s_sysInfo(uid,"21级之后才能领取")
return
end
local time = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_ONLINE_DAYTIME)
if time < 60 * (60 - 1) then
s_sysInfo(uid,"您的当前在线时间不足一小时")
return
end
if s_getVar(uid,10002,6) == s_getCurTime(TIME_ALLDAYS) then
s_sysInfo(uid,"您已经领取过礼包了")
return
end
s_addVar(uid,10002,6,s_getCurTime(TIME_ALLDAYS))
s_addItem(uid,55000,0,1,0,"1-1","国庆礼包")
s_addItem(uid,55001,0,1,0,"1-1","中秋礼包")
s_addItem(uid,55002,0,1,0,"1-1","中秋贺卡")
end]]

--新区礼包活动
function OnRequestNewServerPresentEvent(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 21 then
		s_sysInfo(uid,"21级之后才能领取")
		return
	end
	local time = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_ONLINE_DAYTIME)
	if time < 60 * (60 - 1) then
		s_sysInfo(uid,"您的当前在线时间不足一小时")
		return
	end
	if s_getVar(uid,10002,6) == s_getCurTime(TIME_ALLDAYS) then
		s_sysInfo(uid,"您已经领取过礼包了")
		return
	end
	s_addVar(uid,10002,6,s_getCurTime(TIME_ALLDAYS))
	s_addItem(uid,55098,0,1,0,"1-1","逆袭宝箱")
end
