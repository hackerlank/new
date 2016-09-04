--/////这个文件封装程序提供的脚本接口 在脚本里禁止直接调用程序接口 只能调用这里已经封装后的函数，谢谢合作

function s_messageBox(uid,msg,buttons,data0,data1,data2)
	buttons = buttons or ""
	data0 = data0 or 0
	data1 = data1 or 0
	data2 = data2 or 0
	return c_messageBox(uid,msg.."",buttons,data0,data1,data2)
end
function s_messageBoxToZoneUser(zoneid,uid,msg,buttons,data0,data1,data2)
	buttons = buttons or ""
	data0 = data0 or 0
	data1 = data1 or 0
	data2 = data2 or 0
	return c_messageBoxToZoneUser(zoneid,uid,msg.."",buttons,data0,data1,data2)
end
function s_callFuncToZoneUser(zoneid,uid,func,data0,data1,data2)
	buttons = buttons or ""
	data0 = data0 or 0
	data1 = data1 or 0
	data2 = data2 or 0
	return c_callFuncToZoneUser(zoneid,uid,func,data0,data1,data2)
end


function s_countryMessageBox(uid,msg,buttons,data0,data1,data2)
	buttons = buttons or ""
	data0 = data0 or 0
	data1 = data1 or 0
	data2 = data2 or 0
	return c_countryMessageBox(uid,msg,buttons,data0,data1,data2)
end
function s_sysRight(uid,hotkeyid,msg,lifetime,iconid,close,tabid,tabframe)
	lifetime = lifetime or 300
	iconid = iconid or 1
	close = close or 1
	tabid = tabid or 0
	tabframe = tabframe or 0
	return c_sysRight(uid,hotkeyid,msg.."",lifetime,iconid,close,tabid,tabframe)
end
function s_sysRightWorld(hotkeyid,msg,lifetime,iconid,close,tabid,tabframe)
	lifetime = lifetime or 300
	iconid = iconid or 1
	close = close or 1
	tabid = tabid or 0
	tabframe = tabframe or 0
	return c_sysRightWorld(hotkeyid,msg.."",lifetime,iconid,close,tabid,tabframe)
end
function s_sysRightBook(uid,bookid,msg,lifetime,iconid,close)
	lifetime = lifetime or 300
	iconid = iconid or 1
	close = close or 1
	return c_sysRightBook(uid,bookid,msg.."",lifetime,iconid,close)
end
function s_sysRightNewFunction(uid,functionid,msg,lifetime,iconid,close)
	lifetime = lifetime or 300
	iconid = iconid or 1
	close = close or 1
	return c_sysRightNewFunction(uid,functionid,msg.."",lifetime,iconid,close)
end
function s_sysRightRemoveNewFunction(uid,functionid)
	return c_sysRightRemoveNewFunction(uid,functionid)
end
function s_sysRightServerHotKey(uid,serverhotkeyid,msg,lifetime,iconid,close)
	lifetime = lifetime or 300
	iconid = iconid or 1
	close = close or 1
	return c_sysRightServerHotKey(uid,serverhotkeyid,msg.."",lifetime,iconid,close)
end
function s_sysRightRemoveServerHotKey(uid,serverhotkeyid)
	return c_sysRightRemoveServerHotKey(uid,serverhotkeyid)
end
function s_sysInfo(uid,msg,info_type)
	if info_type == nil then info_type = ChatPos_Sys end
	if msg ~= nil and msg ~= "" then
		c_sysInfo(uid,tostring(msg),info_type)
	end
end

function s_sysInfoToZoneUser(zoneid,uid,msg,info_type)
	if info_type == nil then info_type = ChatPos_Sys end
	if msg ~= nil and msg ~= "" then
		c_sysInfoToZoneUser(zoneid,uid,tostring(msg),info_type)
	end
end
function s_teamInfo(uid,msg,info_type)
	if info_type == nil then info_type = ChatPos_Sys end
	if msg ~= nil and msg ~= "" then
		return c_teamInfo(uid,tostring(msg),info_type)
	end
end
function s_copyInfo(uid,msg,info_type)
	if info_type == nil then info_type = ChatPos_Sys end
	if msg ~= nil and msg ~= "" then
		return c_copyInfo(uid,tostring(msg),info_type)
	end
end
function s_mapInfo(countryid,mapid,msg,info_type)
	if info_type == nil then info_type = ChatPos_Sys end
	if msg ~= nil and msg ~= "" then
		return c_mapInfo(countryid,mapid,tostring(msg),info_type)
	end
end
function s_countryInfo(countryid,msg,info_type)
	if info_type == nil then info_type = ChatPos_Sys end
	if msg ~= nil and msg ~= "" then
		return c_countryInfo(countryid,tostring(msg),info_type)
	end
end
function s_zoneInfo(msg,info_type,zoneid)
	info_type = info_type or ChatPos_Sys
	zoneid = zoneid or 0
	if msg ~= nil and msg ~= "" then
		return c_zoneInfo(tostring(msg),info_type,zoneid)
	end
end
function s_worldInfo(msg,info_type)
	if info_type == nil then info_type = ChatPos_Sys end
	if msg ~= nil and msg ~= "" then
		return c_worldInfo(tostring(msg),info_type)
	end
end
function s_gardDead(itemid,master,murder)
	return c_gardDead(itemid,master,murder)
end
function s_worldEvent(info,...)
	return c_worldEvent(string.format(info,...))
end
function s_nineInfo(uid,msg,info_type)
	if info_type == nil then info_type = ChatPos_Sys end
	if msg ~= nil and msg ~= "" then
		return c_nineInfo(uid,tostring(msg),info_type)
	end
end
function s_speakerInfo(uid,msg)
	if msg ~= nil and msg ~= "" then
		return c_speakerInfo(uid,tostring(msg))
	end
end
function s_sysNews(rtype,rid,msg)
	if msg ~= nil and msg ~= "" then
		return c_sysNews(rtype,rid,tostring(msg))
	end
end
function s_corpsInfo(corps, msg, pos)
	if msg ~= nil and msg ~= "" then
		return c_corpsInfo(corps, tostring(msg), pos)
	end
end
function s_armyInfo(uid, msg, pos)
	if msg ~= nil and msg ~= "" then
		return c_armyInfo(uid, tostring(msg), pos)
	end
end
function s_npcInfo(npcid,msg,info_type,color)
	if info_type == nil then info_type = 0 end
	if color == nil then color = 0 end
	if msg ~= nil and msg ~= "" then
		return c_npcInfo(npcid,tostring(msg),info_type,color)
	end
end
function s_countryAllInfo(countryid,msg,pos)
	if msg ~= nil and msg ~= "" then
		return c_countryAllInfo(countryid, tostring(msg), pos)
	end
end
function s_addTask(uid,taskid,color,state,operate,log)
	local ret = c_addTask(uid,taskid,color,state,operate,log)
	if ret == VALUE_OK then
		ShowUserSfx(uid,32)
	end
	return ret
end
function s_addTaskMaterial(uid,taskid,list) --list = {{id,level,num},{},..}
	if list == nil or type(list) ~= "table" or table.getn(list) < 1 then
		return VALUE_FAIL
end
for i = 1, table.getn(list) do
	if list[i] == nil or type(list) ~= "table" or table.getn(list[i]) ~= 3 then
		s_debug(string.format("s_addTaskMaterial(%u,%u)有错误",uid,taskid))
		return VALUE_FAIL
	end
	if i < table.getn(list) then
		c_addTaskMaterial(uid,taskid,list[i][1],list[i][2],list[i][3])
	else
		c_addTaskMaterial(uid,taskid,list[i][1],list[i][2],list[i][3],1)
	end
end
return VALUE_OK
end
function s_removeAllTaskMaterial(uid,taskid)
	c_removeAllTaskMaterial(uid, taskid)
	return VALUE_OK
end
GuardTaskList = {10171, 10732,  10756,  10767,  11532,  11533,  1191,   1412,   20420,30022,30023}
function s_checkCanGuard(uid,tid)
	if tid == nil then tid = 0 end
	if GuardTaskList ~= nil then
		for i = 1, table.getn(GuardTaskList) do
			local taskid = GuardTaskList[i]
			local process = s_getTaskValue(uid,taskid,TaskValue_Process)
			if process == TaskProcess_Doing or process == TaskProcess_CanDone then
				if taskid == 20420 then
					if process == TaskProcess_CanDone then
						return VALUE_FAIL
					end
				elseif taskid ~= tid then
					local name = s_getTaskValue(uid,taskid,TaskValue_Name)
					s_sysInfo(uid,"已经有护送之类任务<"..name..">")
					return VALUE_FAIL
				end
			end
		end
	end
	return c_checkGuard(uid)
end
function s_checkZoneType(etype,eid,zonetype)
	local ret = c_checkZoneType(etype,eid,zonetype)
	if ret == nil then return VALUE_FAIL end
	return ret
end
function s_removeCompanion(etype,eid) return c_removeCompanion(etype,eid) end
function s_getCompanionLevel(etype,eid,uid)
	local level = c_getCompanionLevel(etype,eid,uid)
	if level == nil then return 0 end
	return level
end
function s_openNewStore(uid,storeid,tabid,treeid)
	s_setOperate(uid,OperateType_Store)
	return c_openNewStore(SCENE_ENTRY_PLAYER,uid,storeid,tabid,treeid)
