--人生转轮
--[[
NpcMenuInfo262 = {
    talk = "<p><n>    每次前进，都需消耗“生命的时钟”。</n></p>",
    button = {
		--开始事件
        {"生命的时钟(2)","NpcMenuInfo262:DealMenu1($1," .. 1 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 1 .. ")",VALUE_OK},
        {"勇敢的心（路人）(2)","NpcMenuInfo262:DealMenu2($1," .. 2 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 2 .. ")",VALUE_OK},
        {"真理之眼（学徒）(2)","NpcMenuInfo262:DealMenu3($1," .. 3 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 3 .. ")",VALUE_OK},
        {"勤劳的故事（农夫）(2)","NpcMenuInfo262:DealMenu4($1," .. 4 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 4 .. ")",VALUE_OK},
        {"真理之眼（教师）(2)","NpcMenuInfo262:DealMenu5($1," .. 5 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 5 .. ")",VALUE_OK},
        {"勤劳的故事（农学家）(2)","NpcMenuInfo262:DealMenu6($1," .. 6 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 6 .. ")",VALUE_OK},
        {"命运之手（白银）(2)","NpcMenuInfo262:DealMenu7($1," .. 7 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 7 .. ")",VALUE_OK},
        {"命运之手（黄金）(2)","NpcMenuInfo262:DealMenu8($1," .. 8 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 8 .. ")",VALUE_OK},
		{"女神之吻（双倍）(2)","NpcMenuInfo262:DealMenu9($1," .. 9 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 9 .. ")",VALUE_OK},
        {"命运之手（青铜）(2)","NpcMenuInfo262:DealMenu10($1," .. 10 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 10 .. ")",VALUE_OK},
        {"勇敢的心（路人）(2)","NpcMenuInfo262:DealMenu11($1," .. 11 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 11 .. ")",VALUE_OK},
        {"勇敢的心（勇士）(2)","NpcMenuInfo262:DealMenu12($1," .. 12 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 12 .. ")",VALUE_OK},
        {"勇敢的心（骑士）(2)","NpcMenuInfo262:DealMenu13($1," .. 13 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 13 .. ")",VALUE_OK},
        {"勇敢的心（典范）(2)","NpcMenuInfo262:DealMenu14($1," .. 14 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 14 .. ")",VALUE_OK},
        {"勇敢的心（英雄）(2)","NpcMenuInfo262:DealMenu15($1," .. 15 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 15 .. ")",VALUE_OK},
        {"勇敢的心（猛将）(2)","NpcMenuInfo262:DealMenu16($1," .. 16 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 16 .. ")",VALUE_OK},
        {"勇敢的心（王者）(2)","NpcMenuInfo262:DealMenu17($1," .. 17 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 17 .. ")",VALUE_OK},
        {"真理之眼（教授）(2)","NpcMenuInfo262:DealMenu18($1," .. 18 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 18 .. ")",VALUE_OK},
        {"命运之手（黑铁）(2)","NpcMenuInfo262:DealMenu19($1," .. 19 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 19 .. ")",VALUE_OK},
        {"勤劳的故事（大科学家）(2)","NpcMenuInfo262:DealMenu20($1," .. 20 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 20 .. ")",VALUE_OK},
        {"开始事件21(2)","NpcMenuInfo262:DealMenu0($1," .. 21 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 21 .. ")",VALUE_OK},
        {"开始事件22(2)","NpcMenuInfo262:DealMenu0($1," .. 22 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 22 .. ")",VALUE_OK},
        {"开始事件23(2)","NpcMenuInfo262:DealMenu0($1," .. 23 .. ")","NpcMenuInfo262:ShowMenu0($1," .. 23 .. ")",VALUE_OK},

		--完成事件
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish1($1," .. 1 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 1 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish2($1," .. 2 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 2 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish3($1," .. 3 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 3 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish4($1," .. 4 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 4 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish5($1," .. 5 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 5 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish6($1," .. 6 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 6 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish7($1," .. 7 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 7 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish8($1," .. 8 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 8 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish9($1," .. 9 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 9 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish10($1," .. 10 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 10 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish11($1," .. 11 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 11 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish12($1," .. 12 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 12 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish13($1," .. 13 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 13 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish14($1," .. 14 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 14 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish15($1," .. 15 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 15 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish16($1," .. 16 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 16 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish17($1," .. 17 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 17 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish18($1," .. 18 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 18 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish19($1," .. 19 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 19 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish20($1," .. 20 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 20 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish0($1," .. 21 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 21 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish0($1," .. 22 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 22 .. ")",VALUE_OK},
        {"故事结束（领取奖励）(2)","NpcMenuInfo262:DealFinish0($1," .. 23 .. ")","NpcMenuInfo262:ShowFinish0($1," .. 23 .. ")",VALUE_OK},

		--随机计算
		{"随机计算下一层(2)","NpcMenuInfo262:DealRandom0($1)","NpcMenuInfo262:ShowRandom0($1)",VALUE_OK},

		--进入下一层
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 1 .. ")","NpcMenuInfo262:ShowNext0($1," .. 1 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 2 .. ")","NpcMenuInfo262:ShowNext0($1," .. 2 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 3 .. ")","NpcMenuInfo262:ShowNext0($1," .. 3 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 4 .. ")","NpcMenuInfo262:ShowNext0($1," .. 4 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 5 .. ")","NpcMenuInfo262:ShowNext0($1," .. 5 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 6 .. ")","NpcMenuInfo262:ShowNext0($1," .. 6 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 7 .. ")","NpcMenuInfo262:ShowNext0($1," .. 7 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 8 .. ")","NpcMenuInfo262:ShowNext0($1," .. 8 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 9 .. ")","NpcMenuInfo262:ShowNext0($1," .. 9 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 10 .. ")","NpcMenuInfo262:ShowNext0($1," .. 10 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 11 .. ")","NpcMenuInfo262:ShowNext0($1," .. 11 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 12 .. ")","NpcMenuInfo262:ShowNext0($1," .. 12 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 13 .. ")","NpcMenuInfo262:ShowNext0($1," .. 13 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 14 .. ")","NpcMenuInfo262:ShowNext0($1," .. 14 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 15 .. ")","NpcMenuInfo262:ShowNext0($1," .. 15 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 16 .. ")","NpcMenuInfo262:ShowNext0($1," .. 16 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 17 .. ")","NpcMenuInfo262:ShowNext0($1," .. 17 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 18 .. ")","NpcMenuInfo262:ShowNext0($1," .. 18 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 19 .. ")","NpcMenuInfo262:ShowNext0($1," .. 19 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 20 .. ")","NpcMenuInfo262:ShowNext0($1," .. 20 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 21 .. ")","NpcMenuInfo262:ShowNext0($1," .. 21 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 22 .. ")","NpcMenuInfo262:ShowNext0($1," .. 22 .. ")",VALUE_OK},
        {"时光流逝（下个故事）(2)","NpcMenuInfo262:DealNext0($1," .. 23 .. ")","NpcMenuInfo262:ShowNext0($1," .. 23 .. ")",VALUE_OK},

		--离开副本
        {"离开副本(3)","NpcMenuInfo262:DealLeave0($1)","NpcMenuInfo262:ShowLeave0($1)",VALUE_OK},
		
		--购买10个生命时钟
		{"购买10个生命时钟（200银币/1天1次）(2)","GetPayTimeClock($1)","NpcMenuInfo262:ShowLeave0($1)"},

    },
}

--检查当前副本是否为人生转轮副本
function CheckCopyLunHuiDouble(uid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	if customid ~= 2004
	and customid ~= 2005
	and customid ~= 2006
	and customid ~= 2007
	and customid ~= 2008
	and customid ~= 2009
	and customid ~= 2010
	and customid ~= 2011
	and customid ~= 2012
	then
		return VALUE_FAIL
	end
	return VALUE_OK
end

--事件0
function NpcMenuInfo262:ShowMenu0(uid, eventid)
	if CheckCopyLunHuiDouble(uid) == VALUE_FAIL then return VALUE_FAIL end
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 4) ~= 0 then return VALUE_FAIL end
	if s_getSceneVar(sid, 1, eventid) == 1 then return VALUE_OK end
	return VALUE_FAIL
end

function NpcMenuInfo262:DealMenu0(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)

	if eventid == 1 then
		s_setSceneVar(sid, 4, 4, 1)
	elseif eventid == 2 then
	end

	s_setSceneVar(sid, 4, 4, 1)
	s_copyInfo(sid, "这层开启，请去完成事件！")
end

function NpcMenuInfo262:ShowFinish0(uid, eventid)
	if CheckCopyLunHuiDouble(uid) == VALUE_FAIL then return VALUE_FAIL end
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 4) ~= 1 and s_getSceneVar(sid, 4, 4) ~= 2 then return VALUE_FAIL end
	if s_getSceneVar(sid, 1, eventid) == 1 then return VALUE_OK end
	return VALUE_FAIL
end

function NpcMenuInfo262:DealFinish0(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 4) ~= 2 then
		s_messageBox(uid,"事件还没有完成！")
		return
	end

	--获取奖励
	if eventid == 1 then
	elseif eventid == 2 then
	end

	s_setSceneVar(sid, 4, 4, 3)
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
end

--事件1（直接获得10个生命的时钟道具）
function NpcMenuInfo262:DealMenu1(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	s_setSceneVar(sid, 4, 4, 1)
end

function NpcMenuInfo262:DealFinish1(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	--获取奖励
	if eventid == 1 then
		if s_getSceneVar(sid, 24, 1) ~= 0 then
			s_addItem(uid,28000,0,5,0,"1-1","双倍状态奖励翻倍")
		end
		s_addItem(uid,28000,0,10,0,"1-1","双倍状态奖励翻倍")
	end
	s_setSceneVar(sid, 4, 4, 3)
	s_setSceneVar(sid, 24, 1, 1)
	s_copySmile(uid, 60, customid, sid, {7})
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
	ShowNpcMenuByTable(uid,self)
end

--事件2（废弃）
function NpcMenuInfo262:DealMenu2(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSY)
	s_setSceneVar(sid, 5, 1, 0)
	s_copySummonNpcToKill(uid, 60, customid, sid, {24000,10,posx+3,posy+3,103,0,5,1,10})
	s_setSceneVar(sid, 4, 4, 1)
end

function NpcMenuInfo262:DealFinish2(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 4) ~= 2 then
		s_messageBox(uid,"事件还没有完成！")
		return
	end
	--获取奖励
	if eventid == 2 then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
			s_addItem(uid,28001,0,8,0,"1-1","双倍状态奖励翻倍")
		end
		s_addItem(uid,28001,0,4,0,"1-1","事件2奖励")
	end
	s_setSceneVar(sid, 5, 1, 0)
	s_setSceneVar(sid, 4, 4, 3)
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
	ShowNpcMenuByTable(uid,self)
end

--事件3（召唤2种npc，击败后均可完成事件，只有击败特定NPC可获得奖励）
function NpcMenuInfo262:DealMenu3(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSY)
	s_setSceneVar(sid, 6, 1, 0)
	s_setSceneVar(sid, 6, 2, 0)
	s_copySummonNpcToKill(uid, 60, customid, sid, {24001,1,posx+3,posy+3,103,0,6,1,1})
	s_copySummonNpcToKill(uid, 60, customid, sid, {24000,1,posx-3,posy+3,103,0,6,2,1})
	s_setSceneVar(sid, 4, 4, 1)
end

function NpcMenuInfo262:DealFinish3(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 4) ~= 2 then
		s_messageBox(uid,"事件还没有完成！")
		return
	end
	--获取奖励
	if eventid == 3 then
		if s_getSceneVar(sid, 6, 1) == 1 then
			if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
				s_addItem(uid,28001,0,8,0,"1-1","双倍状态奖励翻倍")
			end
			s_addItem(uid,28001,0,4,0,"1-1","事件3奖励")
		end
	end
	s_setSceneVar(sid, 6, 1, 0)
	s_setSceneVar(sid, 6, 2, 0)
	s_setSceneVar(sid, 4, 4, 3)
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
	ShowNpcMenuByTable(uid,self)
end

--事件4(召唤可采集NPC，需求道具才可完成事件)
function NpcMenuInfo262:DealMenu4(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSY)
	s_setSceneVar(sid, 7, 1, 0)
	s_copySummonNpc(uid, 60, customid, sid,{60188, 3, posx+5, posy+5, 100, 0})
	s_setSceneVar(sid, 4, 4, 1)
end

function NpcMenuInfo262:DealFinish4(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_checkItem(uid,31550,3) ~= VALUE_OK then
		s_messageBox(uid,"道具数量不足3个，请继续采集")
		s_sysInfo(uid,"道具数量不足3个")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,31550,3,"事件4扣除")~= VALUE_OK then
		s_sysInfo(uid,"扣除道具失败")
		return VALUE_FAIL
	end
	s_setSceneVar(sid, 7, 1, 3)
	s_setSceneVar(sid, 4, 4, 2)
	--获取奖励
	if eventid == 4 then
		if s_getSceneVar(sid, 7, 1) == 3 then
			if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
				s_addItem(uid,28001,0,8,0,"1-1","双倍状态奖励翻倍")
			end
			s_addItem(uid,28001,0,4,0,"1-1","事件4奖励")
		end
	end
	s_copySmile(uid, 60, customid, sid, {19})
	s_setSceneVar(sid, 7, 1, 0)
	s_setSceneVar(sid, 4, 4, 3)
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
	s_copyDeleteItemByBaseID(uid, 60, customid, sid, {31550,0,"离开场景回收",0})
	ShowNpcMenuByTable(uid,self)
end

--事件5（召唤3个npc，击败后均可完成事件，只有击败特定NPC可获得奖励）
function NpcMenuInfo262:DealMenu5(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSY)
	s_setSceneVar(sid, 8, 1, 0)
	s_setSceneVar(sid, 8, 2, 0)
	s_copySummonNpcToKill(uid, 60, customid, sid, {24008,1,posx+3,posy+3,103,0,8,1,1})
	s_copySummonNpcToKill(uid, 60, customid, sid, {24009,2,posx-3,posy-3,103,0,8,2,1})
	s_setSceneVar(sid, 4, 4, 1)
end

function NpcMenuInfo262:DealFinish5(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 4) ~= 2 then
		s_messageBox(uid,"事件还没有完成！")
		return
	end
	--获取奖励
	if eventid == 5 then
		if s_getSceneVar(sid, 8, 1) == 1 then
			if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
				s_addItem(uid,28001,0,16,0,"1-1","双倍状态奖励翻倍")
			end
			s_addItem(uid,28001,0,8,0,"1-1","事件5奖励")
		end
	end
	s_setSceneVar(sid, 8, 1, 0)
	s_setSceneVar(sid, 8, 2, 0)
	s_setSceneVar(sid, 4, 4, 3)
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
	ShowNpcMenuByTable(uid,self)
end

--事件6（召唤采集NPC）
function NpcMenuInfo262:DealMenu6(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSY)
	s_setSceneVar(sid, 9, 1, 0)
	s_copySummonNpc(uid, 60, customid, sid,{60189, 3, posx+5, posy+5, 100, 0})
	s_setSceneVar(sid, 4, 4, 1)
end

function NpcMenuInfo262:DealFinish6(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_checkItem(uid,31551,3) ~= VALUE_OK then
		s_messageBox(uid,"小麦数量不足3个，请继续采集")
		s_sysInfo(uid,"小麦的数量不足3个")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,31551,3,"事件6扣除")~= VALUE_OK then
		s_sysInfo(uid,"扣除道具失败")
		return VALUE_FAIL
	end
	s_setSceneVar(sid, 9, 1, 3)
	s_setSceneVar(sid, 4, 4, 2)
	--获取奖励
	if eventid == 6 then
		if s_getSceneVar(sid, 9, 1) == 3 then
			if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
				s_addItem(uid,28001,0,16,0,"1-1","双倍状态奖励翻倍")
			end
			s_addItem(uid,28001,0,8,0,"1-1","事件6奖励")
		end
		s_setSceneVar(sid, 9, 1, 0)
	end
	s_copySmile(uid, 60, customid, sid, {19})
	s_setSceneVar(sid, 4, 4, 3)
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
	ShowNpcMenuByTable(uid,self)
end

--事件7（翻牌赢取奖励 胜利奖励20本，60%几率）
function NpcMenuInfo262:DealMenu7(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_checkItem(uid,28001,1) ~= VALUE_OK then
		s_sysInfo(uid,"需要消耗1本“故事书”才可翻牌，翻牌胜利可获得更多的故事书，如失败，当前扣除故事书不返还。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,1,"幸运的翻牌") == VALUE_OK then
		local gc = GuessCard:Start(uid,"","<p><n>  敢和精通翻牌的我比大小吗？</n><newline/><n>  赢：获得20本“故事书”道具</n><newline/><n>  输：扣了的书可不还你！</n></p>",2)
	    local call = Call:New(uid,nil,CopyEventGuessBox10,{})
	    gc:registerOverEvent(call)
	end
	s_setSceneVar(sid, 4, 4, 3)
end

function CopyEventGuessBox10(uid,param,param_ext)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
    if param_ext ~= nil and param_ext[1] ~= nil and param_ext[1] > 0 then --赢
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
			s_addItem(uid,28001,0,40,0,"1-1","双倍状态奖励翻倍")
		end
	    s_addItem(uid,28001,0,20,0,"1-1","事件7奖励",0)
		s_copySmile(uid, 60, customid, sid, {9})
		s_setSceneVar(sid, 10, 1, 0)
	else--if ret > 0 then --输
		s_copySmile(uid, 60, customid, sid, {12})
		s_setSceneVar(sid, 10, 1, 0)
	end
end

--事件8（翻牌赢取奖励 胜利奖励60本，30%几率）
function NpcMenuInfo262:DealMenu8(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_checkItem(uid,28001,2) ~= VALUE_OK then
		s_sysInfo(uid,"需要消耗2本“故事书”才可翻牌，翻牌胜利可获得更多的故事书，如失败，当前扣除故事书不返还。")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,28001,2,"幸运的翻牌") == VALUE_OK then
		local gc = GuessCard:Start(uid,"","<p><n>  敢和精通翻牌的我比大小吗？</n><newline/><n>  赢：获得60本“故事书”道具</n><newline/><n>  输：扣了的书可不还你！</n></p>")
	    local call = Call:New(uid,nil,CopyEventGuessBox20,{})
	    gc:registerOverEvent(call)
	end
	s_setSceneVar(sid, 4, 4, 3)
end

function CopyEventGuessBox20(uid,param,param_ext)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
    if param_ext ~= nil and param_ext[1] ~= nil and param_ext[1] > 0 then --赢
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
			s_addItem(uid,28001,0,120,0,"1-1","双倍状态奖励翻倍")
		end
	    s_addItem(uid,28001,0,60,0,"1-1","事件8奖励",0)
		s_copySmile(uid, 60, customid, sid, {9})
		s_setSceneVar(sid, 11, 1, 0)
	else--if ret > 0 then --输
		s_copySmile(uid, 60, customid, sid, {12})
		s_setSceneVar(sid, 11, 1, 0)
	end
end

--事件9（获得奖励翻倍的buff，id=140）
function NpcMenuInfo262:DealMenu9(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	s_copyRemoveBuff(uid, 60, customid, sid, {140, 0})
	s_copyAddBuff(uid, 60, customid, sid, {140, 0, 60, 0})
	s_setSceneVar(sid, 4, 4, 3)
	s_setSceneVar(sid, 12, 1, 0)
end

--事件10（翻牌不扣除故事书，赢取奖励 胜利奖励8本，100%几率）
function NpcMenuInfo262:DealMenu10(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local gc = GuessCard:Start(uid,"","<p><n>  敢和精通翻牌的我比大小吗？</n><newline/><n>  赢：获得8本“故事书”道具</n><newline/><n>  输：不损失“故事书”！</n></p>",3)
	local call = Call:New(uid,nil,CopyEventGuessBox30,{})
	gc:registerOverEvent(call)
	s_setSceneVar(sid, 4, 4, 3)
end

function CopyEventGuessBox30(uid,param,param_ext)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
    if param_ext ~= nil and param_ext[1] ~= nil and param_ext[1] > 0 then --赢
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
			s_addItem(uid,28001,0,16,0,"1-1","双倍状态奖励翻倍")
		end
	    s_addItem(uid,28001,0,8,0,"1-1","事件10奖励",0)
		s_copySmile(uid, 60, customid, sid, {9})
		s_setSceneVar(sid, 13, 1, 0)
	else--if ret > 0 then --输
		s_setSceneVar(sid, 13, 1, 0)
		s_copySmile(uid, 60, customid, sid, {12})
	end
end

--事件11（召唤1种npc，击败后均可完成事件）
function NpcMenuInfo262:DealMenu11(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSY)
	s_setSceneVar(sid, 14, 1, 0)
	s_copySummonNpcToKill(uid, 60, customid, sid, {24002,5,posx+3,posy+3,103,0,14,1,5})
	s_setSceneVar(sid, 4, 4, 1)
end

function NpcMenuInfo262:DealFinish11(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 4) ~= 2 then
		s_messageBox(uid,"事件还没有完成！")
		return
	end
	--获取奖励
	if eventid == 11 then
		if s_getSceneVar(sid, 14, 1) == 5 then
			if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
				s_addItem(uid,28001,0,8,0,"1-1","双倍状态奖励翻倍")
			end
			s_addItem(uid,28001,0,4,0,"1-1","事件3奖励")
		end
	end
	s_setSceneVar(sid, 14, 1, 0)
	s_setSceneVar(sid, 4, 4, 3)
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
	ShowNpcMenuByTable(uid,self)
end

--事件12（召唤1种npc，击败后均可完成事件,需击败8个）
function NpcMenuInfo262:DealMenu12(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSY)
	s_setSceneVar(sid, 15, 1, 0)
	s_copySummonNpcToKill(uid, 60, customid, sid, {24003,8,posx+3,posy+3,103,0,15,1,8})
	s_setSceneVar(sid, 4, 4, 1)
	s_copySmile(uid, 60, customid, sid, {23})
end

function NpcMenuInfo262:DealFinish12(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 4) ~= 2 then
		s_messageBox(uid,"事件还没有完成！")
		return
	end
	--获取奖励
	if eventid == 12 then
		if s_getSceneVar(sid, 15, 1) == 8 then
			if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
				s_addItem(uid,28001,0,8,0,"1-1","双倍状态奖励翻倍")
			end
			s_addItem(uid,28001,0,4,0,"1-1","事件3奖励")
		end
	end
	s_setSceneVar(sid, 15, 1, 0)
	s_setSceneVar(sid, 4, 4, 3)
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
	ShowNpcMenuByTable(uid,self)
end

--事件13（召唤1种npc，击败后均可完成事件,需击败10个）
function NpcMenuInfo262:DealMenu13(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSY)
	s_setSceneVar(sid, 16, 1, 0)
	s_copySummonNpcToKill(uid, 60, customid, sid, {24004,10,posx+3,posy+3,103,0,16,1,10})
	s_setSceneVar(sid, 4, 4, 1)
end

function NpcMenuInfo262:DealFinish13(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 4) ~= 2 then
		s_messageBox(uid,"事件还没有完成！")
		return
	end
	--获取奖励
	if eventid == 13 then
		if s_getSceneVar(sid, 16, 1) == 10 then
			if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
				s_addItem(uid,28001,0,16,0,"1-1","双倍状态奖励翻倍")
			end
			s_addItem(uid,28001,0,8,0,"1-1","事件3奖励")
		end
	end
	s_setSceneVar(sid, 16, 1, 0)
	s_setSceneVar(sid, 4, 4, 3)
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
	ShowNpcMenuByTable(uid,self)
end

--事件14（召唤1种npc，击败后均可完成事件,需击败15个）
function NpcMenuInfo262:DealMenu14(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSY)
	s_setSceneVar(sid, 17, 1, 0)
	s_copySummonNpcToKill(uid, 60, customid, sid, {24005,15,posx+3,posy+3,103,0,17,1,15})
	s_setSceneVar(sid, 4, 4, 1)
	s_copySmile(uid, 60, customid, sid, {23})
end

function NpcMenuInfo262:DealFinish14(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 4) ~= 2 then
		s_messageBox(uid,"事件还没有完成！")
		return
	end
	--获取奖励
	if eventid == 14 then
		if s_getSceneVar(sid, 17, 1) == 15 then
			if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
				s_addItem(uid,28001,0,16,0,"1-1","双倍状态奖励翻倍")
			end
			s_addItem(uid,28001,0,8,0,"1-1","事件3奖励")
		end
	end
	s_setSceneVar(sid, 17, 1, 0)
	s_setSceneVar(sid, 4, 4, 3)
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
	ShowNpcMenuByTable(uid,self)
end

--事件15（召唤1种npc，击败后均可完成事件,需击败3个）
function NpcMenuInfo262:DealMenu15(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSY)
	s_setSceneVar(sid, 18, 1, 0)
	s_copySummonNpcToKill(uid, 60, customid, sid, {24006,3,posx+3,posy+3,103,0,18,1,3})
	s_setSceneVar(sid, 4, 4, 1)
	s_copySmile(uid, 60, customid, sid, {1})
end

function NpcMenuInfo262:DealFinish15(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 4) ~= 2 then
		s_messageBox(uid,"事件还没有完成！")
		return
	end
	--获取奖励
	if eventid == 15 then
		if s_getSceneVar(sid, 18, 1) == 3 then
			if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
				s_addItem(uid,28001,0,24,0,"1-1","双倍状态奖励翻倍")
			end
			s_addItem(uid,28001,0,12,0,"1-1","事件3奖励")
		end
	end
	s_setSceneVar(sid, 18, 1, 0)
	s_setSceneVar(sid, 4, 4, 3)
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
	ShowNpcMenuByTable(uid,self)
end

--事件16（召唤1种npc，击败后均可完成事件,需击败2个）
function NpcMenuInfo262:DealMenu16(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSY)
	s_setSceneVar(sid, 19, 1, 0)
	s_copySummonNpcToKill(uid, 60, customid, sid, {24007,2,posx+3,posy+3,103,0,19,1,2})
	s_setSceneVar(sid, 4, 4, 1)
end

function NpcMenuInfo262:DealFinish16(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 4) ~= 2 then
		s_messageBox(uid,"事件还没有完成！")
		return
	end
	--获取奖励
	if eventid == 16 then
		if s_getSceneVar(sid, 19, 1) == 2 then
			if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
				s_addItem(uid,28001,0,32,0,"1-1","双倍状态奖励翻倍")
			end
			s_addItem(uid,28001,0,16,0,"1-1","事件3奖励")
		end
	end
	s_setSceneVar(sid, 19, 1, 0)
	s_setSceneVar(sid, 4, 4, 3)
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
	ShowNpcMenuByTable(uid,self)
end

--事件17（召唤1种npc，击败后均可完成事件,需击败1个）
function NpcMenuInfo262:DealMenu17(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSY)
	s_setSceneVar(sid, 20, 1, 0)
	s_copySummonNpcToKill(uid, 60, customid, sid, {24012,1,posx+3,posy+3,103,0,20,1,1})
	s_setSceneVar(sid, 4, 4, 1)
	s_copySmile(uid, 60, customid, sid, {23})
end

function NpcMenuInfo262:DealFinish17(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 4) ~= 2 then
		s_messageBox(uid,"事件还没有完成！")
		return
	end
	--获取奖励
	if eventid == 17 then
		if s_getSceneVar(sid, 20, 1) == 1 then
			if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
				s_addItem(uid,28001,0,40,0,"1-1","双倍状态奖励翻倍")
			end
			s_addItem(uid,28001,0,20,0,"1-1","事件3奖励")
		end
	end
	s_setSceneVar(sid, 20, 1, 0)
	s_setSceneVar(sid, 4, 4, 3)
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
	ShowNpcMenuByTable(uid,self)
end

--事件18（召唤3种npc，击败后均可完成事件，只有击败特定NPC可获得奖励）
function NpcMenuInfo262:DealMenu18(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSY)
	s_setSceneVar(sid, 21, 1, 0)
	s_setSceneVar(sid, 21, 2, 0)
	s_copySummonNpcToKill(uid, 60, customid, sid, {24010,1,posx+3,posy+3,103,0,21,1,1})
	s_copySummonNpcToKill(uid, 60, customid, sid, {24011,1,posx+3,posy+3,103,0,21,2,1})
	s_copySummonNpcToKill(uid, 60, customid, sid, {24011,1,posx+3,posy+3,103,0,21,2,1})
	s_setSceneVar(sid, 4, 4, 1)
end

function NpcMenuInfo262:DealFinish18(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 4) ~= 2 then
		s_messageBox(uid,"事件还没有完成！")
		return
	end
	--获取奖励
	if eventid == 18 then
		if s_getSceneVar(sid, 21, 1) == 1 then
			if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
				s_addItem(uid,28001,0,24,0,"1-1","双倍状态奖励翻倍")
			end
			s_addItem(uid,28001,0,12,0,"1-1","事件3奖励")
		end
	end
	s_setSceneVar(sid, 21, 1, 0)
	s_setSceneVar(sid, 21, 2, 0)
	s_setSceneVar(sid, 4, 4, 3)
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
	ShowNpcMenuByTable(uid,self)
end

--事件19（翻牌不扣除故事书，赢取奖励 胜利奖励16本，30%几率）
function NpcMenuInfo262:DealMenu19(uid, eventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local gc = GuessCard:Start(uid,"","<p><n>  敢和精通翻牌的我比大小吗？</n><newline/><n>  赢：获得16本“故事书”道具</n><newline/><n>  输：不损失“故事书”！</n></p>",2)
	local call = Call:New(uid,nil,CopyEventGuessBox40,{})
	gc:registerOverEvent(call)
	s_setSceneVar(sid, 4, 4, 3)
end

function CopyEventGuessBox40(uid,param,param_ext)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
    if param_ext ~= nil and param_ext[1] ~= nil and param_ext[1] > 0 then --赢
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
			s_addItem(uid,28001,0,32,0,"1-1","双倍状态奖励翻倍")
		end
	    s_addItem(uid,28001,0,16,0,"1-1","事件19奖励",0)
		s_copySmile(uid, 60, customid, sid, {9})
		s_setSceneVar(sid, 22, 1, 0)
	else--if ret > 0 then --输
		s_copySmile(uid, 60, customid, sid, {12})
		s_setSceneVar(sid, 22, 1, 0)
	end
end

--事件20（召唤采集NPC）
function NpcMenuInfo262:DealMenu20(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local posx = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_POSY)
	s_setSceneVar(sid, 23, 1, 0)
	s_copySummonNpc(uid, 60, customid, sid,{60190, 3, posx+5, posy+5, 100, 0})
	s_setSceneVar(sid, 4, 4, 1)
end

function NpcMenuInfo262:DealFinish20(uid, eventid)
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_checkItem(uid,31552,3) ~= VALUE_OK then
		s_messageBox(uid,"小麦数量不足3个，请继续采集")
		s_sysInfo(uid,"小麦数量不足3个")
		return VALUE_FAIL
	end
	if s_deleteItemByBaseID(uid,31552,3,"事件20扣除")~= VALUE_OK then
		s_sysInfo(uid,"扣除道具失败")
		return VALUE_FAIL
	end
	s_setSceneVar(sid, 23, 1, 3)
	s_setSceneVar(sid, 4, 4, 2)
	--获取奖励
	if eventid == 20 then
		if s_getSceneVar(sid, 23, 1) == 3 then
			if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,140) ~= 0 then
				s_addItem(uid,28001,0,24,0,"1-1","双倍状态奖励翻倍")
			end
			s_addItem(uid,28001,0,12,0,"1-1","事件20奖励")
		end
	end
	s_copySmile(uid, 60, customid, sid, {19})
	s_setSceneVar(sid, 23, 1, 0)
	s_setSceneVar(sid, 4, 4, 3)
	s_copyInfo(sid, "这层完成，奖励发放！请去随机下一层！")
	ShowNpcMenuByTable(uid,self)
end

--随机进入房间
function NpcMenuInfo262:ShowRandom0(uid)
	if CheckCopyLunHuiDouble(uid) == VALUE_FAIL then return VALUE_FAIL end
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 4) ~= 3 then return VALUE_FAIL end
	if s_getSceneVar(sid, 4, 2) > 0 then return VALUE_FAIL end
	local times = s_getSceneVar(sid, 4, 3)
	if times >= CopySceneInfo_2004.maxtimes then return VALUE_FAIL	end
	if times >= CopySceneInfo_2005.maxtimes then return VALUE_FAIL	end
	if times >= CopySceneInfo_2006.maxtimes then return VALUE_FAIL	end
	if times >= CopySceneInfo_2007.maxtimes then return VALUE_FAIL	end
	if times >= CopySceneInfo_2008.maxtimes then return VALUE_FAIL	end
	if times >= CopySceneInfo_2009.maxtimes then return VALUE_FAIL	end
	if times >= CopySceneInfo_2010.maxtimes then return VALUE_FAIL	end
	if times >= CopySceneInfo_2011.maxtimes then return VALUE_FAIL	end
	if times >= CopySceneInfo_2012.maxtimes then return VALUE_FAIL	end
	return VALUE_OK
end

function NpcMenuInfo262:DealRandom0(uid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local times = s_getSceneVar(sid, 4, 3)
	if times <= 3 then
		if s_checkItem(uid,28000,4) ~= VALUE_OK then
			s_messageBox(uid,"生命的时钟不够，无法进入下一层")
			s_sysInfo(uid,"<p><n>1-3次，需消耗4个生命时钟道具才可进入下一层。</n><store id='1' tabid='0' text='立即购买' treeid='1'/></p>")
			return VALUE_FAIL
		end
		s_deleteItemByBaseID(uid,28000,4,"前3层进入")
		s_sysInfo(uid,"<p><n>消耗4个生命时钟，你感觉时光在流逝，具备了前进的力量。</n></p>")
	elseif times > 3 and times <= 6 then
		if s_checkItem(uid,28000,5) ~= VALUE_OK then
			s_messageBox(uid,"生命的时钟不够，无法进入下一层")
			s_sysInfo(uid,"<p><n>4-6次，需消耗5个生命时钟道具才可进入下一层。</n><store id='1' tabid='0' text='立即购买' treeid='1'/></p>")
			return VALUE_FAIL
		end
		s_deleteItemByBaseID(uid,28000,5,"4-6层进入")
		s_sysInfo(uid,"<p><n>消耗5个生命时钟，你感觉时光在流逝，具备了前进的力量。</n></p>")
	elseif times > 6 and times <= 9 then
		if s_checkItem(uid,28000,6) ~= VALUE_OK then
			s_messageBox(uid,"生命的时钟不够，无法进入下一层")
			s_sysInfo(uid,"<p><n>6-9次，需消耗6个生命时钟道具才可进入下一层。</n><store id='1' tabid='0' text='立即购买' treeid='1'/></p>")
			return VALUE_FAIL
		end
		s_deleteItemByBaseID(uid,28000,6,"7-9层进入")
		s_sysInfo(uid,"<p><n>消耗6个生命时钟，你感觉时光在流逝，具备了前进的力量。</n></p>")
	elseif times > 9 and times <= 12 then
		if s_checkItem(uid,28000,7) ~= VALUE_OK then
			s_messageBox(uid,"生命的时钟不够，无法进入下一层")
			s_sysInfo(uid,"<p><n>9-12次，需消耗7个生命时钟道具才可进入下一层。</n><store id='1' tabid='0' text='立即购买' treeid='1'/></p>")
			return VALUE_FAIL
		end
		s_deleteItemByBaseID(uid,28000,7,"10-12层进入")
		s_sysInfo(uid,"<p><n>消耗7个生命时钟，你感觉时光在流逝，具备了前进的力量。</n></p>")
	elseif times > 12 and times <= 15 then
		if s_checkItem(uid,28000,8) ~= VALUE_OK then
			s_messageBox(uid,"生命的时钟不够，无法进入下一层")
			s_sysInfo(uid,"<p><n>13-15次，需消耗8个生命时钟道具才可进入下一层。</n><store id='1' tabid='0' text='立即购买' treeid='1'/></p>")
			return VALUE_FAIL
		end
		s_deleteItemByBaseID(uid,28000,8,"13-15层进入")
		s_sysInfo(uid,"<p><n>消耗8个生命时钟，你感觉时光在流逝，具备了前进的力量。</n></p>")
	elseif times > 15 and times <= 18 then
		if s_checkItem(uid,28000,9) ~= VALUE_OK then
			s_messageBox(uid,"生命的时钟不够，无法进入下一层")
			s_sysInfo(uid,"<p><n>16-18次，需消耗9个生命时钟道具才可进入下一层。</n><store id='1' tabid='0' text='立即购买' treeid='1'/></p>")
			return VALUE_FAIL
		end
		s_deleteItemByBaseID(uid,28000,9,"16-18层进入")
		s_sysInfo(uid,"<p><n>消耗9个生命时钟，你感觉时光在流逝，具备了前进的力量。</n></p>")
	elseif times > 18 and times <= 21 then
		if s_checkItem(uid,28000,10) ~= VALUE_OK then
			s_messageBox(uid,"生命的时钟不够，无法进入下一层")
			s_sysInfo(uid,"<p><n>19-21次，需消耗10个生命时钟道具才可进入下一层。</n><store id='1' tabid='0' text='立即购买' treeid='1'/></p>")
			return VALUE_FAIL
		end
		s_deleteItemByBaseID(uid,28000,10,"19-21层进入")
		s_sysInfo(uid,"<p><n>消耗10个生命时钟，你感觉时光在流逝，具备了前进的力量。</n></p>")
	elseif times > 21 and times <= 24 then
		if s_checkItem(uid,28000,12) ~= VALUE_OK then
			s_messageBox(uid,"生命的时钟不够，无法进入下一层")
			s_sysInfo(uid,"<p><n>22-24次，需消耗12个生命时钟道具才可进入下一层。</n><store id='1' tabid='0' text='立即购买' treeid='1'/></p>")
			return VALUE_FAIL
		end
		s_deleteItemByBaseID(uid,28000,12,"21-24层进入")
		s_sysInfo(uid,"<p><n>消耗12个生命时钟，你感觉时光在流逝，具备了前进的力量。</n></p>")
	elseif times > 24 and times <= 27 then
		if s_checkItem(uid,28000,14) ~= VALUE_OK then
			s_messageBox(uid,"生命的时钟不够，无法进入下一层")
			s_sysInfo(uid,"<p><n>24-27次，需消耗14个生命时钟道具才可进入下一层。</n><store id='1' tabid='0' text='立即购买' treeid='1'/></p>")
			return VALUE_FAIL
		end
		s_deleteItemByBaseID(uid,28000,14,"24-27层进入")
		s_sysInfo(uid,"<p><n>消耗14个生命时钟，你感觉时光在流逝，具备了前进的力量。</n></p>")
	elseif times > 27 then
		if s_checkItem(uid,28000,16) ~= VALUE_OK then
			s_messageBox(uid,"生命的时钟不够，无法进入下一层")
			s_sysInfo(uid,"<p><n>27次以上，需消耗16个生命时钟道具才可进入下一层。</n><store id='1' tabid='0' text='立即购买' treeid='1'/></p>")
			return VALUE_FAIL
		end
		s_deleteItemByBaseID(uid,28000,16,"27层以上")
		s_sysInfo(uid,"<p><n>消耗16个生命时钟，你感觉时光在流逝，具备了前进的力量。</n></p>")
	end
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	local zoneid = s_getSceneVar(sid, 4, 1)
	local rand = math.random(1, 5)
	local nextzoneid = zoneid + rand
	local customid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_CUSTOMCOPYID)
	if customid == 2004 then
		if nextzoneid > CopySceneInfo_2004.maxzone then
			nextzoneid = nextzoneid - CopySceneInfo_2004.maxzone
		end
	elseif customid == 2005 then
			if nextzoneid > CopySceneInfo_2005.maxzone then
			nextzoneid = nextzoneid - CopySceneInfo_2005.maxzone
		end
	elseif customid == 2006 then
			if nextzoneid > CopySceneInfo_2006.maxzone then
			nextzoneid = nextzoneid - CopySceneInfo_2006.maxzone
		end
	elseif customid == 2007 then
			if nextzoneid > CopySceneInfo_2007.maxzone then
			nextzoneid = nextzoneid - CopySceneInfo_2007.maxzone
		end
	elseif customid == 2008 then
			if nextzoneid > CopySceneInfo_2008.maxzone then
			nextzoneid = nextzoneid - CopySceneInfo_2008.maxzone
		end
	elseif customid == 2009 then
			if nextzoneid > CopySceneInfo_2009.maxzone then
			nextzoneid = nextzoneid - CopySceneInfo_2009.maxzone
		end
	elseif customid == 2010 then
			if nextzoneid > CopySceneInfo_2010.maxzone then
			nextzoneid = nextzoneid - CopySceneInfo_2010.maxzone
		end
	elseif customid == 2011 then
			if nextzoneid > CopySceneInfo_2011.maxzone then
			nextzoneid = nextzoneid - CopySceneInfo_2011.maxzone
		end
	elseif customid == 2012 then
			if nextzoneid > CopySceneInfo_2012.maxzone then
			nextzoneid = nextzoneid - CopySceneInfo_2012.maxzone
		end
	end
	s_copyInfo(sid, "当前层" .. zoneid ..  ",随机数" .. rand .. ", 下一层" .. nextzoneid .."。剩余次数："..30-times )
	s_setSceneVar(sid, 4, 2, nextzoneid)
	s_copyAddBuff(uid, 60, customid, sid, {5018, 0, 5, 0})
	ShowNpcMenuByTable(uid,self)
end

--下个故事
function NpcMenuInfo262:ShowNext0(uid, cureventid)
	if CheckCopyLunHuiDouble(uid) == VALUE_FAIL then return VALUE_FAIL end
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	if s_getSceneVar(sid, 4, 2) == 0 then return VALUE_FAIL end
	if s_getSceneVar(sid, 1, cureventid) == 1 then return VALUE_OK end
	return VALUE_FAIL
end

function NpcMenuInfo262:DealNext0(uid, cureventid)
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	s_setSceneVar(sid, 1, cureventid, 0)
	CopySceneInfo_2004:ClearNpc(sid)
	CopySceneInfo_2005:ClearNpc(sid)
	CopySceneInfo_2006:ClearNpc(sid)
	CopySceneInfo_2007:ClearNpc(sid)
	CopySceneInfo_2008:ClearNpc(sid)
	CopySceneInfo_2009:ClearNpc(sid)
	CopySceneInfo_2010:ClearNpc(sid)
	CopySceneInfo_2011:ClearNpc(sid)
	CopySceneInfo_2012:ClearNpc(sid)
	local nextzoneid = s_getSceneVar(sid, 4, 2)
	s_setSceneVar(sid, 4, 2, 0)
	CopySceneInfo_2004:InitZone(sid, uid, nextzoneid)
end

--离开副本
function NpcMenuInfo262:ShowLeave0(uid)
	if CheckCopyLunHuiDouble(uid) == VALUE_FAIL then return VALUE_FAIL end
	return VALUE_OK
end

function NpcMenuInfo262:DealLeave0(uid)
	local msg = "您确定要离开副本吗？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "NpcMenuInfo262:DealLeaveCopy($1,$2,$3)"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function NpcMenuInfo262:DealLeaveCopy(uid,result,baseid)
	if result ~= Button_Yes then
		return
	end
	local sid = s_getValue(SCENE_ENTRY_PLAYER, uid, VALUE_TYPE_SCENE_ID)
	s_clearCopy(sid)
	s_setSceneVar(sid, 24, 1, 0)
end

--npc对话选项与262相同（对话内容在npc对话表中配置）
NpcMenuInfo263	= { button = NpcMenuInfo262.button,}
NpcMenuInfo264	= { button = NpcMenuInfo262.button,}
NpcMenuInfo265 	= { button = NpcMenuInfo262.button,}
NpcMenuInfo266	= { button = NpcMenuInfo262.button,}
NpcMenuInfo267	= { button = NpcMenuInfo262.button,}
NpcMenuInfo268	= { button = NpcMenuInfo262.button,}
NpcMenuInfo269	= { button = NpcMenuInfo262.button,}
NpcMenuInfo270	= { button = NpcMenuInfo262.button,}
NpcMenuInfo271	= { button = NpcMenuInfo262.button,}
NpcMenuInfo272	= { button = NpcMenuInfo262.button,}
NpcMenuInfo273	= { button = NpcMenuInfo262.button,}
NpcMenuInfo274	= { button = NpcMenuInfo262.button,}
NpcMenuInfo275	= { button = NpcMenuInfo262.button,}
NpcMenuInfo276	= { button = NpcMenuInfo262.button,}
NpcMenuInfo277	= { button = NpcMenuInfo262.button,}
NpcMenuInfo278	= { button = NpcMenuInfo262.button,}
NpcMenuInfo279	= { button = NpcMenuInfo262.button,}
NpcMenuInfo280	= { button = NpcMenuInfo262.button,}
NpcMenuInfo281	= { button = NpcMenuInfo262.button,}
NpcMenuInfo282	= { button = NpcMenuInfo262.button,}
NpcMenuInfo283	= { button = NpcMenuInfo262.button,}
NpcMenuInfo284	= { button = NpcMenuInfo262.button,}
NpcMenuInfo285	= { button = NpcMenuInfo262.button,}
NpcMenuInfo286	= { button = NpcMenuInfo262.button,}
]]
