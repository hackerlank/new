--毁灭胜迹
NpcMenuInfo5086 =
{
	talk="<p><n>   神注视人间，满目慈悲，满目战火。</n></p>",
	button = {
		--{"免费领取新年爆竹(7)","NpcMenuInfo5086:DealMenu2($1)","NpcMenuInfo5086:ShowMenu2($1)"},
		{"发布情报任务(2)","NpcMenuInfo128:DealIssueQBTask($1)","NpcMenuInfo128:ShowIssueQBTask($1)"},
		{"发布远征任务(2)","NpcMenuInfo128:DealIssueYZTask($1)","NpcMenuInfo128:ShowIssueYZTask($1)"},
		{"接受女神的祝福(7)","NpcMenuInfo5086:DealMenu($1)","NpcMenuInfo5086:ShowMenu($1)"},
		{"毁灭神迹玩法介绍(1)","ShowSimpleBookInterface($1,70156)"},
	},
}

function NpcMenuInfo5086:ShowMenu2(uid)
	if OnHolidayEvent_Boss_Check_60983() ~= VALUE_OK then
		return	VALUE_FAIL
	end
	local hours = s_getCurTime(TIME_CURHOURS)
	if hours < 20 or hours >= 21 then
		return	VALUE_FAIL
	end
	return VALUE_OK
end

function NpcMenuInfo5086:DealMenu2(uid)
	--[[if s_getVar(uid,10009,2) >= 1 then
	s_sysInfo(uid,"今天的新年爆竹已经领取过")
	return VALUE_FAIL
	end]]--
	local callback = "NpcMenuInfo5086:DealGetMenu2($1)"
	s_showbar(uid,5000,callback,0,1)
end

function NpcMenuInfo5086:DealGetMenu2(uid)
	s_addVar(uid,10009,2,1)
	s_addItem(uid,55070,3,10,0,"1-1","新年爆竹")
end


function NpcMenuInfo5086:ShowMenu(uid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	return VALUE_OK
end

function NpcMenuInfo5086:DealMenu(uid)
	local msg = "<p><n>人类进程3以后，略低于正常角色等级，但还在努力变强的国民，每天完成特定体力值任务（情报、远征、速递等），有概率获得幸运女神的祝福，凭借</n><n color='GXColorGreen'>女神的祝福</n><n>可在此兑换一些角色经验（也可以右键直接使用，感谢女神后将获得海量角色经验奖励）。</n></p>"
	local baseid = 31556
	ShowTaskPack(uid,"兑换女神的祝福",msg,"确定","NpcMenuInfo5086:DealGetMenu($1,$2,$3,$4)",baseid)
end

function NpcMenuInfo5086:DealGetMenu(uid,baseid,thisid,num)
	if baseid ~= 31556 then
		s_sysInfo(uid,"放入的不是女神的祝福")
		return
	end
	if num < 1 then
		s_sysInfo(uid,"数量不足")
		return
	end
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local leveldiff = s_getMaxUserLevel() - s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_getWorldLevel() < 3 then
		s_sysInfo(uid,"您当前的人类进程太低了")
		return
	end
	if leveldiff < 10 then
		s_sysInfo(uid,"您当前的等级过高，已经追上其他玩家了")
		return
	end
	if level < 61 then
		s_sysInfo(uid,"您当前的等级过低")
		return
	end
	if s_deleteItemByThisID(uid,thisid,num,"删除女神祝福") == VALUE_OK then
		local exp = Dealtaskexpitemexp_31556(uid)
		s_refreshExp(uid,exp*num,ExpType_Item,31556)
	end
end

function OnNpcDeadEventCountryWar5086(mid,thisid)
	if mid == 0 or mid == nil then
		s_debug("出现异常，找不到毁灭神迹的杀手")
		return
	end
	if thisid == 0 or thisid == nil then
		s_debug("出现异常，找不到毁灭神迹")
		return
	end
	local murdercountry = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_HOMELAND)
	if murdercountry == 0 or murdercountry == nil then
		s_debug("出现异常，找不到毁灭神迹的杀手的国籍")
		return
	end
	local name = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_NAME)
	if name == 0 or name == nil then
		s_debug("出现异常，找不到毁灭神迹杀手的名字")
		return
	end
	local curcountry = s_getValue(SCENE_ENTRY_PLAYER,mid,VALUE_TYPE_CURRENT_COUNTRY)
	if curcountry == 0 or curcountry == nil then
		s_debug("出现异常，找不到毁灭神迹所在国家")
		return
	end
	local king = s_getCountryField(curcountry,CountryVar_Marshal)
	if king == 0 or king == nil then
		s_countryInfo(murdercountry,"对方国家没有国王，毁灭神迹后，无法对该国国王进行惩罚！", ChatPos_Sys + ChatPos_Honor)
		return
	end
	--[[
	local kingname = s_getValue(SCENE_ENTRY_PLAYER,king,VALUE_TYPE_NAME)
	if kingname == 0 or kingname == nil then
	return
	end
	]]
	local today = s_getCurTime(TIME_ALLDAYS)
	if s_getCountryVar(curcountry,1,89) ~= today then
		s_addCountryVar(curcountry,1,90,1)
		s_addCountryVar(curcountry,1,89,today)
		s_addTitle(SCENE_ENTRY_PLAYER,mid,69)
	elseif s_getCountryVar(curcountry,1,90) >= 3 then
		return
	else
		s_addCountryVar(curcountry,1,90,s_getCountryVar(curcountry,1,90)+1)
		s_addTitle(SCENE_ENTRY_PLAYER,mid,69)
	end
	if king ~= 0 and king ~= nil then
		s_worldInfo(s_getCountryName(murdercountry).."的"..name.."摧毁了"..s_getCountryName(curcountry).."的神迹，并把该国的国王押入囚车。", ChatPos_Sys + ChatPos_Honor)
	end
	--关国王进监狱，15分钟
	--对方国家刷新NPC
	s_jailKing(curcountry,king,murdercountry,mid)
	s_debug("毁灭神迹被击杀")
	if s_getCountryVar(murdercountry,12,11) < COUNTRY_ACTIVITY_33810 then
		s_addCountryVar(murdercountry,12,11,s_getCountryVar(murdercountry,12,11)+1)
	end
	if s_getVar(mid,130,23) == 0 then
		s_addVar(mid,130,23,1)
		s_addVar(mid,130,200,s_getVar(mid,130,200)+1)
		s_debugUser(mid,"国家活力点，击败神迹，参与度：1")
	end
	local list = s_getNineEntry(SCENE_ENTRY_NPC,thisid,30)
	for i = 1, table.getn(list), 2 do
		if list[i] == SCENE_ENTRY_PLAYER and
			s_getValue(list[i],list[i+1],VALUE_TYPE_HOMELAND) == murdercountry then
			if s_getVar(list[i+1],130,23) == 0 then
				s_setVar(list[i+1],130,23,1)
				s_setVar(list[i+1],130,200,s_getVar(list[i+1],130,200)+1)
				s_debugUser(list[i+1],"国家活力点，击败神迹，参与度：1")
			end
		end
	end
end

RegisterMyNpcDeadEvent(5086,"OnNpcDeadEventCountryWar5086($1,$2)")