end
function s_showbar(uid,time,callback,action,bartype,skill,breakcall)
	if breakcall == nil then breakcall = 0 end
	if skill == nil then skill = 0 end
	return c_showbar(uid,time,callback,action,bartype,skill,breakcall)
end
function s_sendFreshPresent(uid,count,time,info,moneyticket,itemnum,itemlist)
	c_sendFreshPresent(SCENE_ENTRY_PLAYER,uid,count,time,info,itemnum,0,moneyticket,unpack(itemlist))
end
function s_sendLevelupReward(uid)
	c_sendLevelupReward(uid)
end
function s_insertLevelupRewardUID(uid)
	c_insertLevelupRewardUID(uid)
end
function s_sendRemindLevelupReward(uid)
	c_sendRemindLevelupReward(uid)
end
function s_sendCardChooseToUser(uid,userid,cardid,award)
	return c_sendCardChooseToUser(SCENE_ENTRY_PLAYER,uid,userid,cardid,unpack(award))
end
function s_sendNineDayReward(uid)
	c_sendNineDayReward(uid)
end
function s_sendRefreshNineDayState(uid,showinterface)
	c_sendRefreshNineDayState(uid,showinterface)
end
function s_gomap(uid,country,map,x,y,zone,gtype)
	if country == nil or map == nil then
		s_debug("玩家%u gomap出现空值:country:%s, map:%s, x:%s, y:%s, zone:%s, gtype:%s", uid, tostring(country), tostring(map), tostring(x), tostring(y), tostring(zone), tostring(gtype))
		return
	end

	if gtype == nil then
		gtype = 10
	end
	if country == 0 then
		country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	end
	if country == 1 then
		country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	end
	return c_gomap(SCENE_ENTRY_PLAYER,uid,country,map,x,y,zone,gtype)
end
function s_moveto(uid,country,map,x,y,npcid)
	npcid = npcid or 0
	return c_moveto(SCENE_ENTRY_PLAYER,uid,country,map,x,y,npcid)
end
function s_registerInputBox(uid,call,msg,appendlist,life) --content = {InputBoxAppendList_Near,...}
	local append = 0
	if type(appendlist) == "table" and table.getn(appendlist) > 1 then
		for i = 1, table.getn(appendlist) do
			append = append + appendlist[i]
		end
	end
	if InputCalls == nil then
		InputCalls = {}
	end
	InputCalls[uid] = call
	return c_registerInputBox(uid,"",msg,append,life)
end
function s_getSceneItemValue(thisid,index)
	c_getSceneItemValue(thisid,index)
end
function s_setSceneItemValue(thisid,index,value)
	c_setSceneItemValue(thisid,index,value)
end
function s_addSceneItem(itemid,num,sceneid,posx,posy,judge,buff,ownerid,ownertype)
	buff = buff or ""
	return c_addSceneItem(itemid,num,sceneid,posx,posy,judge,buff,ownerid,ownertype)
end

function s_EventDialog(uid,hotkeyid,eventid,controlid) return c_EventDialog(uid,hotkeyid,eventid,controlid) end
function s_OpenDialog(uid,hotkeyid,tabmainid,tabid,treeid,treeleafid) return c_OpenDialog(uid,hotkeyid,tabmainid,tabid,treeid,treeleafid) end
function s_requestTeacher(uid) return c_requestTeacher(uid) end
function s_taskHelpDo(uid) return c_taskHelpDo(uid) end
function s_taskHelpGoTo(uid) return c_taskHelpGoTo(uid) end
function s_taskHelpCommit(uid) return c_taskHelpCommit(uid) end
function s_getAutoPackSpace(uid) return c_getAutoPackSpace(uid) end
function s_checkAutoLevelup(uid) return c_checkAutoLevelup(uid) end
function s_addItem(uid,itemid,drop,num,judge,buff,reason) --添加道具要求必须成功
	if drop == 1 then --直接扔到场景
		local cid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_ID)
		local x1 = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
		local y1 = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
		--直接扔场景没有绑定属主,如果需要绑定，请调用s_addSceneItem
		return s_addSceneItem(itemid,num,cid,x1,y1,judge,buff)
end
if drop == 2 then --直接发送到邮箱
	s_sysMail(uid,"系统发放",0,itemid,num,buff,judge)
	return VALUE_OK
end
if drop == 3 then --如果包裹满了就直接发邮箱
	return c_additem(uid,itemid,num,judge,buff,reason,14)
end
return c_additem(uid,itemid,num,judge,buff,reason,0)
end
function s_addEventVar(rtype,rid,eid,key,value)
	if eid == 1 then return end
	c_addEventVar(rtype,rid,eid,key,value)
end
function s_getEventVar(rtype,rid,eid,key)	return c_getEventVar(rtype,rid,eid,key) end
function s_delEventVar(rtype,rid,eid,key)
	if eid == 1 then return end
	c_delEventVar(rtype,rid,eid,key)
end
function s_deleteItemByBaseID(uid,baseid,num,reason,level)
	if level == nil then level = 0 end
	return c_deleteItemByBaseID(uid,baseid,num,reason,level)
end
function s_useItem(uid,itemid)
	local dur = s_getItemValue(uid,itemid,Item_Attribute_Dur)
	local maxd = s_getItemValue(uid,itemid,Item_Attribute_MaxDur)
	if dur == nil or dur == 0 then
		return VALUE_FAIL
	end
	dur = dur - 100
	if dur <= 0 then
		s_deleteItemByThisID(uid,itemid,1,"耐久用完")
	else
		s_setItemValue(uid,itemid,Item_Attribute_Dur,dur)
		s_refreshItem(uid,itemid)
	end
	return VALUE_OK
end
--如果装备栏某个位置装备的baseid在集合中则返回对应装备的id
function s_getPackItemIDInSet(uid,packid,posx,posy,itemidset)
	if uid == 0 or uid == nil then
		return VALUE_FAIL
	end
	if type(itemidset) ~= "table" then
		return VALUE_FAIL
	end
	local itemid = s_getItemThisID(uid,packid,posx,posy)
	if itemid == 0 then
		return VALUE_FAIL
	end
	for i = 1, table.getn(itemidset) do
		if s_getitembaseid(uid,itemid) == itemidset[i] then
			return itemid
		end
	end
	return VALUE_FAIL
end
--通过装备baseid获取装备物理(1)，魔法(2)类型
function s_getEquipType(equipbaseid)
	if equipbaseid == 0 or equipbaseid == nil then
		return VALUE_FAIL
	end
	if (math.floor(equipbaseid / 100)) % 2 == 1 then
		return 1
	else
		return 2
	end
end
--普通封装脚本-----------------------------------------------------------------------------------------------
function s_debug(fmt, ...) c_debug("脚本日志:" .. string.format(fmt, ...)) end
printf = function(...)
	LogInfo("脚本日志:", ...)
end
if LogInfo ~= nil and type(LogInfo) == 'function' then
	print = printf
end

function s_debugUser(uid,fmt, ...) c_debugUser(uid,string.format(fmt, ...)) end
function s_errorm(fmt, ...) c_errorm("脚本日志:" .. string.format(fmt, ...)) end
function s_openUrl(uid,out,fmt, ...) c_openUrl(uid,out,string.format(fmt, ...)) end
function s_getCopyEntry(sid,etype) return pack(c_getCopyEntry(sid,etype)) end
function s_topupMobileCard(uid,thisid,num,needlevel) return c_topupMobileCard(uid,thisid,num,needlevel) end
function s_topupQQCard(uid,thisid,gettype,num) return c_topupQQCard(uid,thisid,gettype,num) end
function s_addESportPoint(uid,ptype,point) return c_addESportPoint(uid,ptype,point) end
function s_topupZFBCard(uid,zfbname,gettype,num) return c_topupZFBCard(uid,zfbname,gettype,num) end
function s_requestZFBAccount(uid,thisid) return c_requestZFBAccount(uid,thisid) end
function s_topupWBCard(uid,thisid,gettype,num) return c_topupWBCard(uid,thisid,gettype,num) end
function s_weibo(uid,wtype,news,data) return c_weibo(uid,wtype,news,data) end
function s_changeZoneBigMiddle(uid,countryid,mapid,posx,posy)
	countryid = countryid or 0
	mapid = mapid or 0
	posx = posx or 0
	posy = posy or 0
	return c_changeZoneBigMiddle(uid,countryid,mapid,posx,posy)
end
function s_changeZoneGoHome(uid)
	return c_changeZoneGoHome(uid)
end
function s_requestYYTask(uid,taskid,cardid) return c_requestYYTask(uid,taskid,cardid) end
function s_finishYYTask(uid,taskid) return c_finishYYTask(uid,taskid) end
function s_changeName(uid,optype) return c_changeName(uid,optype) end
function s_changeSex(uid) return c_changeSex(uid) end
function s_setMessage(uid,step,msg,notcheck) return c_setMessage(uid,step,msg,notcheck) end
function s_getCountryList() return c_getCountryList() end
function s_isFriendCountry(cid1,cid2) return c_isFriendCountry(cid1,cid2) end
function s_getCountryName(countryid) return c_getCountryName(countryid) end
function s_getCountryFunUserByCid(countryid, fun) return c_getCountryFunUserByCid(countryid, fun) end
function s_getCountryFunUser(uid, fun) return c_getCountryFunUser(uid, fun) end
function s_getCountryFunSupport(uid,fun) return c_getCountryFunSupport(uid,fun) end
function s_setCountryFunction(uid,fun) return c_setCountryFunction(uid,fun) end
function s_getCountryState(countryid) return c_getCountryState(countryid) end
function s_getNineEntry(etype,eid,range,posx,posy)
	posx = posx or 0
	posy = posy or 0
	return pack(c_getNineEntry(etype,eid,range,posx,posy))
