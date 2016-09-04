--玩家等级提升事件
function OnPlayerLevelUpEvent(userid,level)
	--执行注册事件
	if LevelUpEvent ~= nil and LevelUpEvent[level] ~= nil then
		for i = 1, table.getn(LevelUpEvent[level]) do
			local call = LevelUpEvent[level][i]
			if type(call) == "function" then
				call(userid)
			elseif type(call) == "string" then
				local func = StringToFunction(call)
				if func ~= nil then
					func(userid)
				end
			end
		end
	end
	if level >= 60 then
		s_cancelProtect(userid)
	end
	--if level == 10 then
	--if s_getVar(userid,10000,4) == 0 then
	--s_addVar(userid,10000,4,1)
	--s_addVar(userid,1,23,s_getVar(userid,1,23)+10)
	--s_sysRight(userid, 64, "全民持股,百元派送",0,27,1,7,5)
	--end
	--end
	--开封后等级奖励
	if level == 61 then
		s_addItem(userid,27108,3,30,1,"1-1","61级升级奖励")
		s_addItem(userid,27110,3,125,1,"1-1","61级升级奖励")
		s_addItem(userid,26149,3,50,1,"1-1","61级升级奖励")
		s_addItem(userid,29069,3,2,1,"1-1","61级升级奖励")
	elseif level == 63 then
		s_addItem(userid,27108,3,50,1,"1-1","63级升级奖励")
		s_addItem(userid,55157,3,5,1,"1-1","63级升级奖励")
		s_addItem(userid,29069,3,3,1,"1-1","63级升级奖励")
		s_addItem(userid,26018,3,5,1,"1-1","63级升级奖励")
	elseif level == 65 then
		s_addItem(userid,32213,3,1,1,"1-1","65级升级奖励")
		s_addItem(userid,26128,3,20,1,"1-1","65级升级奖励")
		s_addItem(userid,29069,3,2,1,"1-1","65级升级奖励")
		s_addItem(userid,26018,3,5,1,"1-1","65级升级奖励")
	elseif level == 67 then
		s_addItem(userid,27108,3,80,1,"1-1","67级升级奖励")
		s_addItem(userid,26149,3,50,1,"1-1","67级升级奖励")
		s_addItem(userid,29069,3,2,1,"1-1","67级升级奖励")
		s_addItem(userid,26018,3,5,1,"1-1","67级升级奖励")
	elseif level == 70 then
		s_addItem(userid,32231,3,1,1,"1-1","70级升级奖励")
		s_addItem(userid,26102,3,30,1,"1-1","70级升级奖励")
		s_addItem(userid,27110,3,200,1,"1-1","70级升级奖励")
		s_addItem(userid,26018,3,5,1,"1-1","70级升级奖励")
	end
	if level == 71 then
		s_addItem(userid,27108,3,50,1,"1-1","71级升级奖励")
		s_addItem(userid,27110,3,125,1,"1-1","71级升级奖励")
		s_addItem(userid,26149,3,50,1,"1-1","71级升级奖励")
		s_addItem(userid,29069,3,2,1,"1-1","71级升级奖励")
	elseif level == 73 then
		s_addItem(userid,63038,3,5,1,"1-1","73级升级奖励")
		s_addItem(userid,43007,3,20,1,"1-1","73级升级奖励")
		s_addItem(userid,29069,3,2,1,"1-1","73级升级奖励")
		s_addItem(userid,26018,3,3,1,"1-1","73级升级奖励")
	elseif level == 75 then
		s_addItem(userid,29302,3,2,1,"1-1","75级升级奖励")
		s_addItem(userid,27110,3,200,1,"1-1","75级升级奖励")
		s_addItem(userid,29069,3,2,1,"1-1","75级升级奖励")
		s_addItem(userid,26018,3,3,1,"1-1","75级升级奖励")
	elseif level == 77 then
		s_addItem(userid,55217,3,5,1,"1-1","77级升级奖励")
		s_addItem(userid,26149,3,50,1,"1-1","77级升级奖励")
		s_addItem(userid,29069,3,2,1,"1-1","77级升级奖励")
		s_addItem(userid,26018,3,3,1,"1-1","77级升级奖励")
	elseif level == 80 then
		s_addItem(userid,32231,3,1,1,"1-1","80级升级奖励")
		s_addItem(userid,26102,3,30,1,"1-1","80级升级奖励")
		s_addItem(userid,27110,3,200,1,"1-1","80级升级奖励")
		s_addItem(userid,26018,3,5,1,"1-1","80级升级奖励")
	end
	if level == 81 then
		s_addItem(userid,27108,3,50,1,"1-1","81级升级奖励")
		s_addItem(userid,27110,3,125,1,"1-1","81级升级奖励")
		s_addItem(userid,29026,3,50,1,"1-1","81级升级奖励")
		s_addItem(userid,29069,3,2,1,"1-1","81级升级奖励")
	elseif level == 83 then
		s_addItem(userid,63038,3,5,1,"1-1","83级升级奖励")
		s_addItem(userid,43007,3,20,1,"1-1","83级升级奖励")
		s_addItem(userid,29069,3,2,1,"1-1","83级升级奖励")
		s_addItem(userid,26018,3,2,1,"1-1","83级升级奖励")
	elseif level == 85 then
		s_addItem(userid,29302,3,2,1,"1-1","85级升级奖励")
		s_addItem(userid,27110,3,125,1,"1-1","85级升级奖励")
		s_addItem(userid,29069,3,2,1,"1-1","85级升级奖励")
		s_addItem(userid,26018,3,2,1,"1-1","85级升级奖励")
	elseif level == 87 then
		s_addItem(userid,55217,3,5,1,"1-1","87级升级奖励")
		s_addItem(userid,26149,3,50,1,"1-1","87级升级奖励")
		s_addItem(userid,29069,3,2,1,"1-1","87级升级奖励")
		s_addItem(userid,26018,3,2,1,"1-1","87级升级奖励")
	elseif level == 90 then
		s_addItem(userid,27108,3,100,1,"1-1","90级升级奖励")
		s_addItem(userid,26102,3,30,1,"1-1","90级升级奖励")
		s_addItem(userid,27110,3,125,1,"1-1","90级升级奖励")
		s_addItem(userid,26018,3,3,1,"1-1","90级升级奖励")
	end
	if level == 11 or level == 25 then
		s_incSmallPackNum(userid)
		s_sysInfo(userid, "恭喜等级提升，获得额外小包裹位")
	end
	if level == 21 or level == 41 or level == 60 or level == 70 then
		s_sysRight(userid,122, "588周红利：一次投入，一年保障！",0,48,1,0,0)
	end
	--设置默认回城点
	if level == 2 then
		SetReturnPointDefault(userid,1,37,82)
	end
	-- if level == 12 then
	--瞬网任务
	-- s_doneShunNetTask(userid,level)
	-- end
	if level == 21 then
		SetReturnPointDefault(userid,3,334,286)
		--瞬网任务
		s_doneShunNetTask(userid,level)
	end
	if level == 28 then
		--瞬网任务
		s_doneShunNetTask(userid,level)
	end
	if level == 61 then
		SetReturnPointDefault(userid,5,304,579)
	end
	if level >= 41 then
		s_incStorePackNum(userid)
	end
	--阶段升级预告

	--[[屏蔽阶段升级预告

	--5级授勋(1)
	if level >= 5 and level < 8 and s_getTaskValue(userid,3231,TaskValue_Process) ~= TaskProcess_Done then
	s_sysRightNewFunction(userid,19,"授勋",180,42,0)
	else
	s_sysRightRemoveNewFunction(userid,19)
	end
	--9级装备合成(2)
	if level >= 9 and level < 11 and s_getTaskValue(userid,3341,TaskValue_Process) ~= TaskProcess_Done then
	s_sysRightNewFunction(userid,5,"装备合成",180,45,0)
	else
	s_sysRightRemoveNewFunction(userid,5)
	end
	--11级宠物(3)
	if level >= 11 and level < 14 and s_getTaskValue(userid,3461,TaskValue_Process) ~= TaskProcess_Done then
	s_sysRightNewFunction(userid,22,"宠物",180,35,0)
	else
	s_sysRightRemoveNewFunction(userid,22)
	end
	--14级仓库(4)
	if level >= 16 and level < 19 and s_getTaskValue(userid,3681,TaskValue_Process) ~= TaskProcess_Done then
	s_sysRightNewFunction(userid,3,"仓库",180,34,0)
	else
	s_sysRightRemoveNewFunction(userid,3)
	end
	--19级坐骑(5)
	if level >= 14 and level < 15 and s_getTaskValue(userid,3811,TaskValue_Process) ~= TaskProcess_Done then
	s_sysRightNewFunction(userid,9,"坐骑",180,46,0)
	else
	s_sysRightRemoveNewFunction(userid,9)
	end
	--25级入团(6)
	if level >= 25 and level < 28 and s_getTaskValue(userid,12032,TaskValue_Process) ~= TaskProcess_Done then
	s_sysRightNewFunction(userid,2,"入团",180,44,0)
	else
	s_sysRightRemoveNewFunction(userid,2)
	end
	--28级生活技能(7)
	if level >= 28 and level < 29 and s_getTaskValue(userid,4201,TaskValue_Process) ~= TaskProcess_Done then
	s_sysRightNewFunction(userid,29,"生活技能",180,38,0)
	else
	s_sysRightRemoveNewFunction(userid,29)
	end
	--29级命运大厅(8)（2012年10月9日改为41级开启，42级关闭）
	if level >= 41 and level < 42 then
	s_sysRightNewFunction(userid,33,"命运大厅",180,44,0)
	else
	s_sysRightRemoveNewFunction(userid,33)
	end
	--32级合体宠物(9)
	if level >= 32 and level < 34 and s_getTaskValue(userid,4412,TaskValue_Process) ~= TaskProcess_Done then
	s_sysRightNewFunction(userid,32,"合体宠物",180,35,0)
	else
	s_sysRightRemoveNewFunction(userid,32)
	end
	--34级探险者地宫(10)
	if level >= 34 and level < 36 then
	s_sysRightNewFunction(userid,17,"探险者地宫",180,44,0)
	else
	s_sysRightRemoveNewFunction(userid,17)
	end
	--40级战斗坐骑(11)
	if level >= 40 and level < 41 and s_getTaskValue(userid,13051,TaskValue_Process) ~= TaskProcess_Done then
	s_sysRightNewFunction(userid,42,"战斗坐骑",180,46,0)
	else
	s_sysRightRemoveNewFunction(userid,42)
	end
	--42级5星武器(12)
	--if level >= 42 and level < 43 and s_getTaskValue(userid,1581,TaskValue_Process) ~= TaskProcess_Done then
	--s_sysRightNewFunction(userid,58,"5星武器",180,41,0)
	--else
	--s_sysRightRemoveNewFunction(userid,58)
	--end
	--44级要塞守卫(13)
	if level >= 44 and level < 45 and s_getTaskValue(userid,1624,TaskValue_Process) ~= TaskProcess_Done then
	s_sysRightNewFunction(userid,37,"要塞守卫",180,44,0)
	else
	s_sysRightRemoveNewFunction(userid,37)
	end
	--55级职业套装(14)
	if level >= 54 and level < 56 and s_getTaskValue(userid,11831,TaskValue_Process) ~= TaskProcess_Done then
	s_sysRightNewFunction(userid,59,"职业套装",180,39,0)
	else
	s_sysRightRemoveNewFunction(userid,59)
	end
	--59级血脉(15)
	if level >= 59 and level < 61 then
	s_sysRightNewFunction(userid,60,"血脉",180,44,0)
	else
	s_sysRightRemoveNewFunction(userid,60)
	end
	--61级羽翼(16)
	if level >= 61 and level < 62 and s_getTaskValue(userid,15212,TaskValue_Process) ~= TaskProcess_Done then
	s_sysRightNewFunction(userid,61,"羽翼",180,43,0)
	else
	s_sysRightRemoveNewFunction(userid,61)
	end
	--69级传奇烙印(17)
	if level >= 69 and level < 71 then
	s_sysRightNewFunction(userid,62,"传奇烙印",180,36,0)
	else
	s_sysRightRemoveNewFunction(userid,62)
	end
	--78级骑魂谷(18)
	if level >= 78 and level < 81 and s_getTaskValue(userid,15220,TaskValue_Process) ~= TaskProcess_Done then
	s_sysRightNewFunction(userid,63,"骑魂谷",180,37,0)
	else
	s_sysRightRemoveNewFunction(userid,63)
	end
	--81级炼金(19)
	if level >= 81 and level < 83 and s_getTaskValue(userid,15226,TaskValue_Process) ~= TaskProcess_Done then
	s_sysRightNewFunction(userid,64,"炼金",180,44,0)
	else
	s_sysRightRemoveNewFunction(userid,64)
	end
	--]]

	if level == 60 or level == 70 or level == 80 then
		local order = s_getCountryVar(13,13,level)
		if order < 30 then
			order = order + 1
			s_addCountryVar(13,13,level,order)
			OnWorldLevelOrderPresent(userid,level,order)
		end
	end

	--[[
	--2级属性加点引导
	if level == 2 then
	s_openGuide(userid,2)
	end

	--5级技能加点引导
	if level == 5 then
	s_openGuide(userid,5)
	end

	--8级属性加点引导
	if level == 8 then
	s_openGuide(userid,2)
	end

	--20级属性加点引导
	if level == 20 then
	s_openGuide(userid,2)
	end
	--]]

	--12、42、61级引导红包抽取
	if s_getCurTime(TIME_CURYEARS)+1900 == 2015
		and s_getCurTime(TIME_CURMONTHS)+1 == 4
		and s_getCurTime(TIME_CURMDAYS) >= 10 and s_getCurTime(TIME_CURMDAYS) <= 18 then
		if level == 12 then
			s_openGuide(userid,410)
		end
		if level == 42 then
			s_openGuide(userid,410)
		end
		if level == 61 then
			s_openGuide(userid,410)
		end
	end

	--13级升1级送12元
	if level == 13 then
		s_openGuide(userid,13)
	end

	--15级7天闯关
	if level == 15 then
		s_openGuide(userid,15)
	end



	--11级武器升级引导
	if level == 11 then
		s_openGuide(userid,11)
	end

	--21级武器升级引导
	if level == 21 then
		s_openGuide(userid,21)
	end

	--30级排行榜引导
	if level == 30 then
		s_openGuide(userid,30)
	end

	--31级武器升级引导
	if level == 31 then
		s_openGuide(userid,31)
	end

	--41级武器升级引导
	if level == 41 then
		s_openGuide(userid,41)
	end

	--45级成就引导
	if level == 45 then
		s_openGuide(userid,45)
	end

	--51级武器升级引导1
	if level == 51 then
		s_openGuide(userid,510003)
	end

	--55级BOSS界面引导1
	if level == 55 then
		s_openGuide(userid,55)
	end

	--60级占星术引导1
	if level == 60 then
		s_openGuide(userid,60)
	end

	--70级星辰图引导1
	if level == 70 then
		s_openGuide(userid,70)
	end

	--16级勋章商店引导
	if level == 16 then
		s_openGuide(userid,16)
	end


	--19级技能加点引导
	if level == 19 then
		s_openGuide(userid,5)
	end

	--51级1V1模拟战引导
	--if level == 52 then
	--	s_openGuide(userid,51)
	--end

	if level >= 60 then
		--自动学习军衔技能 八面威风
		s_studyskill(SCENE_ENTRY_PLAYER,userid,20000,1,0)
	end
	if level >= 80 then
		--自动学习军衔技能 海纳百川
		s_studyskill(SCENE_ENTRY_PLAYER,userid,20001,1,0)
	end
	--等级金砖
	if level == 60 then
		local tickets  = s_getVar(userid,10010,1)+s_getVar(userid,10010,2)
		if tickets ~= 0 then
			s_addMoney(userid,MoneyType_GoldTicket,400*tickets,"达到60级，等级金砖返还赠点")
			s_addVar(userid,10010,3,s_getVar(userid,10010,3)+400*tickets)
			s_sysMail(userid,"恭喜您达到60级，该等级的金砖返还已到达您的账户，共获得" ..math.floor(400*tickets).. "赠点，请注意查收")
		end
	elseif level == 70 then
		local tickets  = s_getVar(userid,10010,1)+s_getVar(userid,10010,2)
		if tickets ~= 0 then
			s_addMoney(userid,MoneyType_GoldTicket,600*tickets,"达到70级，等级金砖返还赠点")
			s_addVar(userid,10010,3,s_getVar(userid,10010,3)+600*tickets)
			s_sysMail(userid,"恭喜您达到70级，该等级的金砖返还已到达您的账户，共获得" ..math.floor(600*tickets).. "赠点，请注意查收")
		end
	elseif level == 80 then
		local tickets  = s_getVar(userid,10010,1)+s_getVar(userid,10010,2)
		if tickets ~= 0 then
			s_addMoney(userid,MoneyType_GoldTicket,600*tickets,"达到80级，等级金砖返还赠点")
			s_addVar(userid,10010,3,s_getVar(userid,10010,3)+600*tickets)
			s_sysMail(userid,"恭喜您达到80级，该等级的金砖返还已到达您的账户，共获得" ..math.floor(600*tickets).. "赠点，请注意查收")
		end
	elseif level == 90 then
		local tickets  = s_getVar(userid,10010,1)+s_getVar(userid,10010,2)
		if tickets ~= 0 then
			s_addMoney(userid,MoneyType_GoldTicket,600*tickets,"达到90级，等级金砖返还赠点")
			s_addVar(userid,10010,3,s_getVar(userid,10010,3)+600*tickets)
			s_sysMail(userid,"恭喜您达到90级，该等级的金砖返还已到达您的账户，共获得" ..math.floor(600*tickets).. "赠点，请注意查收")
		end
	elseif level == 100 then
		local tickets  = s_getVar(userid,10010,1)+s_getVar(userid,10010,2)
		if tickets ~= 0 then
			s_addMoney(userid,MoneyType_GoldTicket,1680*tickets,"达到100级，等级金砖返还赠点")
			s_addMoney(userid,MoneyType_Gold,1000*tickets,"达到100级，等级金砖返还金币")
			s_addVar(userid,10010,3,s_getVar(userid,10010,3)+1680*tickets)
			s_addVar(userid,10010,4,s_getVar(userid,10010,4)+1000*tickets)
			s_sysMail(userid,"恭喜您达到100级，该等级的金砖返还已到达您的账户，共获得" ..math.floor(1680*tickets).. "赠点，" ..math.floor(1000*tickets).."金币，请注意查收")
		end
	end
	--生产技能
	if level == 28 then
		s_setVar(uid,14,10,1)
	elseif level == 55 then
		s_setVar(uid,14,11,1)
	elseif level == 71 then
		s_setVar(uid,14,12,1)
	elseif level == 35 then
		s_setVar(uid,14,13,1)
	elseif level == 60 then
		s_setVar(uid,14,14,1)
	elseif level == 73 then
		s_setVar(uid,14,15,1)
	end

	--9天夺宝
	local nineDayLevel = {20, 30, 40, 50, 60, 70}
	for i = 1, table.getn(nineDayLevel) do
		if level == nineDayLevel[i] then
			OnNineDayPresentEvent(userid)
		end
	end

	--人生转轮副本打开提醒,进程1不可进入，填200占位用
	local fateDice = {200, 70, 80, 90, 100, 110, 120, 130, 140}
	local worldlevel = s_getWorldLevel()
	if worldlevel then
		if level == fateDice[worldlevel] then
			s_sysMail(userid,"<p><n>恭喜您,角色等级已达到当前封印的上限，\"</n><n color='GXColorGreen'>人生转轮</n><n>\"功能特为您开放，前往地宫型副本中转站，寻找</n><goto mapid='159' id='235' flagpoint='1' /><n>转动自己的命运之轮吧！</n></p>",0,28000,10,"1-1",1)
		end
	end
	--YY先锋任务
	if level == 21 then
		AddRoleTaskOperate(userid,15240)
	end
	if level == 41 then
		AddRoleTaskOperate(userid,15242)
	end
	--神值魔值
	if level == 11 then
		s_setValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_EVIL_VALUE,9999)
	end
	if level == 31 then
		s_setValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_GOD_VALUE,9999)
	end
