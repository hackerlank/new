function OnUseItemEventFootball(uid, thisid, country, item1, item2)
	--使用道具
	if s_deleteItemByThisID(uid,thisid,1, country .. "球迷礼包") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	if sex == 1 then
		s_addItem(uid,item1,0,1,1,"1-1,7-0,3-604800",country .. "球迷礼包")
	else
		s_addItem(uid,item2,0,1,1,"1-1,7-0,3-604800",country .. "球迷礼包")
	end
	s_addItem(uid,26102,0,10,1,"1-1",country .. "球迷礼包")
	s_addItem(uid,26149,0,1,1,"1-1,2-3",country .. "球迷礼包")
	s_addItem(uid,29026,0,30,1,"1-1",country .. "球迷礼包")
	s_addItem(uid,29535,0,1,1,"1-1",country .. "球迷礼包")
	s_sysInfo(uid,"<p><n>恭喜您获得" .. country .. "球衣一件</n></p>",ChatPos_Sys + ChatPos_Important)
	s_worldInfo("<p><q buttonid='6005' ownerid='".. uid .."'>" .. name .. "</q><n color='GXColorBlueSky'>购买了" .. country .. "球迷礼包，享受专属聊天标志、球队时装，还可竞猜赚银币。</n><store id='2' tabid='0' text='马上参与' treeid='24'/></p>",ChatPos_Sys + ChatPos_Honor)
	return VALUE_OK
end

function OnUseItemEvent_34147(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "意大利"	,20212	,20228	)	end
function OnUseItemEvent_34148(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "爱尔兰"	,20213	,20229	)	end
function OnUseItemEvent_34149(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "法国"	,20214	,20230	)	end
function OnUseItemEvent_34150(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "波兰"	,20215	,20231	)	end
function OnUseItemEvent_34151(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "英格兰"	,20216	,20232	)	end
function OnUseItemEvent_34152(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "乌克兰"	,20217	,20233	)	end
function OnUseItemEvent_34153(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "捷克"	,20218	,20234	)	end
function OnUseItemEvent_34154(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "俄罗斯"	,20219	,20235	)	end
function OnUseItemEvent_34155(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "荷兰"	,20220	,20236	)	end
function OnUseItemEvent_34156(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "葡萄牙"	,20221	,20237	)	end
function OnUseItemEvent_34157(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "克罗地亚"	,20222	,20238	)	end
function OnUseItemEvent_34158(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "西班牙"	,20223	,20239	)	end
function OnUseItemEvent_34159(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "希腊"	,20224	,20240	)	end
function OnUseItemEvent_34160(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "瑞典"	,20225	,20241	)	end
function OnUseItemEvent_34161(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "丹麦"	,20226	,20242	)	end
function OnUseItemEvent_34162(uid,thisid)	return OnUseItemEventFootball(uid, thisid, "德国"	,20227	,20243	)	end