end
function s_getTeamEntry(etype,eid,range,getmemberinworld) return pack(c_getTeamEntry(etype,eid,range,getmemberinworld)) end	--最后的参数只在需要找本服所有队友时需要传1，其余情况不用传
function s_getTeamSize(etype,eid) return c_getTeamSize(etype,eid)	end
function s_setTeamMask(tid,flag,mask) return c_setTeamMask(tid,flag,mask) end
function s_getCorpsEntry(etype,eid,range,cid) return pack(c_getCorpsEntry(etype,eid,range,cid)) end
function s_getCountryEntry(homeland) return pack(c_getCountryEntry(homeland)) end
function s_getCompanionEntry(eid) return pack(c_getCompanionEntry(eid)) end
function s_getEquipEntry(equipid) return pack(c_getEquipEntry(equipid)) end
function s_getEnemyEntry(eid) return pack(c_getEnemyEntry(eid)) end
function s_getEnemy(eid) return c_getEnemy(eid) end
function s_setEnemy(eid,entype,enid,lock) return c_setEnemy(eid,entype,enid,lock) end
function s_setEnemyEnmity(npcid,etype,eid,value) return c_setEnemyEnmity(npcid,etype,eid,value) end
function s_getCurTime(timetype) return c_getCurTime(timetype) end
function s_getReliveZone(mapid) return c_getReliveZone(mapid) end
function s_getPresent(uid) c_getPresent(uid) end
function s_getOldPlayerPresent(uid) c_getOldPlayerPresent(uid) end
function s_getNetBarOnline(uid) c_getNetBarOnline(uid) end
function s_requestNetBarMaster(uid) c_requestNetBarMaster(uid) end
function s_getNetBarPresent(uid) c_getNetBarPresent(uid) end
function s_getShutDownPresent(uid) c_getShutDownPresent(uid) end
function s_getSceneVar(sid,key1,key2) return c_getSceneVar(sid,key1,key2) end
function s_setSceneVar(sid,key1,key2,value) return c_setSceneVar(sid,key1,key2,value) end
function s_intoCopy(uid,ctype,cvalue,cvalue1,posx,posy) return c_intoCopy(uid,ctype,cvalue,cvalue1,posx,posy) end
function s_intoCopyCustomSingle(uid,customid,mapid,posx,posy,team) return c_intoCopyCustomSingle(uid,customid,mapid,posx,posy,team) end
function s_createQueueOneGroup(countryid,copytype,customcopyid,mapid,posx,posy,copyname,maxplayernum,samecountry,sceneinterval) return c_createQueueOneGroup(countryid,copytype,customcopyid,mapid,posx,posy,copyname,maxplayernum,samecountry,sceneinterval) end
function s_copyRequestPlayer(sceneid,copytype,customcopyid,country,maxplayernum,msg,posx,posy) return c_copyRequestPlayer(sceneid,copytype,customcopyid,country,maxplayernum,msg,posx,posy) end
function s_userAddQueue(userid,copytype,customcopyid) return c_userAddQueue(userid,copytype,customcopyid) end
function s_teamAddQueue(teamid,copytype,customcopyid,alone) return c_teamAddQueue(teamid,copytype,customcopyid,alone) end
function s_userRemoveQueue(userid,copytype,customcopyid) return c_userRemoveQueue(userid,copytype,customcopyid) end
function s_clearCopy(cid) return c_clearCopy(cid) end
function s_setCopyLifeTime(cid,lifetime) return c_setCopyLifeTime(cid,lifetime) end
function s_openCopyRoom(uid,ctype) return c_openCopyRoom(uid,ctype) end
function s_refreshHeroScore(cid,teamid,score) return c_refreshHeroScore(cid,teamid,score) end
function s_sendCopyVar(ctype,sid,uid,num, vlist) c_sendCopyVar(ctype,sid,uid,num, unpack(vlist)) end
function s_sendGuardCopyScore(uid,exp,score) c_sendGuardCopyScore(uid,exp,score) end
function s_sendCopyInfo(cid,...) c_sendCopyInfo(cid,arg.n,unpack(arg)) end
function s_sendCopyZoneOne(cid,msg) c_sendCopyZoneOne(cid,msg) end
function s_sendCopyZoneTwo(cid,msg) c_sendCopyZoneTwo(cid,msg) end
function s_sendCopyZoneThree(cid,msg) c_sendCopyZoneThree(cid,msg) end
function s_sendCopyTime(cid,time) c_sendCopyTime(cid,time) end
function s_addCopyTimer(cid,timerid,how_long) c_addCopyTimer(cid,timerid,how_long) end
function s_playClientLua(uid,luaid) c_playClientLua(uid,luaid) end
function s_newFunctionOpen(uid,luaid) c_newFunctionOpen(uid,luaid) end
function s_openGuide(uid,luaid) c_openGuide(uid,luaid) end
function s_sendCopyList(ltype,sid,uid,lnum,row, vlist) c_sendCopyList(ltype,sid,uid,lnum,row, unpack(vlist)) end
function s_getSceneID(stype) return pack(c_getSceneID(stype)) end
function s_getWorldLevel() return c_getWorldLevel() end
function s_getWorldLevelLastTime() return c_getWorldLevelLastTime() end
function s_hasWorldUserLevel() return c_hasWorldUserLevel() end
function s_getMaxUserLevel() return c_getMaxUserLevel() end
function s_sendToSession(rtype, ... ) c_sendToSession(rtype,arg.n,unpack(arg)) end
function s_getGoldPrice() return c_getGoldPrice() end
function s_finishTask(uid,taskid,log) return c_finishTask(uid,taskid,log) end
function s_delTask(uid,taskid,log) return c_delTask(uid,taskid,log) end
function s_getTaskValue(uid,taskid,index) return c_getTaskValue(uid,taskid,index) end
function s_setTaskValue(uid,taskid,index,value,param) return c_setTaskValue(uid,taskid,index,value,param) end
function s_addTaskVar(uid,taskid,vid,value) return c_addTaskVar(uid,taskid,vid,value) end
function s_getTaskVar(uid,taskid,vid) return c_getTaskVar(uid,taskid,vid) end
function s_addVar(uid,vid1,vid2,value) return c_setVar(uid,vid1,vid2,value) end
function s_setVar(uid,vid1,vid2,value) return c_setVar(uid,vid1,vid2,value) end
function s_incVarOldZoneUser(uid,vid1,vid2,value) return c_incVarOldZoneUser(uid,vid1,vid2,value) end
function s_subVarOldZoneUser(uid,vid1,vid2,value) return c_subVarOldZoneUser(uid,vid1,vid2,value) end
function s_setVarOldZoneUser(uid,vid1,vid2,value) return c_setVarOldZoneUser(uid,vid1,vid2,value) end
function s_getVar(uid,vid1,vid2) return c_getVar(uid,vid1,vid2) end
function s_refreshDayTaskNum(uid,taskid,num) return c_refreshDayTaskNum(uid,taskid,num) end
function s_refreshDayTaskInfo(uid,num,vlist) return c_refreshDayTaskInfo(uid,num,unpack(vlist)) end
function s_refreshTaskTrace(uid,taskid,trace) return c_refreshTaskTrace(uid,taskid,trace) end
function s_refreshTaskIntro(uid,taskid,intro,toid) return c_refreshTaskIntro(uid,taskid,intro,toid) end
function s_isChallengeTask(taskid) return c_isChallengeTask(taskid) end
function s_retTaskDesc(uid, taskid, desc) return c_retTaskDesc(uid, taskid, desc) end
function s_setCallBack(uid,index,callback) return c_setCallBack(uid,index,callback) end
function s_getCallBack(uid,index) return c_getCallBack(uid,index) end
function s_clearCallBack(uid) return c_clearCallBack() end
function s_summonGuard(uid,guardid,taskid,target,p1,p2,nofollow,nojoin) return c_beginGuard(uid,guardid,taskid,target,p1,p2,nofollow,nojoin) end
function s_setGuardValue(etype,eid,owner,taskid,target,p1,p2) return c_setGuardValue(etype,eid,owner,taskid,target,p1,p2) end
function s_commitGuard(uid,taskid) return c_finishGuard(uid,taskid) end
function s_changeGuardTargetNpc(uid,taskid,targetnpc) return c_changeGuardTargetNpc(uid,taskid,targetnpc) end
function s_killGuard(uid) return c_killGuard(uid) end
function s_getGuardID(uid) return c_getGuardID(uid) end
function s_getMyPay(uid,paytype) return c_getMyPay(uid,paytype) end
function s_setup(etype,uid,need_bsm) return c_setup(etype,uid,need_bsm) end
function s_setupCharState(etype,eid) return c_setupCharState(etype,eid) end
function s_setMurder(etype1,eid1,etype2,eid2) return c_setMurder(etype1,eid1,etype2,eid2) end
function s_checkPK(skill,etype1,eid1,etype2,eid2) return c_checkPK(skill,etype1,eid1,etype2,eid2) end
function s_getValue(etype,uid,index) return c_getvalue(etype,uid,index) end
function s_setValue(etype,uid,index,value) return c_setvalue(etype,uid,index,value) end
function s_addValue(etype,uid,index,value) return c_addvalue(etype,uid,index,value) end
function s_subValue(etype,uid,index,value) return c_subvalue(etype,uid,index,value) end
function s_checkState(etype,eid,state) return c_checkstate(etype,eid,state) end
function s_addbuff(etype,uid,buffid,level,time,value,valuetwo) return c_addbuff(etype,uid,buffid,level,time,value,valuetwo) end
function s_addeffect(etype,uid,effectid,etype1,eid1) return c_addeffect(etype,uid,effectid,etype1,eid1) end
function s_removebuff(etype,uid,buffid,num) return c_removebuff(etype,uid,buffid,num) end
function s_getbufflevel(etype,uid,buffid) return c_getbufflevel(etype,uid,buffid) end
function s_getbufftime(etype,eid,buffid) return c_getbufftime(etype,eid,buffid) end
function s_getbuffvalue(etype,eid,buffid) return c_getbuffvalue(etype,eid,buffid) end
function s_getbuffnum(etype,eid,buffid) return c_getbuffnum(etype,eid,buffid) end
function s_updateBuffTime(etype,eid,buffid,time) return c_updateBuffTime(etype,eid,buffid,time) end
function s_updateBuffValue(etype,eid,buffid,value) return c_updateBuffValue(etype,eid,buffid,value) end
function s_getbuff(etype,uid) return pack(c_getbuff(etype,uid)) end
function s_goto(etype,uid,posx,posy,gtype) return c_goto(etype,uid,posx,posy,gtype) end
function s_move(etype,eid,x,y,step) return c_move(etype,eid,x,y,step) end
function s_select(etype1,eid1,etype2,eid2) return c_select(etype1,eid1,etype2,eid2) end
function s_getselect(etype1,eid1) return c_getselect(etype1,eid1) end
function s_getskilllevel(etype,eid,skillid) return c_getskilllevel(etype,eid,skillid) end
function s_addskill(etype,eid,skillid,level) return c_addskill(etype,eid,skillid,level) end
function s_studyskill(etype,eid,skillid,level,itemid) return c_studyskill(etype,eid,skillid,level,itemid) end
function s_forgetskill(etype,eid,skill,level,profession) return c_forgetskill(etype,eid,skill,level,profession) end
function s_removeskill(etype,eid,skillid,level) return c_removeskill(etype,eid,skillid,level) end
function s_attack(skillid,etype1,eid1,...) c_attack(skillid,etype1,eid1,unpack(arg)) end
function s_MagicAttack(skillid,atype,percent,etype1,eid1,...) c_MagicAttack(skillid,atype,percent,etype1,eid1,unpack(arg)) end
function s_attackaim(skillid,level,etype1,eid1,prob,...) c_attackaim(skillid,level,etype1,eid1,prob,unpack(arg)) end
function s_checkCompanion(etype,eid) return c_checkCompanion(etype,eid) end
function s_invitePersonToMe(etype,eid,uid) return c_inviteToMe(etype,eid,0,uid) end
function s_inviteTeamMemberToMe(etype,eid) return c_inviteToMe(etype,eid,1) end
function s_inviteCompanionToMe(etype,eid) return c_inviteToMe(etype,eid,2) end
function s_addTitle(etype,eid,titleid) return c_addTitle(etype,eid,titleid) end
function s_startGuessCard(uid,card,tip1,tip2) return c_guesscard(SCENE_ENTRY_PLAYER,uid,1,card,tip1,tip2) end
function s_outputGuessCard(uid,result,card1,card2,card3) return c_guesscard(SCENE_ENTRY_PLAYER,uid,2,result,card1,card2,card3) end
function s_freshColor(uid,ftype,result) return c_freshcolor(SCENE_ENTRY_PLAYER,uid,ftype,result) end
function s_checkCatchDemon(uid,demonid) return c_checkCatchDemon(SCENE_ENTRY_PLAYER,uid,demonid) end
function s_addLuckyCard(uid,cardtype) return c_addLuckyCard(SCENE_ENTRY_PLAYER,uid,cardtype) end
function s_isOldMap(uid,map) return c_isOldMap(uid,map) end
function s_endPitch(uid) c_endpitch(uid) end
function s_incMainPackHeight(uid) return c_incMainPackHeight(uid) end
function s_incSmallPackNum(uid) return c_incSmallPackNum(uid) end
function s_getSmallPackNum(uid) return c_getSmallPackNum(uid) end
function s_incStorePackNum(uid) return c_incStorePackNum(uid) end
function s_checkNearNpc(uid,baseid) return c_checkNearNpc(uid,baseid) end
function s_openStore(uid) c_openstore(uid) end
function s_refreshExp(uid,exp,exptype,param) return c_refreshExp(uid,exp,exptype,param) end
function s_deductExp(uid,exp,exptype,param) return c_deductExp(uid,exp,exptype,param) end
function s_clearpoint(uid) return c_clearpoint(uid) end
function s_levelupMiliRank(uid) return c_levelupMiliRank(uid) end
function s_firstEvent(uid,event,param) return c_firstevent(uid,event,param) end
function s_setOperate(uid,optype) return c_setOperate(uid,optype) end
function s_setNpcDeadEvent(baseid) return  c_setNpcDeadEvent(baseid) end
function s_getNpcByBaseID(sid,baseid) return  pack(c_getNpcByBaseID(sid,baseid)) end
function s_refreshNpc(npcid)			return c_refreshNpc(npcid) end
function s_getNpcBase(npcid,index) return c_getNpcBase(npcid,index)  end
function s_summon(etype,eid,baseid,ai,recycle) return c_summon(etype,eid,baseid,ai,recycle) end
function s_sysSummon(baseid,scene,posx,posy,ai,recycle) return c_sysSummon(baseid,scene,posx,posy,ai,recycle) end
function s_killnpc(npcid,nobody) return c_killnpc(npcid,nobody) end
function s_clearNpc(npcid) return c_clearNpc(npcid) end
function s_summonArmyEquip(uid,baseid,times) return c_summonArmyEquip(uid,baseid,times) end
function s_addDriver(uid,equipid) return c_addDriver(uid, equipid) end
function s_airshipAddMember(uid,airshipid) return c_airshipAddMember(uid,airshipid) end
function s_doCaptainCommand(airshipid) return c_doCaptainCommand(airshipid) end
function s_setAirshipState(airshipid,state) return c_setAirshipState(airshipid,state) end
function s_setCopyAirship(cid,airshipid) return c_setCopyAirship(cid,airshipid) end
function s_airshipUserLeave(airshipid,uid) return c_airshipUserLeave(airshipid,uid) end
function s_airshipAllLeave(airshipid) return c_airshipAllLeave(airshipid) end
function s_getAirshipOpTimes(airshipid,uid) return c_getAirshipOpTimes(airshipid,uid) end
function s_setTrafficType(uid,ttype,tid,time,baseid) return c_setTrafficType(uid,ttype,tid,time,baseid) end
function s_getTrafficType(uid) return c_getTrafficType(uid) end
function s_resetTrafficType(uid) return c_resetTrafficType(uid) end
function s_getFunctionNameByType(functiontype) return c_getFunctionNameByType(functiontype) end
function s_getFunction(uid, rtype) return c_getFunction(uid, rtype) end
function s_checkRight(uid, rtype, right) return c_checkRight(uid, rtype, right) end
function s_relive(etype,eid)return c_relive(etype,eid,100) end
function s_getTeamLeader(uid) return c_getTeamLeader(uid) end
function s_getTeamID(uid) return c_getTeamID(uid) end
function s_setcold(uid,skillid) return c_setcold(uid,skillid) end
function s_getcold(uid,skillid) return c_getcold(uid,skillid) end
function s_clearbuff(etype,eid,btype,num) return c_clearbuff(etype,eid,btype,num) end
function s_seekHelp(eid,baseid,num)	return c_seekHelp(eid,baseid,num) end
function s_showAddHp(etype1,eid1,etype2,eid2,value) return c_showAddHp(etype1,eid1,etype2,eid2,value) end
function s_showSubSp(etype1,eid1,etype2,eid2,value) return c_showSubSp(etype1,eid1,etype2,eid2,value) end
function s_getWeapon(uid) return c_getWeapon(uid) end
function s_setTaskPackCallback(uid,call) return c_setTaskPackCallback(uid,call) end
function s_addGroup(etype,eid,group) return c_addGroup(etype,eid,group)  end
function s_removeGroup(etype,eid) c_removeGroup(etype,eid) end
function s_getSelect(uid) return c_getSelect(uid)	end
function s_registerGomapMsgBox(homeland,country,map,x,y,minlevel,msg,areatype,hidetype,isopen,maxlevel)
	maxlevel = maxlevel or 0
	return c_registerGomapMsgBox(homeland,country,map,x,y,minlevel,msg,areatype,hidetype,isopen,maxlevel)