end

local WorldLevelOrderPresent = {
	[60]={
		{["goldticket"]=10000,["moneyticket"]=10000,["itemid"]=27108,["itemnum"]=100},
		{["goldticket"]=8000,["moneyticket"]=6000,["itemid"]=27108,["itemnum"]=70},
		{["goldticket"]=6000,["moneyticket"]=3000,["itemid"]=27108,["itemnum"]=50},
		{["goldticket"]=4000,["moneyticket"]=2000,["itemid"]=27108,["itemnum"]=30},
		{["goldticket"]=2000,["moneyticket"]=2000,["itemid"]=27108,["itemnum"]=30},
		{["goldticket"]=1000,["moneyticket"]=3000,["itemid"]=27108,["itemnum"]=30},
	},
	[70]={
		{["goldticket"]=10000,["moneyticket"]=10000,["itemid"]=27108,["itemnum"]=100},
		{["goldticket"]=8000,["moneyticket"]=6000,["itemid"]=27108,["itemnum"]=70},
		{["goldticket"]=6000,["moneyticket"]=3000,["itemid"]=27108,["itemnum"]=50},
		{["goldticket"]=4000,["moneyticket"]=2000,["itemid"]=27108,["itemnum"]=30},
		{["goldticket"]=2000,["moneyticket"]=2000,["itemid"]=27108,["itemnum"]=30},
		{["goldticket"]=1000,["moneyticket"]=3000,["itemid"]=27108,["itemnum"]=30},
	},
	[80]={
		{["goldticket"]=10000,["moneyticket"]=10000,["itemid"]=27108,["itemnum"]=100},
		{["goldticket"]=8000,["moneyticket"]=6000,["itemid"]=27108,["itemnum"]=70},
		{["goldticket"]=6000,["moneyticket"]=3000,["itemid"]=27108,["itemnum"]=50},
		{["goldticket"]=4000,["moneyticket"]=2000,["itemid"]=27108,["itemnum"]=30},
		{["goldticket"]=2000,["moneyticket"]=2000,["itemid"]=27108,["itemnum"]=30},
		{["goldticket"]=1000,["moneyticket"]=3000,["itemid"]=27108,["itemnum"]=30},
	},
}
--封印榜奖励
function OnWorldLevelOrderPresent(uid,level,order)
	local orderindex = nil
	if level == 60 or level == 70 or level == 80 then
		if order >= 1 and order <= 3 then
			orderindex = order
		elseif order >= 4 and order <= 10 then
			orderindex = 4
		elseif order >= 11 and order <= 20 then
			orderindex = 5
		elseif order >= 21 and order <= 30 then
			orderindex = 6
		end
	end

	s_worldEvent("<p><q buttonid=6005 ownerid=" .. uid .. ">" .. s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_NAME) .. "</q><n color=GXColorBlueSky>参加万人冲级赛,进入封印榜第" .. order .. "名，获得大量奖励</n><book bookid='70633' text='【详】'/></p>")
	if orderindex ~= nil then
		s_addMoney(uid,MoneyType_GoldTicket,WorldLevelOrderPresent[level][orderindex].goldticket,"万人冲级赛奖励")
		s_addMoney(uid,MoneyType_MoneyTicket,WorldLevelOrderPresent[level][orderindex].moneyticket,"万人冲级赛奖励")
		s_sysMail(uid,"<p><q buttonid=6005 ownerid=" .. uid .. ">" .. s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_NAME) .. "</q><n color=GXColorBlueSky>进入封印榜第" .. order .. "名，获得大量奖励!（绑银和赠点奖励直接发放至包裹）",0,WorldLevelOrderPresent[level][orderindex].itemid,WorldLevelOrderPresent[level][orderindex].itemnum,"1-1")

	end
end
