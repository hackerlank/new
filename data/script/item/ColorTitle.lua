--头顶彩色称号获得
function OnUseItemEventColorTitle(uid,thisid,title,buffid,bufftime)
	if s_deleteItemByThisID(uid,thisid,1, title .. "使用") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_removebuff(SCENE_ENTRY_PLAYER,uid,buffid)
	s_addbuff(SCENE_ENTRY_PLAYER,uid,buffid,1,bufftime)
	return VALUE_OK
end

function OnUseItemEvent_55075(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "最帅男子"	,20260	,1555200)	end
function OnUseItemEvent_55076(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "白马王子"	,20261	,1555200)	end
function OnUseItemEvent_55077(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "风样男子"	,20262	,1555200)	end
function OnUseItemEvent_55078(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "最美女子"	,20263	,1555200)	end
function OnUseItemEvent_55079(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "魅力公主"	,20264	,1555200)	end
function OnUseItemEvent_55080(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "花样女子"	,20265	,1555200)	end
function OnUseItemEvent_55081(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "大众情人"	,20266	,1555200)	end
function OnUseItemEvent_55108(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "大帝"	    ,20274	,604800	)	end
function OnUseItemEvent_55116(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "一骑绝尘"	,20286	,604800	)	end
function OnUseItemEvent_55117(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "大杀四方"	,20287	,604800	)	end
function OnUseItemEvent_55118(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "名扬四海"	,20288	,604800	)	end
function OnUseItemEvent_55119(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "孤独求败"	,20289	,604800	)	end
--排行榜奖励称号
function OnUseItemEvent_55125(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "战士之王" ,20276	,518400	)	end
function OnUseItemEvent_55126(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "刺客之王"	,20277	,518400	)	end
function OnUseItemEvent_55127(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "枪手之王"	,20278	,518400	)	end
function OnUseItemEvent_55128(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "魔炮之王"	,20279	,518400	)	end
function OnUseItemEvent_55129(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "牧师之王"	,20284	,518400	)	end
function OnUseItemEvent_55130(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "法师之王" ,20285	,518400	)	end
function OnUseItemEvent_55131(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "风国战神"	,20290	,518400	)	end
function OnUseItemEvent_55132(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "水国战神"	,20291	,518400	)	end
function OnUseItemEvent_55133(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "火国战神"	,20292	,518400	)	end
function OnUseItemEvent_55134(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "沙国战神"	,20293	,518400	)	end
function OnUseItemEvent_55135(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "花国战神"	,20294	,518400	)	end
function OnUseItemEvent_55136(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "天国战神"	,20295	,518400	)	end
function OnUseItemEvent_55137(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "富甲天下"	,20296	,518400	)	end
function OnUseItemEvent_55138(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "白马王子"	,20297	,518400	)	end
function OnUseItemEvent_55139(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "风样男子"	,20298	,518400	)	end
function OnUseItemEvent_55140(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "大众情人"	,20299	,518400	)	end
function OnUseItemEvent_55141(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "魅力公主"	,20366	,518400	)	end
function OnUseItemEvent_55142(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "花样女子"	,20367	,518400	)	end
function OnUseItemEvent_55143(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "大众情人"	,20368	,518400	)	end
--新手称号
function OnUseItemEvent_55175(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "猛将"	,20374	,900	)	end
function OnUseItemEvent_55176(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "虎将"	,20375	,900	)	end
function OnUseItemEvent_55177(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "龙将"	,20376	,900	)	end
function OnUseItemEvent_55178(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "名将"	,20377	,900	)	end
function OnUseItemEvent_55179(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "神将"	,20378	,900	)	end
--九天夺宝称号
function OnUseItemEvent_55190(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "小有名气"	,20379	,259200	)	end
function OnUseItemEvent_55191(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "名声大振"	,20380	,259200	)	end
function OnUseItemEvent_55192(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "大名鼎鼎"	,20381	,259200	)	end
function OnUseItemEvent_55193(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "如雷贯耳"	,20382	,1296000	)	end
function OnUseItemEvent_55194(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "远近闻名"	,20383	,1296000	)	end
function OnUseItemEvent_55195(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "家喻户晓"	,20384	,1296000	)	end
function OnUseItemEvent_55196(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "威名远扬"	,20385	,1296000	)	end
function OnUseItemEvent_55197(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "闻名遐迩"	,20386	,1296000	)	end
function OnUseItemEvent_55198(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "声名显赫"	,20387	,1296000	)	end
--3vs3无双擂台赛
function OnUseItemEvent_55220(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "举世无双"	,20388	,604800	)	end
function OnUseItemEvent_55221(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "登峰造极"	,20389	,604800	)	end
function OnUseItemEvent_55222(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "技压群雄"	,20390	,604800	)	end
function OnUseItemEvent_55223(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "出类拔萃"	,20391	,604800	)	end
function OnUseItemEvent_55224(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "擂主"	,20392	,172800	)	end
--新加buff
function OnUseItemEvent_63376(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "英俊潇洒"	,41122	,2592000	)	end
--万圣节限定称号
function OnUseItemEvent_55238(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "万圣之夜"	,20397	,259200	)	end
--圣诞节限定称号
function OnUseItemEvent_55246(uid,thisid)
	local pass = true
	if  s_getbuffnum(SCENE_ENTRY_PLAYER,uid,20398) ~= 0 then
		pass = false
	end
	if pass == false then
		s_sysInfo(uid,"您身上已经有了称号BUFF了哦~只有没有称号BUFF的时候才可以使用")
		return
	end
	return
		OnUseItemEventColorTitle(uid, thisid, "万王之王"	,20398	,8640000 )