end
function s_registerMsgBox(uid,func,buttons,msg,life,ignoredead,areatype,hidetype,isopen)
	return c_registerMsgBox(uid,func,buttons,msg,life,ignoredead,areatype,hidetype,isopen)
end
function s_registerBookBox(uid,func,title,msg,button,life)
	return c_registerBookBox(uid,func,title,msg,button,life)
end
function s_getField(uid, index)	return c_getField(uid, index)	end
function s_setField(uid, index ,value) return c_setField(uid,index,value) end
function s_addField(uid, index, value)	c_addField(uid, index, value)	end
function s_subField(uid, index, value)	c_subField(uid, index, value)	end
function s_checkField(uid,index,value) return c_checkField(uid,index,value) end
function s_openPalace(uid,palaceid,tempid) return c_openPalace(uid,palaceid,tempid) end
function s_openTreasure(uid,palaceid,tempid,thisid) c_openTreasure(uid,palaceid,tempid,thisid) end
function s_openCard(uid,palaceid,tempid,thisid,opentype) c_openCard(uid,palaceid,tempid,thisid,opentype) end
function s_reselectPalaceItem(uid) return c_reselectPalaceItem(uid) end
function s_refreshItem(uid,itemid) return c_refreshitem(uid,itemid) end
function s_refreshSceneItem(itemid) return c_refreshsceneitem(itemid) end
function s_judgeItem(uid,itemid,rate) return c_judgeitem(uid,itemid,rate) end
function s_equipUpToNewBaseID(uid,equipid,targetbaseid) return c_equipUpToNewBaseID(uid,equipid,targetbaseid) end
function s_getItemThisID(uid,packid,posx,posy) return c_getItemThisID(uid,packid,posx,posy) end
function s_leachStarItem(uid,itemid,rate) return c_leachStarItem(uid,itemid,rate) end
function s_lostItem(uid,packtype,lostrate,downnum,upnum) return c_lostitem(uid,packtype,lostrate,downnum,upnum) end
function s_dropItem(uid,baseid,level,owner,ownertype,reason) return pack(c_dropitem(uid,baseid,level,owner,ownertype,reason)) end
function s_buyItem(uid,itemid,itemnum,level,moneytype) return c_buyitem(uid,itemid,itemnum,level,moneytype) end
function s_sellItem(uid,thisid,modulus)return c_sellitem(uid,thisid,modulus) end
function s_getItemValue(uid,id,index)return c_getitemvalue(uid,id,index) end
function s_setItemValue(uid,id,index,value)	return c_setitemvalue(uid,id,index,value) end
function s_getItemBaseValue(baseid,index)return c_getitembasevalue(baseid,index) end
function s_getitembaseid(uid,thisid)return c_getitembaseid(uid,thisid) end
function s_incItemValue(uid,id,index,value)		return c_setitemvalue(uid,id,index,value+s_getItemValue(uid,id,index)) end
function s_deleteItemByThisID(uid,thisid,num,reason) return c_deleteItemByThisID(uid,thisid,num,reason) end
function s_checkItem(uid,baseid,num,level)return c_checkItem(uid,baseid,num,level) end
function s_repairItem(uid,itemid)return c_repairitem(uid,itemid) end
function s_clearItem(uid,pack)return c_clearitem(uid,pack) end
function s_getPackList(uid,packtype) return pack(c_getpacklist(uid,packtype)) end
function s_getPackItem(uid,packtype,x,y)return c_getpackitem(uid,packtype,x,y) end
function s_getcurdemon(uid)	return c_getcurdemon(uid) end
function s_refreshdemonexp(uid,num,demonid,punish) return c_refreshdemonexp(uid,num,demonid,punish) end
function s_getdemonlist(uid)return pack(c_getpacklist(uid,PACKAGETYPE_DEMON)) end
function s_studydemonskill(uid,demonid,skill)return c_studydemonskill(uid,demonid,skill) end
function s_getdemontype(uid,demon) return c_getdemontype(uid,demon) end
function s_getDemonType(baseid) return c_getDemonType(baseid) end
function s_registerNpcTimeSkill(skillid,time) return c_registerNpcTimeSkill(skillid,time) end
function s_registerNpcHpSkill(skillid,percent) return c_registerNpcHpSkill(skillid,percent) end
function s_restdemon(uid) return c_restdemon(uid) end
function s_joindemon(uid) return c_joindemon(uid) end
function s_unjoindemon(uid) return c_unjoindemon(uid) end
function s_useitemcold(uid,itemid) return c_useitemcold(uid,itemid) end
function s_getItemExchangeNum(itemid) return c_getItemExchangeNum(itemid) end
function s_getHorseItem(uid,index) return c_gethorseitem(uid,index) end
function s_useHorseItem(uid,thisid) return c_usehorseitem(uid,thisid) end
function s_useHorseEquip(uid,thisid) return c_usehorseequip(uid,thisid) end
function s_sendNewUserCard(uid) return c_sendNewUserCard(uid) end
function s_queryGold(uid) return c_queryGold(uid) end
function s_addMoney(uid,moneytype,value,reason,reasontype) return c_addmoney(uid,moneytype,value,reason,reasontype) end
function s_addMoneyMe(uid,moneytype,value,reason,reasontype) return c_addmoneyme(uid,moneytype,value,reason,reasontype) end
function s_getMoney(uid,moneytype) return c_getmoney(uid,moneytype) end
function s_removeMoney(uid,moneytype,value,reason,reasontype) return c_removemoney(uid,moneytype,value,reason,reasontype) end
function s_addEvent(rtype,rid,eid,beg,last,uid) return c_addEvent(rtype,rid,eid,beg,last,uid) end
function s_getEvent(rtype,rid,eid)return c_getEvent(rtype,rid,eid) end
function s_delEvent(rtyep,rid,eid)return c_delEvent(rtype,rid,eid) end
function s_addCorpsVar(cid,key1,key2,value)	return c_setCorpsVar(cid,key1,key2,value) end
function s_getCorpsVar(cid,key1,key2)return c_getCorpsVar(cid,key1,key2)  end
function s_addCountryVar(cid,key1,key2,value)	return c_setCountryVar(cid,key1,key2,value) end
function s_getCountryVar(cid,key1,key2)return c_getCountryVar(cid,key1,key2) end
function s_addWorldVar(key1,key2,value)return c_setCountryVar(13,key1,key2,value) end
function s_getWorldVar(key1,key2)return c_getCountryVar(13,key1,key2) end
function s_getCorpsId(uid)return c_getCorpsId(uid) end
function s_getCorpsLeader(uid)return c_getCorpsLeader(uid) end
function s_getCorpsField(corps, index)return c_getCorpsField(corps, index)	end
function s_setCorpsField(corps, index,value)return c_setCorpsField(corps, index,value) end
function s_addCorpsField(corps,index,value)	c_addCorpsField(corps,index,value)	end
function s_checkAddField(corps,index,value) return value end
function s_subCorpsField(corps, index, value) return c_subCorpsField(corps, index, value)	end
function s_corpsPack(uid, packtype, get)return c_corpsPack(uid, packtype, get)	end
function s_listArmyEquip(uid,equiptype,emerg)return c_listArmyEquip(uid, equiptype, emerg) end
function s_buildArmyEquip(uid)return c_buildArmyEquip(uid) end
function s_getArmyEquip(uid,btype,bindex,critical)return c_getArmyEquip(uid,btype,bindex,critical) end
function s_sysCallUp(rtype,rid,sid,x,y,info,ctype,uid) return c_sysCallUp(rtype,rid,sid,x,y,info,uid,ctype) end
function s_requestDonate(rtype, rid)return c_requestDonate(rtype, rid) end
function s_allMemberTips(rtype, rid)return c_allMemberTips(rtype, rid) end
function s_donateMoney(uid, rtype)return c_donateMoney(uid, rtype) end
function s_checkWorker(uid,rtype,bset)return c_checkWorker(uid,rtype,bset) end
function s_joinCorpsList(uid,rtype) return c_joinCorpsList(uid,rtype) end
function s_corpsState(cid,state)return c_corpsStateCheck(cid,state) end
function s_quietPlayer(uid,name) return c_quietPlayer(uid,name) end
function s_arrestPlayer(uid,name)return c_arrestPlayer(uid,name) end
function s_excusePlayer(uid,name)return c_excusePlayer(uid,name) end
function s_addFriendDegree(uid,fid,value) return c_addFriendDegree(uid,fid,value) end
function s_getUserIDByName(name)return c_getUserIDByName(name) end
function s_getArmyID(uid)return c_getArmyID(uid) end
function s_getArmyField(army, index)return c_getArmyField(army, index)	end
function s_setArmyField(army, index,value)return c_setArmyField(army, index,value) end
function s_addArmyField(army,index,value) return c_addArmyField(army,index,value)	end
function s_subArmyField(army, index, value)	return c_subArmyField(army, index, value)	end
function s_addArmyVar(cid,key1,key2,value)	return c_setArmyVar(cid,key1,key2,value) end
function s_getArmyVar(cid,key1,key2)return c_getArmyVar(cid,key1,key2)  end
function s_delArmyVar(cid,key1,key2)return c_delArmyVar(cid,key1,key2) end
function s_getArmyEntry(armyid)return pack(c_getArmyEntry(armyid)) end
function s_setPlantTips(uid, nums, ftip, vlist)	return c_setPlantTips(uid, nums, ftip, unpack(vlist)) end
function s_plantInfo(uid, itype, name)return c_plantInfo(uid, itype, name) end
function s_corpsAchieve(corps, achid) return s_sendToSession(4, corps, achid) end
function s_gmCmd(uid,cmd,code) return c_gmCmd(uid,cmd,code) end
function s_sysStock(uid)return c_sysStock(uid)	 end
function s_getRunningState(cid)return c_getRunningState(cid) end
function s_joinRunning(uid)	return c_joinRunning(uid)	end
function s_checkStartRunning(uid)return c_checkStartRunning(uid) end
function s_startRunning(uid)return c_startRunning(uid)  end
function s_addRunningItem(uid,index,item)return c_addRunningItem(uid,index,item) end
function s_removeRunningItem(uid,index)	return c_removeRunningItem(uid,index) end
function s_getRunningItem(uid,index)return c_getRunningItem(uid,index) end
function s_getRunningPartner(uid)return c_getRunningPartner(uid) end
function s_isCountryInServer(cid)return c_isCountryInServer(cid) end
function s_getFriendNum(uid) return c_getFriendNum(SCENE_ENTRY_PLAYER,uid) end
function s_checkMagicMaterials(uid) return c_checkMagicMaterials(uid) end
function s_cancelProtect(uid)return c_cancelProtect(uid) end
function s_setProtect(uid)return c_setProtect(uid) end
function s_fishUpStick(uid) return c_fishUpStick(uid) end
function s_getMapName(mapid) return c_getMapName(mapid) end
function s_getCurrentZoneID() return c_getCurrentZoneID() end
function s_getOldZoneID(uid) return c_getOldZoneID(uid) end
function s_getBigMiddleZoneID() return c_getBigMiddleZoneID() end
function s_immigration(uid,cid) return c_immigration(uid,cid) end
function s_addActivePoint(uid,atype,num) return c_addActivePoint(uid,atype,num) end
function s_addVigorPoint(uid,num) return c_addVigorPoint(uid,num) end
function s_getVigorPoint(uid) return c_getVigorPoint(uid) end
function s_sysMail(toid, text, money, baseid, num, iv, judge)  return c_sysMail(toid, text, money, baseid, num, iv, judge) end
function s_gmCommand(uid, cmd, opcode)  return c_gmCommand(uid, cmd, opcode) end
function s_getMedal(uid) return c_getMedal(uid) end
function s_addHoliday(hour,minute,fun) return c_addHoliday(hour,minute,fun) end
function s_fallInLove(uid,toid) return c_fallInLove(uid,toid) end
function s_breakOutLove(uid) return c_breakOutLove(uid) end
function s_checkLoverIsFriend(uid,toid) return c_checkLoverIsFriend(uid,toid) end
function s_noticeTreasurePos(uid,mapid,posx,posy) return c_noticeTreasurePos(uid,mapid,posx,posy) end
function s_sfxMagicPlay(uid,sfxid) return c_sfxMagicPlay(uid,sfxid) end
function s_smile(uid1,uid2,smileid) return c_smile(uid1,uid2,smileid) end
function s_addpuke(uid,card) return c_addpuke(uid,card) end
function s_addSevenDay(uid,index) return c_addSevenDay(uid,index) end
function s_openGoldReturn(uid,index) return c_openGoldReturn(uid,index) end
function s_openGoldChild(uid) return c_openGoldChild(uid) end

