--武器商人
NpcMenuInfo3 = {
	talk = "",
	button = {
		{"功能测试接口(2)","OpenFunctionDialog3($1)"},
		{"测试用品(2)","NpcMenuInfo3:DealMenu($1)","NpcMenuInfo3:ShowMenu"},
		{"建军(2)","NpcMenuInfo3:DealMenu6($1)","NpcMenuInfo3:ShowMenu"},
		{"国家相关测试(2)","OpenCountryDialog3($1)"},
		{"拍卖行说明(2)","NpcMenuInfo3:DealMenu20($1)",},
		{"包裹相关测试(2)","OpenPackDialog3($1)"},
		{"测试摇颜色(2)","NpcMenuInfo3:TestFreshColor($1)"},
		{"测试新商店(2)","s_openNewStore($1,5)"},
		{"领取新手礼物(2)","OnGetFreshPresentEvent($1)"},
		{"所有主包裹装备升星(2)","NpcMenuInfo3:LevelupAllEquip($1)"},
		{"副本1001个人排队(2)","NpcMenuInfo3:UserAddQueue($1)"},
		{"副本1001队伍排队(2)","NpcMenuInfo3:TeamAddQueue($1)"},
		{"副本1001个人取消排队(2)","NpcMenuInfo3:UserRemoveQueue($1)"},
		{"本场景所有组队列表(2)","NpcMenuInfo3:SceneTeamInfo($1)"},
		{"副本1001补全(2)","NpcMenuInfo3:CopyRequestPlayer($1)"},
		{"接取幸运女神任务(2)","NpcMenuInfo3:AddLuckyGoddessTask($1)"},
		{"刷新幸运女神任务(2)","NpcMenuInfo3:RefreshLuckyGoddessTask($1)"},
	},
}

--包裹功能相关二级菜单
NpcMenuInfo3_1 = {
	talk = "",
	button = {
		{"增加小包裹(2)","s_incSmallPackNum($1)"},
		{"增加保险箱(2)","s_incStorePackNum($1)"},
	}
}

--国家相关二级菜单
NpcMenuInfo3_2 = {
	talk = "",
	button = {
		{"任命-元帅(2)","NpcMenuInfo3:DealMenu7($1)","NpcMenuInfo3:ShowMenu"},
		{"罢免-元帅(2)","NpcMenuInfo3:DealMenu8($1)","NpcMenuInfo3:ShowMenu"},
		{"任命-内务大臣(2)","NpcMenuInfo3:DealMenu9($1)","NpcMenuInfo3:ShowMenu"},
		{"罢免-内务大臣(2)","NpcMenuInfo3:DealMenu10($1)","NpcMenuInfo3:ShowMenu"},
		{"任命-财务大臣(2)","NpcMenuInfo3:DealMenu11($1)","NpcMenuInfo3:ShowMenu"},
		{"罢免-财务大臣(2)","NpcMenuInfo3:DealMenu12($1)","NpcMenuInfo3:ShowMenu"},
		{"任命-军务大臣(2)","NpcMenuInfo3:DealMenu13($1)","NpcMenuInfo3:ShowMenu"},
		{"罢免-军务大臣(2)","NpcMenuInfo3:DealMenu14($1)","NpcMenuInfo3:ShowMenu"},
		{"结盟-解盟(2)","NpcMenuInfo3:DealMenu15($1)","NpcMenuInfo3:ShowMenu"},
		{"国家改名(2)","NpcMenuInfo3:DealMenu16($1)","NpcMenuInfo3:ShowMenu"},
		{"国家召集(2)","NpcMenuInfo3:DealMenu17($1)"},
		{"国家捐款(2)","NpcMenuInfo3:DealMenu18($1)","NpcMenuInfo3:ShowMenu"},
	}
}

--功能测试相关二级菜单
NpcMenuInfo3_3 = {
	talk = "",
	button = {
		{"签到1小时限制开关(2)","CloseReportHour3($1)"},
		{"升级军衔(2)","s_levelupMiliRank($1)"},
		{"NPC冒泡(2)","NpcMenuInfo3:NpcTalk($1)"},
		{"发布团新闻(2)","NpcMenuInfo3:AddCorpsNews($1)"},
		{"开始猜牌(2)","GuessCard:Start($1,100)"},
	}
}

