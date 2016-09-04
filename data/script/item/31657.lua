
--喵喵的行踪(3张图)
function OnUseItemEvent_31658(uid,thisid,targetid)
	local fun = "OnUseItemEvent_Callback_31658("..uid..","..thisid..")"
	s_showbar(uid,5000,fun,UninterruptActionType_None,1)
	return VALUE_OK
end

function OnUseItemEvent_Callback_31658(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") == VALUE_FAIL then
		return VALUE_FAIL
	end
	x = math.random(1,100)
	if x <= 10 then
		s_addItem(uid,31660,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31661,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31662,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 20 then
		s_addItem(uid,31663,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31670,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31680,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 30 then
		s_addItem(uid,31663,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31671,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31682,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 40 then
		s_addItem(uid,31664,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31673,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31683,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 50 then
		s_addItem(uid,31665,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31674,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31684,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 60 then
		s_addItem(uid,31666,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31675,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31685,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 70 then
		s_addItem(uid,31667,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31676,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31686,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 80 then
		s_addItem(uid,31662,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31677,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31676 ,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 90 then
		s_addItem(uid,31661,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31665,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31673 ,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 100 then
		s_addItem(uid,31662,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31666,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31683 ,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
end

--喵喵的行踪(4张图)
function OnUseItemEvent_31657(uid,thisid,targetid)
	local fun = "OnUseItemEvent_Callback_31657("..uid..","..thisid..")"
	s_showbar(uid,5000,fun,UninterruptActionType_None,1)
	return VALUE_OK
end

function OnUseItemEvent_Callback_31657(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") == VALUE_FAIL then
		return VALUE_FAIL
	end
	x = math.random(1,100)
	if x <= 10 then
		s_addItem(uid,31660,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31661,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31662,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31667,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 20 then
		s_addItem(uid,31663,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31670,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31680,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31681,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 30 then
		s_addItem(uid,31671,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31672,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31665,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31682,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 40 then
		s_addItem(uid,31664,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31673,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31677,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31683,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 50 then
		s_addItem(uid,31663,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31665,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31674,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31684,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 60 then
		s_addItem(uid,31666,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31675,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31684,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31685,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 70 then
		s_addItem(uid,31667,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31676,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31675,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31686,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 80 then
		s_addItem(uid,31667,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31687,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31676,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31677,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 90 then
		s_addItem(uid,31665,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31664,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31662,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31677,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
	if x <= 100 then
		s_addItem(uid,31661,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31667,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31676,0,1,0,"1-1","OnUseItemEvent_31657")
		s_addItem(uid,31663,0,1,0,"1-1","OnUseItemEvent_31657")
		return
	end
end

--藏宝图配置
function CangBaoTu(uid,thisid,map,x,y,item,num)
	local mapid = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	local posx = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local posy = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
	if mapid ~= map then
		s_sysInfo(uid,"<p><n>在这个地方看来是找不到他的！需前往</n><goto pos="..x..","..y.." mapid="..map.."/></p>",ChatPos_Sys + ChatPos_Important)
		return
	end
	if math.abs(posx - x) > 2 or math.abs(posy - y) > 2 then
		s_sysInfo(uid,"<p><n>好像还有不少距离啊！需前往</n><goto pos="..x..","..y.." mapid="..map.."/></p>",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") == VALUE_FAIL then
		return VALUE_FAIL
	end
	z = math.random(1,3)
	if z == 1 then
		s_playClientLua(uid, 4)
	elseif z == 2 then
		s_playClientLua(uid, 6)
	else
		s_playClientLua(uid, 7)
	end
	s_addItem(uid,31653 ,0,1,0,"1-1","使用藏宝图")
	s_addItem(uid,item ,0,num,0,"1-1","使用藏宝图")
	return VALUE_OK
end

--藏宝图奖励配置（地图，X坐标，Y坐标，奖励内容，数量）
function OnUseItemEvent_31660(uid,thisid)	return CangBaoTu(uid, thisid,5,378,181,31650,1)end
function OnUseItemEvent_31661(uid,thisid)   return CangBaoTu(uid, thisid,5,686,625,31650,1)end
function OnUseItemEvent_31662(uid,thisid)   return CangBaoTu(uid, thisid,5,674,174,31650,1)end
function OnUseItemEvent_31663(uid,thisid)   return CangBaoTu(uid, thisid,6,458,128,31650,1)end
function OnUseItemEvent_31664(uid,thisid)   return CangBaoTu(uid, thisid,6,155,146,31650,1)end
function OnUseItemEvent_31665(uid,thisid)   return CangBaoTu(uid, thisid,7,259,197,31650,1)end
function OnUseItemEvent_31666(uid,thisid)   return CangBaoTu(uid, thisid,7,518,322,31650,1)end
function OnUseItemEvent_31667(uid,thisid)   return CangBaoTu(uid, thisid,7,693,385,31650,1)end
function OnUseItemEvent_31670(uid,thisid)   return CangBaoTu(uid, thisid,5,376,330,31651,1)end
function OnUseItemEvent_31671(uid,thisid)   return CangBaoTu(uid, thisid,5,57,622,31651,1)end
function OnUseItemEvent_31672(uid,thisid)   return CangBaoTu(uid, thisid,5,328,504,31651,1)end
function OnUseItemEvent_31673(uid,thisid)   return CangBaoTu(uid, thisid,6,298,252,31651,1)end
function OnUseItemEvent_31674(uid,thisid)   return CangBaoTu(uid, thisid,6,256,284,31651,1)end
function OnUseItemEvent_31675(uid,thisid)   return CangBaoTu(uid, thisid,7,311,504,31651,1)end
function OnUseItemEvent_31676(uid,thisid)   return CangBaoTu(uid, thisid,7,550,636,31651,1)end
function OnUseItemEvent_31677(uid,thisid)   return CangBaoTu(uid, thisid,7,581,355,31651,1)end
function OnUseItemEvent_31680(uid,thisid)   return CangBaoTu(uid, thisid,5,375,483,31652,1)end
function OnUseItemEvent_31681(uid,thisid)   return CangBaoTu(uid, thisid,5,380,546,31652,1)end
function OnUseItemEvent_31682(uid,thisid)   return CangBaoTu(uid, thisid,5,292,182,31652,1)end
function OnUseItemEvent_31683(uid,thisid)   return CangBaoTu(uid, thisid,6,424,466,31652,1)end
function OnUseItemEvent_31684(uid,thisid)   return CangBaoTu(uid, thisid,6,449,320,31652,1)end
function OnUseItemEvent_31685(uid,thisid)   return CangBaoTu(uid, thisid,7,485,637,31652,1)end
function OnUseItemEvent_31686(uid,thisid)   return CangBaoTu(uid, thisid,7,176,612,31652,1)end
function OnUseItemEvent_31687(uid,thisid)   return CangBaoTu(uid, thisid,7,143,400,31652,1)end