function s_openLotteryHistory(uid) return c_openLotteryHistory(uid) end
function s_sendBaoXiangPresent(uid,index,baseid,num,iv) return c_sendBaoXiangPresent(uid,index,baseid,num,iv) end
function s_sendQianDaoState(uid) return c_sendQianDaoState(uid) end
function s_sacrificeAction(uid) return c_sacrificeAction(uid) end
function s_checkMarryDegree(uid,toid,degree) return c_checkMarryDegree(uid,toid,degree) end
function s_marryMe(uid,fromid,mode) return c_marryMe(uid,fromid,mode) end
function s_divorce(uid) return c_divorce(uid) end
function s_setCountryFunByType(uid,stype,fun) return c_setCountryFunByType(uid,stype,fun) end
function s_getWorldPercent() return c_getWorldPercent() end
function s_setCountryWarVal(vtype,value,countryid) return c_setCountryWarVal(vtype,value,countryid) end
function s_getCountryField(cid, index)return c_getCountryField(cid, index)  end
function s_setCountryField(cid, index, value) return c_setCountryField(cid, index, value) end
function s_registCountryActivity(time,fun,uid,activity,cid) return c_registCountryActivity(time,fun,uid,activity,cid) end
function s_sendGoodNess(etype,eid,state,value) return c_sendGoodNess(etype,eid,state,value) end
function s_setViplevel(eid,viplevel) return c_setViplevel(eid,viplevel) end
function s_getHorseEquip(eid,itemid,etype,valtype) return c_getHorseEquip(eid,itemid,etype,valtype) end
function s_getPkMode(eid) return c_getPkMode(eid) end
function s_getArmyOccupy(armyid) return c_getArmyOccupy(armyid) end
function s_setRandomMessage(uid,msg,fortune,color,randomtaskid,exp) return c_setRandomMessage(uid,msg,fortune,color,randomtaskid,exp) end
function s_getEscort(uid) return c_getEscort(uid) end
function s_clearEscort(uid) return c_clearEscort(uid) end
function s_setskilllevel(etype,eid,skillid,value) return c_setskilllevel(etype,eid,skillid,value) end
function s_sendBordBuff(curcountry, murdercountry) return c_sendBordBuff(curcountry, murdercountry) end
function s_jailKing(curcountry,king,murdercountry,murder) return c_jailKing(curcountry,king,murdercountry, murder) end
function s_levelup(uid) return c_levelup(uid) end
function s_closeloveinterface(uid,partner) return c_closeloveinterface(uid,partner) end
function s_sendshamepoint(uid,point) return c_sendshamepoint(uid,point) end
function s_getMiddleRefreshBoss() return pack(c_getMiddleRefreshBoss()) end
function s_clearMiddleBoss() return c_clearMiddleBoss() end
function s_setMiddleBossThisID(index,npcid) return c_setMiddleBossThisID(index,npcid) end
function s_setNextMiddleBossList(num,vlist) return c_setNextMiddleBossList(num,unpack(vlist)) end
function s_recycleArmyEquip(sid,corps) return c_recycleArmyEquip(sid,corps) end
function s_refreshAdditionData(npcid) return c_refreshAdditionData(npcid) end
function s_registerRelationMsgBox(uid,reltype,relid,level,func,buttons,msg,life,ignoredead,areatype,hidetype,isopen)
	return c_registerRelationMsgBox(uid,reltype,relid,level,func,buttons,msg,life,ignoredead,areatype,hidetype,isopen)