function NpcMenuInfo3:LevelupAllEquip(uid)
	local call = Call:New(uid,NpcMenuInfo3,NpcMenuInfo3.LevelupAllEquipDeal)
	local msg = [[请输入要升的星数:]]
	s_registerInputBox(uid,call,msg)
end

function NpcMenuInfo3:LevelupAllEquipDeal(uid,param,param_ext)
	local content = param_ext[1]
	local num = tonumber(content)
	if num <= 0 or num > 15 then
		s_sysInfo(uid,"星数不合法")
		return
	end
	local listitem = s_getPackList(uid,PACKAGETYPE_MAIN)
	for i = 1, table.getn(listitem) do
		item = listitem[i]
		if checkEquip(uid,item) == VALUE_OK then
			s_setItemValue(uid,item,Item_Attribute_Level,num)
			s_refreshItem(uid,item)
		end
	end
end


function NpcMenuInfo3:TestFreshColor_1(uid,param,param_ext)
	local result = param_ext[1]
	local colors = {"白色","蓝色","黄色","绿色","紫色"}
	s_sysInfo(uid,"摇颜色结果为:"..colors[result])
end

function NpcMenuInfo3:TestFreshColor(uid)
	StartFreshColor(uid,10,20,30,30,NpcMenuInfo3,NpcMenuInfo3.TestFreshColor_1)
	s_sysInfo(uid,"开始测试摇颜色，白蓝黄绿紫概率:10,20,30,30,10。看结果请使用://test 指令")
end

tt = 1
function NpcMenuInfo3:AddCorpsNews(uid)
	local corps = s_getCorpsId(uid)
	s_sysNews(Relation_Corps,corps,"AAAAAAAAAAAAAAAAAAAA"..tt)
	tt = tt + 1
end

function NpcMenuInfo3:NpcTalk(uid)
	local etype,eid = s_getSelect(uid)
	if etype == SCENE_ENTRY_NPC then
		s_npcInfo(eid,"测试。。。",16)
	end
end

function NpcMenuInfo3:DealMenu(uid)
	s_openNewStore(uid,2)
end

function OpenPackDialog3(uid)
	ShowNpcMenuByTable(uid,NpcMenuInfo3_1)
end

function OpenCountryDialog3(uid)
	ShowNpcMenuByTable(uid,NpcMenuInfo3_2)
end

function OpenFunctionDialog3(uid)
	ShowNpcMenuByTable(uid,NpcMenuInfo3_3)
end

function CloseReportHour3(uid)
	if s_getVar(uid,100,22) == 0 then
		s_addVar(uid,100,22,1)
		s_sysInfo(uid,"签到1小时限制关闭",ChatPos_Sys + ChatPos_Important)
	else
		s_addVar(uid,100,22,0)
		s_sysInfo(uid,"签到1小时限制启动",ChatPos_Sys + ChatPos_Important)
	end
end

function NpcMenuInfo3:DealMenu6(uid)
	local talkDialog = 'this:ShowNpcDialog(false)'
	local caption = "请输入您想建立军的名称: (名字最长8个中文字)"
	local interfaceDialog = 'this:CreateArmy('..'"'..caption..'"'..', 16)'
	local msg = talkDialog .. interfaceDialog
	s_setMessage(uid,0,msg,0)
end

function NpcMenuInfo3:DealMenu7(uid)
	local marshal = s_getFunction(uid, Relation_Country)
	if marshal ~= FunctionType_Marshal then
		s_sysInfo(uid, "你是国王吗？")
		return
	end
	local funuser = s_getCountryFunUser(uid, FunctionType_ViceMarshal)
	if funuser == 0 then
		ShowCountryFunop(uid, 1)
		return
	end
	s_sysInfo(uid, "该职务已任命")
end

function NpcMenuInfo3:DealMenu8(uid)
	local marshal = s_getFunction(uid, Relation_Country)
	if marshal ~= FunctionType_Marshal then
		s_sysInfo(uid, "你是国王吗？")
		return
	end
	local funuser = s_getCountryFunUser(uid, FunctionType_ViceMarshal)
	if funuser == 0 then
		s_sysInfo(uid, "还没有任命该职务")
		return
	end
	ShowCountryFunop(uid, 21)
end

function NpcMenuInfo3:DealMenu9(uid)
	ShowCountryFunop(uid, 2)
end

