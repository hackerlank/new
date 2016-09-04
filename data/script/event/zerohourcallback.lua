--0点清除变量集
function OnZeroHourCallBack(uid,clearday,curday)
	s_setVar(uid,1,29,0)
	s_setVar(uid,1,45,0)
	s_setVar(uid,1,89,0)
	s_setVar(uid,10008,16,0)
	s_setVar(uid,10008,34008,0)
	s_setVar(uid,102,12,0)
	s_setVar(uid,102,18,0)
	s_setVar(uid,102,19,0)
	s_setVar(uid,102,22,0)
	s_setVar(uid,116,41,0) --人生转轮次数
	s_setVar(uid,116,120,0) --人生转轮当前已经获得的故事书总数
	s_setVar(uid,1,36,0)
	s_setVar(uid,101,34,0)
	s_setVar(uid,1,48,0)
	s_setVar(uid,101,61,0) --团拓展特勤机甲目标国家ID
	s_setVar(uid,101,62,0) --团拓展特勤机甲，交付水晶可获得经验次数,每日已消耗次数
	--神恩祈福
	if s_getVar(uid,101,77) == 2 then
		for i = 77, 84 do
			s_setVar(uid,101,i,0)
		end
	end
	s_setVar(uid,101,79,0)
	s_setVar(uid,116,42,0)--回忆（达芬奇）次数
	s_setVar(uid,116,43,0)--安吉里之战（达芬奇）进入次数
	s_setVar(uid,116,44,0)--彩狐铃铛（达芬奇）次数
	s_setVar(uid,101,37,0)--功勋兑换次数
	s_setVar(uid,101,51,0)--团建设刷新次数每日清零
	s_setVar(uid,102,20,0)--冒险岛复活盾兑换次数
	s_setVar(uid,102,34,0)--冒险岛骑魂残影兑换次数
	s_addVar(uid,116,48,0)--清除每日福利宝箱领取次数
	s_setVar(uid,10001,23,0)--清除最牛指挥官奖励
	s_addVar(uid,116,49,0)--清除指挥棒每日使用次数
	s_addVar(uid,1,41,0)--清除炼金材料每日兑换次数
	s_setVar(uid,117,3,0)--清除每日奇兵交锋次数
	s_addVar(uid,102,30,0)--清除帝都召集令使用次数
	s_setVar(uid,117,4,0)--清除每日膜拜帝皇次数
	s_setVar(uid,107,5,0)--清除免费刷新次数
	s_setVar(uid,116,53,0)--清除帝都战预备战泉水交付次数
	s_setVar(uid,116,59,0)--清除人生转轮打折购买
	s_setVar(uid,116,61,0)--清除矮人的锤炼石购买次数
	s_addVar(uid,11,501,0)--典当升级宝石中
	s_addVar(uid,12,27108,0)--捡取升级宝石中
	s_addVar(uid,13,27108,0)--捡取不绑定升级宝石中
	s_addVar(uid,116,64,0)--清除每日赏金救援经验选择
	s_addVar(uid,116,65,0)--清除每日赏金救援卷轴选择
	s_addVar(uid,116,100,0)--清除玩家领取特权奖励的状态
	s_addVar(uid,116,66,0)--清除每日瑞恩日记兑换次数
	s_addVar(uid,116,67,0)--清除每日瑞恩天地宝库每人每日进入次数
	s_addVar(uid,10007,5,0)--清除每日化妆舞会次数，万圣节
	s_addVar(uid,101,49,0)--清除巴别塔每日连续挑战成功的层数
	s_setVar(uid,116,60,0)--BOSS喂养刷新次数
	s_setVar(uid,116,51,0)--圣诞神之水滴
	s_setVar(uid,101,8,0)--清除要人警护 汇报次数
	s_setVar(uid,116,73,0)--视察报告每日清除
	s_addVar(uid,116,74,0)--清除宠物玩耍每日次数
	s_setVar(uid,116,75,0)--清除今日军衔领取次数
	s_setVar(uid,1,50,0) --委托任务每日发布次数
	s_setVar(uid,116,50,0)--春节烟花每日次数
	s_setVar(uid,116,45,0)--春节堆雪人每日次数
	s_setVar(uid,10009,1,0)--春节堆雪人领取奖励
	s_setVar(uid,10009,2,0)--春节新年爆竹领取奖励
	s_setVar(uid,101,52,0)--玩家当日在飞跃彩虹谷副本中成功操作的次数
	s_setVar(uid,101,53,0)--玩家当日是否可见他国金库情报
	s_setVar(uid,101,54,0)--金库奇袭时，玩家召唤出的罗宾ID
	s_setVar(uid,101,55,0)--金库奇袭时，玩家召唤出的金库ID
	s_setVar(uid,116,80,0)--每日魔汁兑换次数
	s_setVar(uid,10013,3,0)--每日小丑翻牌次数
	s_setVar(uid,14,16,0) --今日A矿已开采数量
	s_setVar(uid,14,17,0) --今日B矿已开采数量
	s_setVar(uid,14,18,0) --今日C矿已开采数量
	s_setVar(uid,14,19,0) --今日A药已开采数量
	s_setVar(uid,14,20,0) --今日B药已开采数量
	s_setVar(uid,14,21,0) --今日C药已开采数量
	s_setVar(uid,125,8,0) --押注金额
	s_setVar(uid,125,9,0) --押注国
	s_setVar(uid,125,10,0) --押注区
	s_setVar(uid,125,11,0) --是否获得跨区国战包
	--s_setVar(uid,116,52,0)--春节烟花每次冷却
	s_setVar(uid,116,98,0) --当天在线时间累积的知名度
	s_setVar(uid,10013,6,0) --七夕礼盒每日
	s_setVar(uid,116,133,0)	--帝都押运今日参加次数
	s_setVar(uid,116,179,0) --感恩节火鸡盛宴每日清空次数
	s_setVar(uid,116,180,0) --感恩节火鸡盛宴每次冷却时间
	s_setVar(uid,116,181,0) --感恩节烧焦鸡毛兑换次数每日清空
	s_setVar(uid,116,207,0) --圣诞节活动兑换装备礼包次数每日清空
	s_setVar(uid,116,208,0) --圣诞节活动兑换斗气石礼包次数每日清空
	s_setVar(uid,116,209,0) --圣诞节活动兑换血脉升级宝次数每日清空
	s_setVar(uid,116,210,0) --圣诞节活动兑换玉髓礼盒次数每日清空
	s_setVar(uid,116,211,0) --圣诞节活动兑换炼金材料券次数每日清空
	s_setVar(uid,116,212,0) --圣诞节活动兑换上古神魂印记次数每日清空
	s_setVar(uid,116,213,0) --圣诞节活动领取圣诞老人礼盒每日清空
	s_setVar(uid,116,214,0) --圣诞节活动充值返还每日清空
	s_setVar(uid,116,215,0) --圣诞节活动前线速递变量每日清空
	s_setVar(uid,116,223,0) --春节拜年NPC变量
	s_setVar(uid,116,224,0) --春节拜年NPC变量
	s_setVar(uid,116,225,0) --春节拜年NPC变量
	s_setVar(uid,116,226,0) --春节拜年NPC变量
	s_setVar(uid,116,227,0) --春节拜年NPC变量
	s_setVar(uid,116,228,0) --春节拜年NPC变量
	s_setVar(uid,116,404,0) --劳动节100级以上变量
	s_setVar(uid,116,431,0) --暑期活动拉镖给种子变量
	s_setVar(uid,116,443,0) --领取对应等级奖励次数
	s_setVar(uid,100,57,0)	--宫殿战杀敌数
	s_setVar(uid,16,4,0)	--国家BOSS每日积分
	s_setVar(uid,16,5,0)    --中立区BOSS每日积分
	s_setVar(uid,16,6,0)    --世界BOSS每日积分
	s_setVar(uid,8,114,0)	--水晶押运兽领取复活盾时间
	s_setVar(uid,8,115,0)	--水晶押运兽每日领取复活盾次数
	s_setVar(uid,101,42,0)	--欢乐谷持续时间
	s_setVar(uid,101,33,0)	--骑魂谷持续时间
	s_setVar(uid,101,10,0)	--探险者地宫持续时间
	s_setVar(uid,1,94,0)	--活力领金币每日标记
	s_setVar(uid,1,98,0)	--每日杀人职业精修度
	s_setVar(uid,103,103,0) --前哨掌旗官当日国战积分
	s_setVar(uid,103,104,0) --天象祭坛当日国战积分
	s_setVar(uid,103,105,0) --魔神将军当日国战积分
	s_setVar(uid,103,106,0) --霸者雕像当日国战积分
	s_setVar(uid,103,107,0) --主神当日国战积分
	s_setVar(uid,114,22,0)	--救援镖车当日奖励次数清0
	s_setVar(uid,114,22,0)	--救援镖车当日奖励次数清0
	s_setVar(uid,116,451,0) --端午打折卡兑换3级合成材料
	s_setVar(uid,116,452,0) --端午打折卡兑换幸运宝石
	s_setVar(uid,116,453,0) --端午打折卡兑换升级宝石
	s_setVar(uid,116,454,0) --端午打折卡兑换血精石
	s_setVar(uid,116,455,0) --端午打折卡兑换重铸材料
	s_setVar(uid,116,456,0) --端午打折卡兑换命运骰子
	s_setVar(uid,116,457,0) --端午打折卡兑换金刚钻
	s_setVar(uid,116,459,0) --暑期活动兑换马鞭
	s_setVar(uid,116,460,0) --暑期活动兑换1级宝石盒


	--重用型
	s_setVar(uid,116,46,0)--重用变量
	s_setVar(uid,116,116,0)--鹊字每日上限清除
	s_setVar(uid,116,117,0)--桥字每日上限清除
	s_setVar(uid,116,118,0)--相字每日上限清除
	s_setVar(uid,116,119,0)--会字每日上限清除
	s_setVar(uid,116,165,0)--南瓜藏宝箱上限清零
	s_setVar(uid,116,449,0)--儿童节绑银兑换次数清零
	s_setVar(uid,16,2,0)   --签到每日清零
	--
	--团boss奖励
	local corps = s_getCorpsId(uid)
	if corps > 0 and curday-s_getCorpsVar(corps,6,4)==1 then
		local growth = s_getVar(uid,107,6)
		local num = 0
		num = BOSSchestevent(growth)
		s_addVar(uid,107,6,0)
		local baseid = s_getCorpsVar(corps,6,3)
		if num ~= 0 and baseid ~= 0 then
			s_sysMail(uid,"击败团boss奖励！",0,baseid,num,"1-1")
		end
	end
	local gold = s_getMoney(uid,MoneyType_Gold)
	if gold >= 500000 then
		s_addMoney(uid,MoneyType_GoldTicket,gold * 0.01,"金币利息")
		s_sysRight(uid, 2, "获得金币利息:".. gold * 0.01 .. "赠点")
	elseif gold >= 100000 then
		s_addMoney(uid,MoneyType_GoldTicket,gold * 0.005,"金币利息")
		s_sysRight(uid, 2, "获得金币利息:".. gold * 0.005 .. "赠点")
	elseif gold >= 1000 then
		s_addMoney(uid,MoneyType_GoldTicket,gold * 0.001,"金币利息")
		s_sysRight(uid, 2, "获得金币利息:".. gold * 0.001 .. "赠点")
	end

	--月处理
	if s_getVar(uid,16,3) ~= s_getCurTime(TIME_CURMONTHS)+1 then
		monthclear(uid)
		s_setVar(uid,16,3,s_getCurTime(TIME_CURMONTHS)+1)
	end
	if s_getVar(uid,16,7) ~= s_getCurTime(TIME_CURYWEEKS) and s_getCurTime(TIME_CURWDAYS) ~= 0 then
		weekclear(uid)
		s_setVar(uid,16,7,s_getCurTime(TIME_CURYWEEKS))
	end
end