end
function s_sendSceneTeamInfo(uid) return c_sendSceneTeamInfo(uid) end
function s_setAskForHelp(npcid,help) return c_setAskForHelp(npcid,help) end
function s_addStoreItem(reset,storeid,tempid,itemid,level,bind,milirank,needlevel,basenum,taskid,moneytype,price,attr,worldlevel,maxworldlevel) return c_addStoreItem(reset,storeid,tempid,itemid,level,bind,milirank,needlevel,basenum,taskid,moneytype,price,attr,worldlevel,maxworldlevel) end
function s_canIntoCopy(uid,tips) return c_canIntoCopy(uid,tips) end
function s_getSimulationInfo(cid) return pack(c_getSimulationInfo(cid)) end
function s_finishSimulation(winer,loser,ftype) return c_finishSimulation(winer,loser,ftype) end
function s_setSelfHide(etype,eid,hide) return c_setSelfHide(etype,eid,hide) end
function s_clearSkillCold(etype,eid,skillid) return c_clearSkillCold(etype,eid,skillid) end
function s_useSkill(etype,eid,etype1,eid1,skillid) return c_useSkill(etype,eid,etype1,eid1,skillid) end
function s_isTitle(etype,eid,titleid) return c_isTitle(etype,eid,titleid) end
function s_isDead(uid) return c_isDead(uid) end
function s_kickAnybody(etype,eid) return c_kickAnybody(etype,eid) end
function s_worldWarDeclarate(uid) return c_worldWarDeclarate(uid) end
function s_sendDiduCopyInfo(ctype,sid,uid,num,cnum,vlist) c_sendDiduCopyInfo(ctype,sid,uid,num,cnum,unpack(vlist)) end
function s_asciiToUtf8(text) return c_asciiToUtf8(text) end
function s_utf8ToAscii(text) return c_utf8ToAscii(text) end
function s_isNpcDead(sid,baseid,thisid) return c_isNpcDead(sid,baseid,thisid) end
function s_setHorseCarHome(npcid,posx,posy) c_setHorseCarHome(npcid,posx,posy) end
function s_getWhiteEquipBase(baseid,index) return c_getWhiteEquipBase(baseid,index) end
function s_getJudgeBase(baseid,quality,prefix,index) return c_getJudgeBase(baseid,quality,prefix,index) end
function s_copyItemData(uid,thisid,newbaseid) return c_copyItemData(uid,thisid,newbaseid) end
function s_updateBaBieTower(uid,level) return c_updateBaBieTower(uid,level) end
function s_getSomeTime(sec,timetype) return c_getSomeTime(sec,timetype) end
function s_updateDemonList(userid,demonthisid,totalscores,demontype) return c_updateDemonList(userid,demonthisid,totalscores,demontype) end
function s_updateAirshipCopyList(corpsid,time) return c_updateAirshipCopyList(corpsid,time) end
function s_getNotTiredTime(uid) return c_getNotTiredTime(uid) end
function s_addTiredTime(uid,minute) return c_addTiredTime(uid,minute) end
function s_finishDeputeTask(uid,ttype,isdone) return c_finishDeputeTask(uid,ttype,isdone) end
function s_addWeekGoldBox(uid,num) return c_addWeekGoldBox(uid,num) end
function s_refreshDemonScholar(uid,demonid,num) return c_refreshDemonScholar(uid,demonid,num) end
function s_closeRobinInterface(uid) return c_closeRobinInterface(uid) end
function s_openSoldierDiary(uid,diarytype,itemid) return c_openSoldierDiary(uid,diarytype,itemid) end
function s_openVigorPointAwardItem(uid,itemid) return c_openVigorPointAwardItem(uid,itemid) end
function s_setNpcDir(npcid,dir) return c_setNpcDir(npcid,dir) end
function s_finishTaskOldZone(uid,taskid) return c_finishTaskOldZone(uid,taskid) end
function s_sendLifeSkillInfo(uid,refresh) return c_sendLifeSkillInfo(uid,refresh) end
function s_sendChangeCountryWar(uid,tocountry) return c_sendChangeCountryWar(uid,tocountry) end
function s_continueZoneCountryWar(uid) return c_continueZoneCountryWar(uid) end
function s_getCSRunningState(cid) return c_getCSRunningState(cid) end
function s_joinCSRunning(uid) return c_joinCSRunning(uid)   end
function s_checkStartCSRunning(uid)return c_checkStartCSRunning(uid) end
function s_startCSRunning(uid)return c_startCSRunning(uid)  end
function s_addCSRunningItem(uid,index,item)return c_addCSRunningItem(uid,index,item) end
function s_removeCSRunningItem(uid,index) return c_removeCSRunningItem(uid,index) end
function s_getCSRunningItem(uid,index)return c_getCSRunningItem(uid,index) end
function s_getCSRunningPartner(uid)return c_getCSRunningPartner(uid) end
--设置神兵魔舞属性
function s_setSuperEquip(uid,itemthisid) return c_setSuperEquip(uid,itemthisid) end
function s_leaveFightTeam(uid) return c_leaveFightTeam(uid) end
function s_getFightTeamID(uid) return c_getFightTeamID(uid) end
function s_registratFightTeam(uid) return c_registratFightTeam(uid) end
function s_teamChallengeWin(fightteam,ctype,killnum1,killnum2) return c_teamChallengeWin(fightteam,ctype,killnum1,killnum2) end
function s_refreshChatFlag(uid) return c_refreshChatFlag(uid) end
function s_getCountrySize() return c_getCountrySize() end
function s_isUserInQueue(uid) return c_isUserInQueue(uid) end
function s_setMagmaID(gateid,magmaid) return c_setMagmaID(gateid,magmaid) end
function s_getCountryByScene(cid) return c_getCountryByScene(cid) end
function s_setNpcReliveTime(npcid,time) return c_setNpcReliveTime(npcid, time) end --注意npc必须是normalnpc或者是其继承类，否则可能宕机
function s_setState(etype,eid,state) return c_setState(etype,eid,state) end
function s_addState(etype,eid,state) return c_addState(etype,eid,state) end
function s_subState(etype,eid,state) return c_subState(etype,eid,state) end
function s_checkState(etype,eid,state) return c_checkState(etype,eid,state) end
function s_aiSetCurrentState(npcid,state) return c_aiSetCurrentState(npcid,state) end
function s_leaveScene(npcid) return c_leaveScene(npcid) end
function s_clearCorpLinePack(corp) return c_clearCorpLinePack(corp) end
function s_reduceRuneDur(uid,skill) return c_reduceRuneDur(uid,skill) end
function s_getRuneDur(uid,skill) return c_getRuneDur(uid,skill) end
function s_isInZoneByPos(etype,eid,ztype) return c_isInZoneByPos(etype,eid,ztype) end
function s_notifyCorpsSkill(uid,corps) return c_notifyCorpsSkill(uid,corps) end
function s_setCountryPostCarVal(value,countryid,mapid) return c_setCountryPostCarVal(value,countryid,mapid) end
function s_postCarEndEvent(npcid,success) return c_postCarEndEvent(npcid,success) end
function s_refreshCorpsActivityInfo(uid,num,activity,vlist) return c_refreshCorpsActivityInfo(uid,num,activity,unpack(vlist)) end
function s_refreshCountryActivityInfo(uid,num,activity,vlist) return c_refreshCountryActivityInfo(uid,num,activity,unpack(vlist)) end
function s_replenishLoginAwardDialog(uid) c_replenishLoginAwardDialog(uid) end
function s_dealGoldAction(uid,gold,reason) c_dealGoldAction(uid,gold,reason) end
function s_addTruingSkilled(uid,profession,value) c_addTruingSkilled(uid,profession,value) end
function s_doneShunNetTask(uid,level) return c_doneShunNetTask(uid,level) end
function s_deductBloodExp(uid,exp,exptype,param) return c_deductBloodExp(uid,exp,exptype,param) end
function s_refreshBloodExp(uid,exp,from) return c_refreshBloodExp(uid,exp,from) end
--跨服中立区传送
local randomBigMiddlePos =
{
	{134,90},
	{108,124},
	{157,126},
	{162,152},
	{186,106},
	{185,130},
	{168,68},
	{109,68},
	{140,64},
	{85,101},
	{79,133},
	{106,160},
	{137,176},
	{88,69},
	{183,71},
}
--随机到跨服中立区的随机坐标
function s_changeRandomZoneBigMiddle(uid)
	local rand = math.random(1, table.getn(randomBigMiddlePos))
	s_changeZoneBigMiddle(uid,13,188,randomBigMiddlePos[rand][1],randomBigMiddlePos[rand][2])