function NpcMenuInfo3:DealMenu10(uid)
	ShowCountryFunop(uid, 22)
end

function NpcMenuInfo3:DealMenu11(uid)
	ShowCountryFunop(uid, 3)
end

function NpcMenuInfo3:DealMenu12(uid)
	ShowCountryFunop(uid, 23)
end

function NpcMenuInfo3:DealMenu13(uid)
	ShowCountryFunop(uid, 4)
end

function NpcMenuInfo3:DealMenu14(uid)
	ShowCountryFunop(uid, 24)
end

function NpcMenuInfo3:DealMenu15(uid)
	local marshal = s_getFunction(uid, Relation_Country)
	if marshal ~= FunctionType_Marshal then
		s_sysInfo(uid, "你是国王吗？")
		return
	end
	local talkDialog = 'this:ShowNpcDialog(false)'
	local interfaceDialog = 'this:ShowUnionCountryDialog(true, 1)'
	local msg = talkDialog .. interfaceDialog
	s_setMessage(uid,0,msg,0)
end

function NpcMenuInfo3:DealMenu16(uid)
	local marshal = s_getFunction(uid, Relation_Country)
	if marshal ~= FunctionType_Marshal then
		s_sysInfo(uid, "你是国王吗？")
		return
	end
	ShowCountryFunop(uid, 60)
end

function NpcMenuInfo3:DealMenu17(uid)
end

function NpcMenuInfo3:DealMenu18(uid)
	local marshal = s_getFunction(uid, Relation_Country)
	if marshal ~= FunctionType_Marshal then
		s_sysInfo(uid, "你是国王吗？")
		return
	end
	s_requestDonate(Relation_Country, 2)
end

function NpcMenuInfo3:ShowMenu()
	return VALUE_OK
end

function NpcMenuInfo3:DealMenu20(uid)
	local msg = [[body(拍卖场说明：newline()
1.	使用“拍卖行”功能需找到负责拍卖工作的“拍卖商人”newline()
2.	“拍卖商人”在“光明城”和“迷雾废墟”可以找到 newline()
blankline()
卖东西步骤：newline()
1.	在拍卖行界面选择“拍卖”newline()
2.	将需要拍卖的物品拖拽至拍卖物一栏newline()
3.	填写拍卖价格newline()
4.	进行拍卖将会先扣除出售价格5%的手续费newline()
5.	拍卖成功，则您将获得游戏币，可点击界面中“提取拍卖行里面的银币”按钮提取。newline()
6.	若流拍，您可到拍卖行界面中“我的物品”一栏中取回自己出售的物品。newline()
blankline()
买东西步骤：newline()
1.	在拍卖行界面选择“刷新浏览”进入装备查看界面newline()
2.	您可以根据系统默认的分类进行查询newline()
3.	您也可以输入需要的道具名称进行检索newline()
4.	选择需购买的物品newline()
5.	点击“购买”按钮newline()
6.	系统扣除了您的“银币”，道具直接进入您的背包newline()
blankline()
注意事项：newline()
1.	拍卖物品有时间限制，24小时内未出售道具将会不出现在检索目录中newline()
2.	购买叠加道具，只能全部购买，不能逐个购买。newline())
]]
	msg = parseToTalk(msg)
	ShowNpcMenuBottomStyle(uid,msg,"离开(3)")
end


function NpcMenuInfo3:UserAddQueue(uid)
	s_userAddQueue(uid,60,1001)
end

function NpcMenuInfo3:TeamAddQueue(uid)
	local teamid = s_getTeamID(uid)
	s_teamAddQueue(teamid,60,1001,0)
end

function NpcMenuInfo3:UserRemoveQueue(uid)
	s_userRemoveQueue(uid,60,1001)
end

function NpcMenuInfo3:SceneTeamInfo(uid)
	s_sendSceneTeamInfo(uid)
end

function NpcMenuInfo3:CopyRequestPlayer(uid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	CopySceneInfo_1001:OnCopyRequestPlayer(sid, uid)
end

function NpcMenuInfo3:AddLuckyGoddessTask(uid)
	OnLuckyGoddessTask(uid)
end

function NpcMenuInfo3:RefreshLuckyGoddessTask(uid)
	--s_zoneInfo("测试跨区代码",ChatPos_Sys + ChatPos_Honor,0)
	OnRefreshLuckyGoddessTask(uid)
end