end
--vip1
function OnUseItemEvent_63026(uid,thisid)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20524) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20524)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20525) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20525)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20526) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20526)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20527) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20527)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20528) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20528)
	end
	return
		OnUseItemEventColorTitle(uid, thisid, "VIP1玩家"	,20524	,2592000 )
end
--vip2
function OnUseItemEvent_63027(uid,thisid)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20524) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20524)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20525) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20525)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20526) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20526)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20527) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20527)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20528) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20528)
	end
	return
		OnUseItemEventColorTitle(uid, thisid, "VIP2玩家"	,20525	,2592000 )
end
--vip3
function OnUseItemEvent_63028(uid,thisid)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20524) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20524)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20525) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20525)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20526) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20526)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20527) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20527)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20528) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20528)
	end
	return
		OnUseItemEventColorTitle(uid, thisid, "VIP3玩家"	,20526	,2592000 )
end
--vip4
function OnUseItemEvent_63029(uid,thisid)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20524) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20524)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20525) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20525)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20526) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20526)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20527) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20527)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20528) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20528)
	end
	return
		OnUseItemEventColorTitle(uid, thisid, "VIP4玩家"	,20527	,2592000 )
end
--vip5
function OnUseItemEvent_63030(uid,thisid)
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20524) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20524)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20525) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20525)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20526) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20526)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20527) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20527)
	end
	if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,20528) ~= 0 then
		s_removebuff(SCENE_ENTRY_PLAYER,uid,20528)
	end
	return
		OnUseItemEventColorTitle(uid, thisid, "VIP5玩家"	,20528	,2592000 )
end

function OnUseItemEvent_63056(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "论坛达人"	,41117	,2592000	)	end
function OnUseItemEvent_63057(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "天生丽质"	,41118	,2592000	)	end
function OnUseItemEvent_63058(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "天生型男"	,41119	,2592000	)	end
function OnUseItemEvent_63059(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "先驱者"	,41120	,2592000    )	end
function OnUseItemEvent_63054(uid,thisid)	return OnUseItemEventColorTitle(uid, thisid, "先驱者"	,41121	,2592000    )	end