end
function s_getLastAttackUser(npcid) return c_getLastAttackUser(npcid) end
--从伤害列表中随机maxnum个目标出来
function s_getListNum(radList,maxnum)
	local victim = {}
	local length = table.getn(radList)/2
	if length > maxnum then
		for i=1,maxnum do
			length = table.getn(radList)/2
			local n = math.random(length)
			table.insert(victim,radList[2*n-1])
			table.insert(victim,radList[2*n])
			table.remove(radList,2*n-1)
			table.remove(radList,2*n)
		end
	else
		victim = radList
	end
	return victim
end
--从伤害列表中随机maxnum个目标出来,如果目标在伤害列表中，则必添加
function s_getTargetListNum(radList,maxnum)
	local victim = {}
	local length = table.getn(radList)/2
	if length > maxnum then
		for i=1,maxnum do
			length = table.getn(radList)/2
			local n = math.random(length)
			if i == 1 then
				n = 1
			end
			table.insert(victim,radList[2*n-1])
			table.insert(victim,radList[2*n])
			table.remove(radList,2*n-1)
			table.remove(radList,2*n)
		end
	else
		victim = radList
	end
	return victim
end
--玩家圆形群攻：从九屏内取个20目标,与eid1距离小于dis的目标放入伤害列表
function s_playerCircleList(skillid,etype1,eid1,etype2,eid2,posx,posy,radius,aimtype)
	local radList = {}
	local list = s_getNineEntry(etype1,eid1,20)
--	for i=1,#list,2 do
--		s_debug("list:TYPE=%d,ID=%d,name=%s",list[i],list[i+1],s_getValue(list[i],list[i+1],VALUE_TYPE_NAME))
--	end
--	local px = s_getValue(etype1,eid1,VALUE_TYPE_POSX)
--	local py = s_getValue(etype1,eid1,VALUE_TYPE_POSY)
	for i=1,table.getn(list),2 do
		if etype1 ~= list[i] or eid1 ~= list[i+1] then
			local lx = s_getValue(list[i],list[i+1],VALUE_TYPE_POSX)
			local ly = s_getValue(list[i],list[i+1],VALUE_TYPE_POSY)
			local dis = math.sqrt((posx-lx)^2+(posy-ly)^2)
			if dis <= radius then
				local camp = s_checkPK(skillid,etype1,eid1,list[i],list[i+1])
				local flag = false
				if aimtype == 0 then
					flag = true
				elseif aimtype == 1 and camp == VALUE_FAIL then
					flag = true
				elseif aimtype == 2 and camp == VALUE_OK then
					flag = true
				end
				if flag then
					if list[i] == etype2 and list[i+1] == eid2 then
						table.insert(radList,1,list[i])
						table.insert(radList,2,list[i+1])
					else
						table.insert(radList,list[i])
						table.insert(radList,list[i+1])
					end
				end
			end
		end
	end
--	for i=1,#radList,3 do
--		s_debug("radList:TYPE=%d,ID=%d,name=%s",radList[i],radList[i+1],s_getValue(radList[i],radList[i+1],VALUE_TYPE_NAME))
--	end
	return radList
end
--玩家扇形群攻：从圆形群攻列表中分离出处于扇形中的目标
function s_playerSectorList(skillid,etype1,eid1,etype2,eid2,posx,posy,radius,angle,aimtype)
	local circleList = s_playerCircleList(skilldid,etype1,eid1,etype2,eid2,posx,posy,radius,aimtype)
	local radList = {}
	local length = table.getn(circleList)

	local ex = s_getValue(etype1,eid1,VALUE_TYPE_POSX)
	local ey = s_getValue(etype1,eid1,VALUE_TYPE_POSY)

