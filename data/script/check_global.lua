function c_showbar() end ----c_showbar,"进度条");
function c_endpitch() end ----c_endpitch,"结束摆摊");
function c_checkGuard() end ----c_checkGuard,"检查是否可以押镖");
function c_beginGuard() end ----c_beginGuard,"开始运標");
function c_finishGuard() end ----c_finishGuard,"结束镖车");
function c_changeGuardTargetNpc() end ----c_changeGuardTargetNpc,"修改镖车的任务目标NPCID");
function c_killGuard() end ----c_killGuard,"杀死镖车");
function c_getGuardID() end ----c_getGuardID,"获得当前镖车ID");
function c_setGuardValue() end ----c_setGuardValue,"设置镖车变量");
function c_canIntoCopy() end ----c_canIntoCopy,"检查是否可以进入副本");
function c_sysStock() end --c_sysStock, "股票");
function c_gmCmd() end --c_gmCmd, "GM指令");
function c_openCopyRoom() end --c_openCopyRoom, "打开副本报名房间");
function c_refreshHeroScore() end ----c_refreshHeroScore, "刷新王者试炼积分");
function c_taskHelpDo() end ----c_taskHelpDo,"任务帮助显示");
function c_requestTeacher() end ----c_requestTeacher,"找个辅导员");
function c_OpenDialog() end ----c_OpenDialog,"打开一个窗口");
function c_EventDialog() end ----c_EventDialog,"处罚一个事件窗口");
function c_taskHelpGoTo() end ----c_taskHelpGoTo,"任务帮助跳转");
function c_taskHelpCommit() end ----c_taskHelpCommit,"任务帮助完成");
function c_finishDeputeTask() end ----c_finishDeputeTask,"委托任务完成");
function c_npcInfo() end ----c_npcInfo,"npc喊话");
function c_seekHelp() end --c_seekHelp, "寻求同类帮助");
function c_getEnemyEntry() end ----c_getEnemyEntry,"敌人列表");
function c_getEnemy() end ----c_getEnemy,"获得敌人");
function c_setEnemy() end ----c_setEnemy,"设置敌人");
function c_setEnemyEnmity() end ----c_setEnemyEnmity,"设置NPC仇恨");
function c_killnpc() end ----c_killnpc,"直接杀死NPC");
function c_clearNpc() end ----c_clearNpc,"清除NPC");
function c_summon() end ----c_summon,"通用召唤npc");
function c_sysSummon() end ----c_sysSummon,"系统召唤指定NPC");
function c_checkNearNpc() end ----c_checkNearNpc,"检查是否在某个npc附近");
function c_summonArmyEquip() end ----c_summonArmyEquip,"召唤团魔甲");
function c_addDriver() end --c_addDriver, "团魔甲添加驾驶人员");
function c_getNpcBase() end ----c_getNpcBase,"获得NPC表数据");
function c_refreshNpc() end ----c_refreshNpc,"刷新NPC数据");
function c_getNpcByBaseID() end ----c_getNpcByBaseID,"通过BASEID找NPC");
function c_setNpcDeadEvent() end ----c_setNpcDeadEvent,"设置NPC死亡掉落脚本");
function c_getDemonType() end ----c_getDemonType,"获得奇异兽类型");
function c_registerNpcTimeSkill() end ----c_registerNpcTimeSkill,"注册NPC时间触发技能");
function c_registerNpcHpSkill() end ----c_registerNpcHpSkill,"注册NPC血量触发技能");
function c_recycleArmyEquip() end ----c_recycleArmyEquip,"回收团战团魔甲");
function c_refreshAdditionData() end ----c_refreshAdditionData,"刷新NPC属性");
function c_setAskForHelp() end ----c_setAskForHelp,"设置NPC救援");
function c_addStoreItem() end ----c_addStoreItem,"增加商店道具");
function c_kickAnybody() end ----c_kickAnybody,"随机将非驾驶T下魔甲");
function c_isNpcDead() end ----c_isNpcDead,"判断NPC是否死亡");
function c_setHorseCarHome() end ----c_setHorseCarHome,"设置马车路径");
function c_airshipAddMember() end ----c_airshipAddMember,"飞艇添加乘员");
function c_doCaptainCommand() end ----c_doCaptainCommand,"执行船长指令");
function c_setAirshipState() end ----c_setAirshipState,"设置飞艇状态");
function c_setCopyAirship() end ----c_setCopyAirship,"设置飞艇副本飞艇npc");
function c_airshipAllLeave() end ----c_airshipAllLeave,"副本飞艇碰到陷阱或使用物品增加buff");
function c_airshipUserLeave() end ----c_airshipUserLeave,"副本飞艇移除成员");
function c_getAirshipOpTimes() end ----c_getAirshipOpTimes,"获得飞艇成员成功操作次数");
function c_setNpcDir() end ----c_setNpcDir,"设置NPC朝向");
function c_setMagmaID() end ----c_setMagmaID,"设置岩浆ID");
function c_setNpcReliveTime() end ----c_setNpcReliveTime,"设置NPC重生时间");
function c_setState() end ----c_setState,"设置场景物件状态");
function c_addState() end ----c_addState,"增加场景物件状态");
function c_subState() end ----c_subState,"减少场景物件状态");
function c_checkState() end ----c_checkState,"检查场景物件状态");
function c_aiSetCurrentState() end ----c_aiSetCurrentState,"设置NPCAI");
function c_leaveScene() end ----c_leaveScene,"NPC离开场景");
function c_notifyCorpsSkill() end ----c_notifyCorpsSkill,"通知团技能属性");
function c_errorm() end ----c_errorm,"脚本日志输出并且MONITOR监控");
function c_debug() end ----c_debug,"脚本日志输出");
function c_debugUser() end ----c_debugUser,"角色脚本日志输出");
function c_openUrl() end ----c_openUrl,"打开页面");
function c_dofile() end ----c_dofile,"加载脚本文件");
function c_getFileNames() end ----c_getFileNames,"获得某个目录所有文件名");
function c_getRootDir() end ----c_getRootDir,"获得系统的根目录");
function c_walkThroughPath() end ----c_walkThroughPath,"目录文件");
function c_changeName() end ----c_changeName,"修改角色名");
function c_addESportPoint() end ----c_addESportPoint,"增加电竞积分");
function c_topupZFBCard() end ----c_topupZFBCard,"请求ZFB现金充值");
function c_requestZFBAccount() end ----c_requestZFBAccount,"请求ZFB账号");
function c_changeSex() end ----c_changeSex,"变性");
function c_setMessage() end ----c_setMessage,"发送客户端脚本");
function c_getCurrentZoneID() end ----c_getCurrentZoneID,"得到区ID");
function c_getOldZoneID() end ----c_getOldZoneID,"得到玩家的老区ID");
function c_getBigMiddleZoneID() end ----c_getBigMiddleZoneID,"得到区ID");
function c_messageBox() end ----c_messageBox,"客户端窗口提示");
function c_messageBoxToZoneUser() end ----c_messageBoxToZoneUser,"全区客户端窗口提示");
function c_callFuncToZoneUser() end ----c_callFuncToZoneUser,"全区客户端窗口提示");
function c_incVarOldZoneUser() end ----c_incVarOldZoneUser,"添加老区玩家变量");
function c_subVarOldZoneUser() end ----c_subVarOldZoneUser,"减少老区玩家变量");
function c_setVarOldZoneUser() end ----c_setVarOldZoneUser,"设置老区玩家变量");
function c_sysInfo() end ----c_sysInfo,"客户端个人系统提示");
function c_sysInfoToZoneUser() end ----c_sysInfoToZoneUser,"全区客户端个人系统提示");
function c_sysRightWorld() end ----c_sysRightWorld,"右边说明");
function c_sysRight() end ----c_sysRight,"右边提示");
function c_sysRightBook() end ----c_sysRightBook,"右边说明");
function c_sysRightNewFunction() end ----c_sysRightNewFunction,"右边未使用功能");
function c_sysRightRemoveNewFunction() end ----c_sysRightRemoveNewFunction,"去除右边未使用功能");
function c_sysRightServerHotKey() end ----c_sysRightServerHotKey,"右边未使用功能");
function c_sysRightRemoveServerHotKey() end ----c_sysRightRemoveServerHotKey,"去除右边未使用功能");
function c_copyInfo() end ----c_copyInfo,"副本内系统提示");
function c_teamInfo() end ----c_teamInfo,"组队系统提示");
function c_mapInfo() end ----c_mapInfo,"客户端全地图系统提示");
function c_countryInfo() end ----c_countryInfo,"客户端全国系统提示");
function c_countryMessageBox() end ----c_countryMessageBox,"客户端全国系统提示");
function c_worldInfo() end ----c_worldInfo,"客户端全国系统提示");
function c_zoneInfo() end ----c_zoneInfo,"客户端全区");
function c_gardDead() end ----c_gardDead,"杀镖车公告");
function c_speakerInfo() end ----c_speakerInfo,"麦克风喊话");
function c_worldEvent() end ----c_worldEvent,"世界聊天公告");
function c_sysNews() end ----c_sysNews,"增加社会关系新闻");
function c_getNineEntry() end ----c_getNineEntry,"获得九屏物件类型");
function c_getTeamEntry() end ----c_getTeamEntry,"获得组队物件");
function c_getTeamSize() end ----c_getTeamSize,"获得队伍数量");
function c_getCorpsEntry() end ----c_getCorpsEntry,"获得所有团成员");
function c_getArmyEntry() end ----c_getArmyEntry,"获得军成员");
function c_getCountryEntry() end ----c_getCountryEntry,"获得当前场景国家成员");
function c_getCompanionEntry() end ----c_getCompanionEntry,"获得当前场景战友");
function c_getCopyEntry() end ----c_getCopyEntry,"获得副本内成员");
function c_getEquipEntry() end ----c_getEquipEntry,"获得团魔甲中的成员");
function c_getCurTime() end ----c_getCurTime,"获得当前系统时间");
function c_getCountryList() end ----c_getCountryList,"获得国家列表id");
function c_getCountryName() end ----c_getCountryName,"获得国家名字");
function c_getCountryFunUserByCid() end ----c_getCountryFunUserByCid,"通过国家id获得对应职务id");
function c_getCountryFunUser() end --c_getCountryFunUser, "获得国家职务对应玩家ID");
function c_getCountryFunSupport() end ----c_getCountryFunSupport,"获得国家官员支持度");
function c_setCountryFunction() end ----c_setCountryFunction,"设置国家职务");
function c_getCountryState() end ----c_getCountryState,"获得国家状态");
function c_getReliveZone() end ----c_getReliveZone,"获得指定地图复活区域ID");
function c_getPresent() end ----c_getPresent,"领取所有补偿");
function c_getOldPlayerPresent() end ----c_getOldPlayerPresent,"领取老人进新区奖励");
function c_getShutDownPresent() end ----c_getShutDownPresent,"领取紧急维护补偿");
function c_getSceneVar() end --c_getSceneVar, "得到场景变量");
function c_setSceneVar() end --c_setSceneVar, "设置场景变量");
function c_intoCopy() end --c_intoCopy, "进入指定副本");
function c_intoCopyCustomSingle() end --c_intoCopyCustomSingle, "进入指定自定义个人副本");
function c_clearCopy() end --c_clearCopy, "清空副本玩家");
function c_setCopyLifeTime() end --c_setCopyLifeTime, "设置副本的最大生存期");
function c_sendCopyVar() end --c_sendCopyVar, "发送副本全局数据");
function c_sendCopyList() end --c_sendCopyList, "发送副本榜单");
function c_createQueueOneGroup() end --c_createQueueOneGroup, "创建一个副本的排队系统");
function c_copyRequestPlayer() end --c_copyRequestPlayer, "副本申请补全玩家");
function c_userAddQueue() end --c_userAddQueue, "玩家申请副本排队");
function c_teamAddQueue() end --c_teamAddQueue, "队伍申请副本排队");
function c_userRemoveQueue() end --c_userRemoveQueue, "玩家申请副本排队");
function c_sendCopyInfo() end --c_sendCopyInfo, "发送副本信息");
function c_sendCopyZoneOne() end --c_sendCopyZoneOne, "发送副本区域一的信息");
function c_sendCopyZoneTwo() end --c_sendCopyZoneTwo, "发送副本区域二的信息");
function c_sendCopyZoneThree() end --c_sendCopyZoneThree, "发送副本区域三的信息");
function c_sendCopyTime() end --c_sendCopyTime, "发送副本剩余时间");
function c_addCopyTimer() end --c_addCopyTimer, "增加副本定时器");
function c_playClientLua() end --c_playClientLua, "播放客户端脚本");
function c_newFunctionOpen() end --c_newFunctionOpen, "调用客户端新功能开启");
function c_openGuide() end --c_openGuide, "播放客户端Guide脚本");
function c_sendGuardCopyScore() end ----c_sendGuardCopyScore, "发送守卫副本积分");
function c_getSceneID() end --c_getSceneID, "获得副本场景ID");
function c_getWorldLevel() end --c_getWorldLevel, "获得世界封印等级");
function c_getWorldLevelLastTime() end --c_getWorldLevelLastTime, "获得上次开封印时间");
function c_hasWorldUserLevel() end --c_hasWorldUserLevel, "获得世界封印等级");
function c_getMaxUserLevel() end --c_getMaxUserLevel, "获得本服玩家最大等级");
function c_getUserIDByName() end ----c_getUserIDByName , "通过玩家名字获得id");
function c_sendToSession() end --c_sendToSession, "脚本到Session的请求");
function c_getRunningState() end ----c_getRunningState,"获得比赛当前状态");
function c_joinRunning() end ----c_joinRunning,"报名长跑比赛");
function c_checkStartRunning() end ----c_checkStartRunning,"检查是否可以开始比赛");
function c_startRunning() end ----c_startRunning,"个人开始比赛");
function c_addRunningItem() end ----c_addRunningItem,"添加一个比赛道具");
function c_removeRunningItem() end ----c_removeRunningItem,"删除一个比赛道具");
function c_getRunningItem() end ----c_getRunningItem,"获得比赛道具");
function c_getRunningPartner() end ----c_getRunningPartner,"获得比赛伙伴");
function c_getGoldPrice() end ----c_getGoldPrice,"获得股票价格");
function c_sysMail() end --c_sysMail, "系统邮件");
function c_gmCommand() end --c_gmCommand, "GM指令");
function c_isCountryInServer() end ----c_isCountryInServer,"是否国家在当前场景服务器");
function c_getMapName() end ----c_getMapName,"获取地图名称");
function c_nineInfo() end ----c_nineInfo,"九屏消息");
function c_getMedal() end ----c_getMedal,"获取国家勋章");
function c_addHoliday() end ----c_addHoliday,"添加一个节日");
function c_fallInLove() end ----c_fallInLove,"坠入爱河");
function c_breakOutLove() end ----c_breakOutLove,"分手快乐");
function c_checkLoverIsFriend() end ----c_checkLoverIsFriend,"是否好友");
function c_checkMarryDegree() end ----c_checkMarryDegree,"检查结婚好友度");
function c_marryMe() end ----c_marryMe,"结婚");
function c_divorce() end ----c_divorce,"离婚");
function c_setCountryFunByType() end ----c_setCountryFunByType,"根据类型设置官职");
function c_getWorldPercent() end ----c_getWorldPercent,"获取当前封印进度");
function c_setCountryWarVal() end ----c_setCountryWarVal,"设置国战数据");
function c_levelup() end ----c_levelup,"玩家升级");
function c_closeloveinterface() end ----c_closeloveinterface,"关闭情缘任务界面");
function c_sendshamepoint() end --c_sendshamepoint, "发送个人羞辱值");
function c_getMiddleRefreshBoss() end --c_getMiddleRefreshBoss, "获取即将刷新的中立boss");
function c_clearMiddleBoss() end --c_clearMiddleBoss, "清除上一个小时的boss信息");
function c_setMiddleBossThisID() end --c_setMiddleBossThisID, "设置已刷新的中立bossNCPID");
function c_setNextMiddleBossList() end --c_setNextMiddleBossList, "设置下个小时要刷新的boss");
function c_sendSceneTeamInfo() end --c_sendSceneTeamInfo, "发送场景队伍信息给玩家");
function c_getSimulationInfo() end --c_getSimulationInfo, "获取模拟战数据");
function c_finishSimulation() end --c_finishSimulation, "模拟战结束处理");
function c_worldWarDeclarate() end ----c_worldWarDeclarate,"帝都战宣战");
function c_sendDiduCopyInfo() end ----c_sendDiduCopyInfo,"帝都战猛将坛");
function c_asciiToUtf8() end ----c_asciiToUtf8,"编码转换GBK to UTF-8");
function c_utf8ToAscii() end ----c_utf8ToAscii,"编码转换UTF-8 to GBK");
function c_getSomeTime() end ----c_getSomeTime,"测试时间转换");
function c_closeRobinInterface() end ----c_closeRobinInterface,"关闭金库奇袭罗宾界面");
function c_openSoldierDiary() end ----c_openSoldierDiary,"打开老兵日记界面");
function c_changeZoneBigMiddle() end --c_changeZoneBigMiddle, "跨区到大中立区");
function c_changeZoneGoHome() end --c_changeZoneGoHome, "返回老家");
function c_openVigorPointAwardItem() end --c_openVigorPointAwardItem, "打开魔龙紫焰盒");
function c_finishTaskOldZone() end ----c_finishTaskOldZone,"完成老区任务");
function c_sendChangeCountryWar() end ----c_sendChangeCountryWar,"跨区助战请求");
function c_getCSRunningState() end ----c_getCSRunningState,"获得比赛当前状态");
function c_joinCSRunning() end ----c_joinCSRunning,"报名长跑比赛");
function c_checkStartCSRunning() end ----c_checkStartCSRunning,"检查是否可以开始比赛");
function c_startCSRunning() end ----c_startCSRunning,"个人开始比赛");
function c_addCSRunningItem() end ----c_addCSRunningItem,"添加一个比赛道具");
function c_removeCSRunningItem() end ----c_removeCSRunningItem,"删除一个比赛道具");
function c_getCSRunningItem() end ----c_getCSRunningItem,"获得比赛道具");
function c_getCSRunningPartner() end ----c_getCSRunningPartner,"获得比赛伙伴");
function c_registratFightTeam() end ----c_registratFightTeam,"战队报名3v3无双擂台战");
function c_refreshChatFlag() end ----c_refreshChatFlag,"刷新玩家聊天频道图片");
function c_getCountrySize() end ----c_getCountrySize,"获取国家数量");
function c_getLastAttackUser() end ----c_getLastAttackUser,"获取NPC归属权");
function c_isUserInQueue() end --c_isUserInQueue, "玩家是否在排队状态中");
function c_getCountryByScene() end ----c_getCountryByScene,"根据场景获取所在国家");
function c_isInZoneByPos() end ----c_isInZoneByPos,"根据坐标判断是否在区域内");
function c_setCountryPostCarVal() end ----c_setCountryPostCarVal,"设置国家镖车事件");
function c_postCarEndEvent() end ----c_postCarEndEvent,"国家水晶押运兽结束事件");
function c_getEntryBySpecial() end ----c_getEntryBySpecial,"获得特殊范围内物件");
function c_setup() end ----c_setup,"立即刷新属性");
function c_relive() end ----c_relive,"复活");
function c_gomap() end --c_gomap, "跳地图");
function c_moveto() end --c_moveto, "走路去目的地");
function c_goto() end ----c_goto,"本地图跳转");
function c_move() end ----c_move,"NPC移动");
function c_checkPK() end ----c_checkPK,"按照PK模式检查PK");
function c_setMurder() end ----c_setMurder,"被人杀死记录");
function c_select() end ----c_select,"强制选中某物件");
function c_getselect() end ----c_getselect,"获得选中某物件");
function c_attack() end ----c_attack,"显示攻击特效");
function c_MagicAttack() end ----c_MagicAttack,"显示攻击特效");
function c_attackaim() end ----c_attackaim,"攻击目标");
function c_getvalue() end ----c_getvalue,"获得基本属性");
function c_setvalue() end ----c_setvalue,"设置基本属性");
function c_addvalue() end ----c_addvalue,"增加基本属性");
function c_subvalue() end ----c_subvalue,"减少基本属性");
function c_checkstate() end ----c_checkstate,"检查物件状态");
function c_refreshExp() end ----c_refreshExp,"刷新经验");
function c_deductExp() end ----c_deductExp,"扣除经验");
function c_setcold() end ----c_setcold,"设置技能冷却");
function c_getcold() end ----c_getcold,"获得技能冷却");
function c_addskill() end ----c_addskill,"无条件添加技能");
function c_studyskill() end ----c_studyskill,"学习技能");
function c_removeskill() end ----c_removeskill,"删除技能");
function c_forgetskill() end ----c_forgetskill,"遗忘所有战斗技能");
function c_getskilllevel() end ----c_getskilllevel,"获得技能等级");
function c_clearpoint() end ----c_clearpoint,"清洗属性点");
function c_addActivePoint() end ----c_addActivePoint,"增加活跃点数");
function c_addVigorPoint() end ----c_addVigorPoint,"增加活力点数");
function c_getVigorPoint() end ----c_getVigorPoint,"获取活力点数");
function c_getTrafficType() end ----c_getTrafficType,"获得交通类型");
function c_setTrafficType() end ----c_setTrafficType,"设置交通类型");
function c_resetTrafficType() end ----c_resetTrafficType,"清除交通类型");
function c_deductBloodExp() end ----c_deductBloodExp,"扣除血脉经验");
function c_addbuff() end ----c_addbuff,"增加一个buff");
function c_addeffect() end ----c_addeffect,"增加一个effect");
function c_clearbuff() end ----c_clearbuff,"按类型清除buff");
function c_removebuff() end ----c_removebuff,"移除一个buff");
function c_getbufflevel() end ----c_getbufflevel,"获得一个buff等级");
function c_getbuffnum() end ----c_getbuffnum,"获得buff叠加数量");
function c_getbufftime() end ----c_getbufftime,"获得buff剩余时间");
function c_getbuffvalue() end ----c_getbuffvalue,"获得buff附加属性值");
function c_updateBuffTime() end ----c_updateBuffTime,"设置buff时间");
function c_updateBuffValue() end ----c_updateBuffValue,"设置buff属性");
function c_getbuff() end ----c_getbuff,"得到buff");
function c_openLotteryHistory() end ----c_openLotteryHistory,"充值反馈礼包");
function c_sendQianDaoState() end ----c_sendQianDaoState,"发送签到状态");
function c_sendBaoXiangPresent() end ----c_sendBaoXiangPresent,"发送宝箱数据");
function c_openGoldReturn() end ----c_openGoldReturn,"充值反馈礼包");
function c_openGoldChild() end ----c_openGoldChild,"我的理财");
function c_addSevenDay() end ----c_addSevenDay,"完成七天奖励");
function c_addpuke() end ----c_addpuke,"添加一张扑克牌");
function c_getWeapon() end ----c_getWeapon,"获得当前武器");
function c_showAddHp() end ----c_showAddHp,"显示回血特效");
function c_showSubSp() end ----c_showSubSp,"显示耗蓝特效");
function c_getFunction() end --c_getFunction, "获得不同社会关系中的职务");
function c_getFunctionNameByType() end ----c_getFunctionNameByType,"通过官职类型获取官职名称");
function c_checkRight() end --c_checkRight, "检测是否有某种权限");
function c_getTeamLeader() end ----c_getTeamLeader, "获得队长id");
function c_getTeamID() end ----c_getTeamID, "获得队伍id");
function c_setTaskPackCallback() end ----c_setTaskPackCallback,"设置任务包裹回调函数");
function c_addGroup() end ----c_addGroup,"设置阵营");
function c_removeGroup() end ----c_removeGroup,"删除阵营");
function c_getSelect() end --c_getSelect, "获得选中");
function c_registerMsgBox() end ----c_registerMsgBox,"注册一个消息框回调");
function c_registerGomapMsgBox() end ----c_registerGomapMsgBox,"注册一个国家跳转消息框");
function c_registerInputBox() end ----c_registerInputBox,"注册一个输入框回调");
function c_registerBookBox() end ----c_registerBookBox,"注册一个读书回调");
function c_queryGold() end ----c_queryGold,"金子查询");
function c_getMyPay() end ----c_getMyPay,"领取工资");
function c_levelupMiliRank() end ----c_levelupMiliRank,"升级军衔");
function c_firstevent() end ----c_firstevent,"通知客户端第一次事件");
function c_setOperate() end ----c_setOperate,"设置当前操作");
function c_checkZoneType() end ----c_checkZoneType,"检查区域类型");
function c_removeCompanion() end ----c_removeCompanion,"删除战友");
function c_getCompanionLevel() end ----c_getCompanionLevel,"获得战友的好友度等级");
function c_checkCompanion() end ----c_checkCompanion,"检查是否有战友");
function c_inviteToMe() end ----c_inviteToMe,"邀请别人到自己身边");
function c_addTitle() end ----c_addTitle,"添加称号");
function c_guesscard() end ----c_guesscard,"猜牌");
function c_freshcolor() end ----c_freshcolor,"摇颜色");
function c_checkCatchDemon() end ----c_checkCatchDemon,"检查是否可以驯化奇异兽");
function c_openNewStore() end ----c_openNewStore,"打开新商店");
function c_addLuckyCard() end ----c_addLuckyCard,"增加一个幸运卡片");
function c_sendFreshPresent() end ----c_sendFreshPresent,"发送新手礼物列表");
function c_sendCardChooseToUser() end ----c_sendCardChooseToUser,"发送队伍翻牌选择给玩家");
function c_getFriendNum() end ----c_getFriendNum,"获得好友数量");
function c_fishUpStick() end ----c_fishUpStick,"钓鱼收杆");
function c_sfxMagicPlay() end ----c_sfxMagicPlay,"特效播放");
function c_smile() end ----c_smile,"播放笑脸表情");
function c_sacrificeAction() end ----c_sacrificeAction,"祭奠女神动作");
function c_sendGoodNess() end ----c_sendGoodNess,"玩家善恶值变化");
function c_setViplevel() end ----c_setViplevel,"设置玩家VIP等级");
function c_getPkMode() end ----c_getPkMode,"获取玩家PK模式");
function c_getEscort() end ----c_getEscort,"获取玩家是否投保");
function c_clearEscort() end ----c_clearEscort,"清除玩家投保信息");
function c_setskilllevel() end ----c_setskilllevel,"设置技能等级");
function c_registerRelationMsgBox() end ----c_registerRelationMsgBox,"关系注册消息框");
function c_setSelfHide() end ----c_setSelfHide,"设置自身隐身状态");
function c_clearSkillCold() end --c_clearSkillCold, "清除角色技能冷却时间");
function c_useSkill() end --c_useSkill, "使用技能");
function c_isTitle() end ----c_isTitle,"判断是否有此称号");
function c_isDead() end ----c_isDead,"判断角色是否死亡");
function c_sendLevelupReward() end ----c_sendLevelupReward,"发送是否显示王者金库");
function c_sendRemindLevelupReward() end ----c_sendRemindLevelupReward,"是否提示有王者金库奖励");
function c_insertLevelupRewardUID() end ----c_insertLevelupRewardUID,"更新王者金库玩家UID数据");
function c_getNotTiredTime() end ----c_getNotTiredTime,"获取非疲劳时间");
function c_addTiredTime() end ----c_addTiredTime,"增加疲劳时间");
function c_addWeekGoldBox() end ----c_addWeekGoldBox,"增加每周金砖数");
function c_sendLifeSkillInfo() end ----c_sendLifeSkillInfo,"发送生活技能信息");
function c_continueZoneCountryWar() end ----c_continueZoneCountryWar,"继续跨区参战");
function c_sendNineDayReward() end ----c_sendNineDayReward,"发送是否显示9天夺宝右侧按钮");
function c_sendRefreshNineDayState() end ----c_sendRefreshNineDayState,"刷新9天夺宝界面");
function c_leaveFightTeam() end ----c_leaveFightTeam,"离开战队");
function c_getFightTeamID() end ----c_getFightTeamID,"获取战队信息");
function c_setupCharState() end ----c_setupCharState,"设置角色属性刷新值");
function c_reduceRuneDur() end ----c_reduceRuneDur,"减少技能符文耐久");
function c_getRuneDur() end ----c_getRuneDur,"获取技能符文耐久");
function c_replenishLoginAwardDialog() end ----c_replenishLoginAwardDialog,"刷新登陆签到界面");
function c_addTruingSkilled() end ----c_addTruingSkilled,"增加职业精修熟练度");
function c_doneShunNetTask() end ----c_doneShunNetTask,"完成瞬网任务");
function c_refreshBloodExp() end ----c_refreshBloodExp,"刷新血脉经验");
function c_additem() end ----c_additem,"添加道具");
function c_checkAutoLevelup() end ----c_checkAutoLevelup,"检测自动升级");
function c_getAutoPackSpace() end ----c_getAutoPackSpace,"获取包裹空格");
function c_cancelProtect() end ----c_cancelProtect,"取消新手保护");
function c_setProtect() end ----c_setProtect,"设置新手保护");
function c_openstore() end ----c_openstore,"打开保险箱");
function c_incMainPackHeight() end ----c_incMainPackHeight,"增加主包裹高度");
function c_incSmallPackNum() end ----c_incSmallPackNum,"增加小包裹激活数量");
function c_getSmallPackNum() end ----c_getSmallPackNum,"获取小包裹激活数量");
function c_incStorePackNum() end ----c_incStorePackNum,"增加仓库激活数量");
function c_addSceneItem() end ----c_addSceneItem,"场景添加道具");
function c_deleteItemByThisID() end ----c_deleteItemByThisID,"删除道具");
function c_deleteItemByBaseID() end ----c_deleteItemByBaseID,"删除道具");
function c_checkItem() end ----c_checkItem,"检查是否有某个道具");
function c_getitemvalue() end ----c_getitemvalue,"获得道具属性");
function c_setitemvalue() end ----c_setitemvalue,"设置道具属性");
function c_getSceneItemValue() end ----c_getSceneItemValue,"获得场景道具属性");
function c_setSceneItemValue() end ----c_setSceneItemValue,"设置场景道具属性");
function c_getitembasevalue() end ----c_getitembasevalue,"获得道具基本属性");
function c_getitembaseid() end ----c_getitembaseid,"获得道具baseid");
function c_sellitem() end ----c_sellitem,"卖物品");
function c_repairitem() end ----c_repairitem,"修理装备");
function c_lostitem() end ----c_lostitem,"死亡掉落");
function c_dropitem() end ----c_dropitem,"掉落包裹中物品");
function c_judgeitem() end ----c_judgeitem,"鉴定装备");
function c_getItemThisID() end ----c_getItemThisID,"根据包裹位置得到thisid");
function c_leachStarItem() end ----c_leachStarItem,"星星萃取");
function c_refreshitem() end ----c_refreshitem,"刷新道具属性给客户端");
function c_refreshsceneitem() end ----c_refreshsceneitem,"刷新场景道具属性给客户端");
function c_getpacklist() end ----c_getpacklist,"获得包裹道具列表");
function c_getpackitem() end ----c_getpackitem,"获得指定位置的道具");
function c_useitemcold() end ----c_useitemcold,"使用冷却");
function c_getItemExchangeNum() end ----c_getItemExchangeNum,"获得物品兑换数量");
function c_equipUpToNewBaseID() end ----c_equipUpToNewBaseID,"装备保留属性升级到新baseid");
function c_getmoney() end ----c_getmoney,"获得钱币大小");
function c_addmoney() end ----c_addmoney,"添加钱币");
function c_addmoneyme() end ----c_addmoneyme,"添加钱币");
function c_removemoney() end ----c_removemoney,"扣钱");
function c_dealGoldAction() end ----c_dealGoldAction,"充值");
function c_getcurdemon() end ----c_getcurdemon,"获得当前宠物id");
function c_refreshdemonexp() end ----c_refreshdemonexp,"增加宠物经验");
function c_studydemonskill() end ----c_studydemonskill,"学习宠物技能");
function c_getdemontype() end ----c_getdemontype,"获得宠物类型");
function c_restdemon() end ----c_restdemon,"使宠物休息");
function c_joindemon() end ----c_joindemon,"骑异兽合体");
function c_unjoindemon() end ----c_unjoindemon,"取消合体");
function c_usehorseitem() end ----c_usehorseitem,"使用马匹道具");
function c_gethorseitem() end ----c_gethorseitem,"获取当前马匹id");
function c_openPalace() end ----c_openPalace,"打开九宫格");
function c_reselectPalaceItem() end ----c_reselectPalaceItem,"重新选择");
function c_openTreasure() end ----c_openTreasure,"打开宝箱");
function c_openCard() end ----c_openCard,"打开魔幻卡牌");
function c_sendNewUserCard() end ----c_sendNewUserCard,"领取激活码");
function c_noticeTreasurePos() end ----c_noticeTreasurePos,"通知客户端寻宝坐标");
function c_getHorseEquip() end ----c_getHorseEquip,"获取坐骑装备附加值");
function c_getWhiteEquipBase() end ----c_getWhiteEquipBase,"获得白色装备属性");
function c_getJudgeBase() end ----c_getJudgeBase,"获得装备鉴定表属性");
function c_copyItemData() end ----c_copyItemData,"复制道具属性到新的道具");
function c_refreshDemonScholar() end ----c_refreshDemonScholar,"增加宠物寄养时间，刷新Session");
function c_setSuperEquip() end ----c_setSuperEquip,"设置神兵魔舞属性");
function c_clearCorpLinePack() end ----c_clearCorpLinePack,"清除团列阵包裹道具");
function c_addTask() end ----c_addTask,"给玩家添加任务");
function c_delTask() end ----c_delTask,"删除任务");
function c_finishTask() end ----c_finishTask,"完成任务");
function c_addTaskVar() end ----c_addTaskVar,"添加任务变量");
function c_getTaskVar() end ----c_getTaskVar,"获得任务变量");
function c_getTaskValue() end ----c_getTaskValue,"获得任务属性");
function c_setTaskValue() end ----c_setTaskValue,"设置任务属性");
function c_refreshDayTaskNum() end ----c_refreshDayTaskNum,"刷新日常任务次数");
function c_refreshDayTaskInfo() end ----c_refreshDayTaskInfo,"刷新日常任务信息");
function c_addTaskMaterial() end ----c_addTaskMaterial,"添加任务收集材料");
function c_removeAllTaskMaterial() end ----c_removeAllTaskMaterial,"删除所有任务收集材料");
function c_refreshTaskTrace() end ----c_refreshTaskTrace,"刷新任务追踪");
function c_refreshTaskIntro() end ----c_refreshTaskIntro,"刷新任务简介");
function c_retTaskDesc() end --c_retTaskDesc, "返回任务描述");
function c_refreshCorpsActivityInfo() end ----c_refreshCorpsActivityInfo,"团活力任务刷新");
function c_refreshCountryActivityInfo() end ----c_refreshCountryActivityInfo,"国家活力任务刷新");
function c_getVar() end ----c_getVar,"获得玩家变量");
function c_setVar() end ----c_setVar,"添加玩家变量");
function c_setCallBack() end ----c_setCallBack,"设置脚本回调函数");
function c_getCallBack() end ----c_getCallBack,"获得脚本回调函数");
function c_clearCallBack() end ----c_clearCallBack,"清除脚本回调函数");
function c_isChallengeTask() end ----c_isChallengeTask,"是否是挑战任务");
function c_setRandomMessage() end ----c_setRandomMessage,"随机任务界面");
function c_getField() end ----c_getField,"得到社会关系属性");
function c_setField() end ----c_setField,"设置社会关系属性");
function c_addField() end ----c_addField,"增加社会关系属性");
function c_subField() end ----c_subField,"减少社会关系属性");
function c_checkField() end ----c_checkField,"检查社会关系属性");
function c_addEvent() end --c_addEvent, "设置活动");
function c_getEvent() end --c_getEvent, "查找活动");
function c_delEvent() end --c_delEvent, "删除活动");
function c_addEventVar() end --c_addEventVar, "设置活动变量");
function c_getEventVar() end --c_getEventVar, "得到活动变量");
function c_delEventVar() end --c_delEventVar, "删除活动变量");
function c_getCorpsId() end --c_getCorpsId, "团ID");
function c_getCorpsLeader() end --c_getCorpsLeader, "团领导ID");
function c_getCorpsField() end --c_getCorpsField, "团属性值");
function c_setCorpsField() end --c_setCorpsField, "团属性值设置");
function c_addCorpsField() end --c_addCorpsField, "加属性值");
function c_subCorpsField() end --c_subCorpsField, "减属性值");
function c_corpsPack() end --c_corpsPack, "团包裹");
function c_corpsInfo() end --c_corpsInfo, "团系统消息");
function c_listArmyEquip() end --c_listArmyEquip, "团魔甲领取");
function c_buildArmyEquip() end --c_buildArmyEquip, "打造改造团装");
function c_getArmyEquip() end --c_getArmyEquip, "领取装备");
function c_sysCallUp() end --c_sysCallUp, "成员召集");
function c_requestDonate() end --c_requestDonate, "发起捐款");
function c_allMemberTips() end --c_allMemberTips, "军团战报名提示");
function c_donateMoney() end --c_donateMoney, "捐款");
function c_checkWorker() end ----c_checkWorker,"检查并移除外勤次数");
function c_joinCorpsList() end ----c_joinCorpsList,"团列表");
function c_corpsStateCheck() end ----c_corpsStateCheck,"团状态检查");
function c_getCorpsVar() end ----c_getCorpsVar,"设置团变量");
function c_setCorpsVar() end ----c_setCorpsVar,"获得团变量");
function c_isFriendCountry() end ----c_isFriendCountry,"是否是盟国");
function c_getCountryVar() end ----c_getCountryVar,"设置国家变量");
function c_setCountryVar() end ----c_setCountryVar,"获得国家变量");
function c_quietPlayer() end ----c_quietPlayer,"禁言玩家");
function c_arrestPlayer() end ----c_arrestPlayer,"抓捕禁闭玩家");
function c_excusePlayer() end ----c_excusePlayer,"释放禁闭玩家");
function c_setTeamMask() end ----c_setTeamMask,"设置队伍全局标志");
function c_addFriendDegree() end ----c_addFriendDegree,"增加好友度");
function c_getArmyID() end --c_getArmyID, "军ID");
function c_getArmyField() end --c_getArmyField, "军属性值");
function c_setArmyField() end --c_setArmyField, "军属性值设置");
function c_addArmyField() end --c_addArmyField, "加属性值");
function c_subArmyField() end --c_subArmyField, "减属性值");
function c_getArmyVar() end ----c_getArmyVar,"设置军变量");
function c_setArmyVar() end ----c_setArmyVar,"获得军变量");
function c_armyInfo() end --c_armyInfo, "军系统消息");
function c_setPlantTips() end --c_setPlantTips, "设置植物提示");
function c_plantInfo() end --c_plantInfo, "植物通知");
function c_checkMagicMaterials() end --c_checkMagicMaterials, "检查魔甲材料");
function c_immigration() end --c_immigration, "移民");
function c_getCountryField() end ----c_getCountryField,"得到国家社会关系属性");
function c_setCountryField() end ----c_setCountryField,"设置国家社会关系属性");
function c_registCountryActivity() end ----c_registCountryActivity,"登记国家活动");
function c_getArmyOccupy() end ----c_getArmyOccupy,"获得军称号");
function c_sendBordBuff() end ----c_sendBordBuff,"发送边境战神国家buff");
function c_jailKing() end ----c_jailKing,"毁灭神迹关押国王");
function c_updateBaBieTower() end ----c_updateBaBieTower,"更新巴别塔排名");
function c_updateDemonList() end ----c_updateDemonList,"更新宠物排行榜");
function c_updateAirshipCopyList() end ----c_updateAirshipCopyList,"更新飞跃彩虹谷排名");
function c_countryAllInfo() end --c_countryAllInfo, "全区本国系统消息");
function c_teamChallengeWin() end --c_teamChallengeWin, "无双擂台赛胜利");


VALUE_OK = 1
require('tolua_global')
EnumToLua = function() return {} end
LogInfo = nil
function GetMsgID() return 1 end
function Class() return {} end
function CreateLuaProtoTable() return {} end
function CreateFullProtoTable() return {} end
function CreateProto() return {} end
function Proto() return {} end
require('lib.api')
LogInfo = 1
require('lib.globalConst')
require('table.PetLevelData')
require('table.PetDataBase')
require('table.PetGYData')
require('table.PetYHData')
require('program.common.base')
require('program.player')
require('program.handle_user_msg')
require('program.pet.pet')
require('program.pet.pet_box')