--	s_debug("ex1=%d,ey1=%d,name=%s",ex1,ey1,s_getValue(etype1,eid1,VALUE_TYPE_NAME))
--	s_debug("ex2=%d,ey2=%d,name=%s",ex2,ey2,s_getValue(etype2,eid2,VALUE_TYPE_NAME))

	local e_vector = {x=posx-ex,y=posy-ey}
	local e_vector_len = math.sqrt(e_vector.x^2+e_vector.y^2)
--	s_debug("e_vector.x=%d,e_vector.y=%d,e_vector_len=%d",e_vector.x,e_vector.y,e_vector_len)
	for i=1,length,2 do
		local cx = s_getValue(circleList[i],circleList[i+1],VALUE_TYPE_POSX)
		local cy = s_getValue(circleList[i],circleList[i+1],VALUE_TYPE_POSY)

		local c_vector = {x=cx-ex,y=cy-ey}
		local c_vector_len = math.sqrt(c_vector.x^2+c_vector.y^2)
		local co = (e_vector.x*c_vector.x+e_vector.y*c_vector.y)/(e_vector_len*c_vector_len)
--		s_debug("c_vector.x=%d,c_vector.y=%d,c_vector_len=%d,co=%d",c_vector.x,c_vector.y,c_vector_len,co)
		if co >= 0 then
			local radian = math.acos(co)
			local degree = math.deg(radian)
--			s_debug("radian=%d,degree=%d",radian,degree)
			if degree <= angle then
				table.insert(radList,circleList[i])
				table.insert(radList,circleList[i+1])
			end
		end
	end
--	for i=1,table.getn(radList),3 do
--		s_debug("TYPE=%d,ID=%d,name=%s",radList[i],radList[i+1],s_getValue(radList[i],radList[i+1],VALUE_TYPE_NAME))
--	end
	return radList
end
--玩家线性群攻
function s_playerLineList(skillid,etype1,eid1,etype2,eid2,posx,posy,length,width,aimtype)
	local radList = {}
	local list = s_getNineEntry(etype1,eid1,20)
	local ex = s_getValue(etype1,eid1,VALUE_TYPE_POSX)
	local ey = s_getValue(etype1,eid1,VALUE_TYPE_POSY)

--	s_debug("ex=%d,ey=%d",ex,ey)

	local e_vector = {x=posx-ex,y=posy-ey}
	local e_vector_len = math.sqrt(e_vector.x^2+e_vector.y^2)

	for i=1,table.getn(list),2 do
		if etype1 ~= list[i] or eid1 ~= list[i+1] then
			local lx = s_getValue(list[i],list[i+1],VALUE_TYPE_POSX)
			local ly = s_getValue(list[i],list[i+1],VALUE_TYPE_POSY)

			local l_vector = {x=lx-ex,y=ly-ey}
			local l_vector_len = math.sqrt(l_vector.x^2+l_vector.y^2)
			local co = (e_vector.x * l_vector.x + e_vector.y * l_vector.y)/(e_vector_len*l_vector_len)
			if co >= 0 then
				local si = math.sqrt(1-co^2)
				local l_width = l_vector_len * si
				local l_length = l_vector_len * co
				if l_width <= width and l_length <= length then
--						s_debug("l_width=%d,width=%d,l_length=%d,length=%d",l_width,width,l_length,length)
					local camp = s_checkPK(skillid,etype1,eid1,list[i],list[i+1])
					local flag = false
					if aimtype == 0 then
						flag = true
					elseif aimtype == 1 and camp == VALUE_FAIL then
						flag = true
					elseif aimtype == 2 and camp == VALUE_OK then
						flag = true
					end
					if flag then
						if list[i] == etype2 and list[i+1] == eid2 then
							table.insert(radList,1,list[i])
							table.insert(radList,2,list[i+1])
						else
							table.insert(radList,list[i])
							table.insert(radList,list[i+1])
						end
					end
				end
			end
		end
	end
	return radList
end
--怪物圆形群攻：从九屏内取20个目标,与eid1距离小于dis的目标放入伤害列表
function s_monsterCircleList(etype1,eid1,etype2,eid2,posx,posy,radius,aimtype)
	local radList = {}
	local list = s_getNineEntry(etype1,eid1,20)
--	local px = s_getValue(etype1,eid1,VALUE_TYPE_POSX)
--	local py = s_getValue(etype1,eid1,VALUE_TYPE_POSY)
--	s_debug("posx=%d,posy=%d",posx,posy)
	for i=1,table.getn(list),2 do
		if list[i] == SCENE_ENTRY_PLAYER then
			local lx = s_getValue(list[i],list[i+1],VALUE_TYPE_POSX)
			local ly = s_getValue(list[i],list[i+1],VALUE_TYPE_POSY)
			local dis = math.sqrt((posx-lx)^2+(posy-ly)^2)
--			s_debug("lx=%d,ly=%d",lx,ly)
			if dis <= radius then
--			s_debug("id=%d,dis=%d",list[i+1],dis)
				if list[i] == etype2 and list[i+1] == eid2 then
					table.insert(radList,1,list[i])
					table.insert(radList,2,list[i+1])
				else
					table.insert(radList,list[i])
					table.insert(radList,list[i+1])
				end
			end
		end
	end
	return radList
end
--怪物扇形群攻：从圆形群攻列表中分离出处于扇形中的目标
function s_monsterSectorList(etype1,eid1,etype2,eid2,posx,posy,radius,angle,aimtype)
	local circleList = s_monsterCircleList(etype1,eid1,etype2,eid2,posx,posy,radius,aimtype)
	local radList = {}
	local length = table.getn(circleList)

	local ex = s_getValue(etype1,eid1,VALUE_TYPE_POSX)
	local ey = s_getValue(etype1,eid1,VALUE_TYPE_POSY)

--	s_debug("ex1=%d,ey1=%d,name=%s",ex1,ey1,s_getValue(etype1,eid1,VALUE_TYPE_NAME))
--	s_debug("ex2=%d,ey2=%d,name=%s",ex2,ey2,s_getValue(etype2,eid2,VALUE_TYPE_NAME))

	local e_vector = {x=posx-ex,y=posy-ey}
	local e_vector_len = math.sqrt(e_vector.x^2+e_vector.y^2)
--	s_debug("e_vector.x=%d,e_vector.y=%d,e_vector_len=%d",e_vector.x,e_vector.y,e_vector_len)
	for i=1,length,2 do
		local cx = s_getValue(circleList[i],circleList[i+1],VALUE_TYPE_POSX)
		local cy = s_getValue(circleList[i],circleList[i+1],VALUE_TYPE_POSY)

		local c_vector = {x=cx-ex,y=cy-ey}
		local c_vector_len = math.sqrt(c_vector.x^2+c_vector.y^2)
		local co = (e_vector.x*c_vector.x+e_vector.y*c_vector.y)/(e_vector_len*c_vector_len)
--		s_debug("c_vector.x=%d,c_vector.y=%d,c_vector_len=%d,co=%d",c_vector.x,c_vector.y,c_vector_len,co)
		if co > 0 then
			local radian = math.acos(co)
			local degree = math.deg(radian)
--			s_debug("radian=%d,degree=%d",radian,degree)
			if degree <= angle then
				table.insert(radList,circleList[i])
				table.insert(radList,circleList[i+1])
			end
		end
	end
--	for i=1,table.getn(radList),3 do
--		s_debug("TYPE=%d,ID=%d,name=%s",radList[i],radList[i+1],s_getValue(radList[i],radList[i+1],VALUE_TYPE_NAME))
--	end
	return radList
end
--怪物线性群攻
function s_monsterLineList(etype1,eid1,etype2,eid2,posx,posy,length,width,aimtype)
	local radList = {}
	local list = s_getNineEntry(etype1,eid1,20)
	local ex = s_getValue(etype1,eid1,VALUE_TYPE_POSX)
	local ey = s_getValue(etype1,eid1,VALUE_TYPE_POSY)

--	s_debug("ex=%d,ey=%d",ex,ey)

	local e_vector = {x=posx-ex,y=posy-ey}
	local e_vector_len = math.sqrt(e_vector.x^2+e_vector.y^2)

	for i=1,table.getn(list),2 do
		if list[i] == SCENE_ENTRY_PLAYER then
			local lx = s_getValue(list[i],list[i+1],VALUE_TYPE_POSX)
			local ly = s_getValue(list[i],list[i+1],VALUE_TYPE_POSY)

			local l_vector = {x=lx-ex,y=ly-ey}
			local l_vector_len = math.sqrt(l_vector.x^2+l_vector.y^2)
			local co = (e_vector.x * l_vector.x + e_vector.y * l_vector.y)/(e_vector_len*l_vector_len)
			if co >= 0 then
				local si = math.sqrt(1-co^2)
				local l_width = l_vector_len * si
				local l_length = l_vector_len * co
				if l_width <= width and l_length <= length then
--						s_debug("l_width=%d,width=%d,l_length=%d,length=%d",l_width,width,l_length,length)
					if list[i] == etype2 and list[i+1] == eid2 then
						table.insert(radList,1,list[i])
						table.insert(radList,2,list[i+1])
					else
						table.insert(radList,list[i])
						table.insert(radList,list[i+1])
					end
				end
			end
		end
	end
	return radList
end

function ErrorHandle(error_msg)
	LogErr(error_msg)
	local stack = debug.traceback() 
	LogInfo(stack)
end

function HitOdds(odd, base)
	return math.random(0, base) < odd
end
