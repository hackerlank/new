--升级宝石礼包（5个）
function OnUseItemEvent_32500(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32500") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level < 61 then
		s_addItem(uid,27108,0,5,0,"1-1","周回馈礼包")
	elseif level >= 60 and level <= 100 then
		s_addItem(uid,27108,0,5,0,"1-1","周回馈礼包")
	elseif level >= 101 then
		s_addItem(uid,27108,0,5,0,"1-1","周回馈礼包")
	end
	return VALUE_OK
end

--升级宝石礼包（10个）
function OnUseItemEvent_32501(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32501") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level < 61 then
		s_addItem(uid,27108,0,10,0,"1-1","周回馈礼包")
	elseif level >= 60 and level <= 100 then
		s_addItem(uid,27108,0,10,0,"1-1","周回馈礼包")
	elseif level >= 101 then
		s_addItem(uid,27108,0,10,0,"1-1","周回馈礼包")
	end
	return VALUE_OK
end

--升级宝石礼包（20个）
function OnUseItemEvent_32502(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32502") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level < 61 then
		s_addItem(uid,27108,0,20,0,"1-1","周回馈礼包")
	elseif level >= 60 and level <= 100 then
		s_addItem(uid,27108,0,20,0,"1-1","周回馈礼包")
	elseif level >= 101 then
		s_addItem(uid,27108,0,20,0,"1-1","周回馈礼包")
	end
	return VALUE_OK
end

--升级宝石礼包（40个）
function OnUseItemEvent_32503(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32503") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level < 61 then
		s_addItem(uid,27108,0,40,0,"1-1","周回馈礼包")
	elseif level >= 60 and level <= 100 then
		s_addItem(uid,27108,0,40,0,"1-1","周回馈礼包")
	elseif level >= 101 then
		s_addItem(uid,27108,0,40,0,"1-1","周回馈礼包")
	end
	return VALUE_OK
end

--升级宝石礼包（80个）
function OnUseItemEvent_32504(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32504") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level < 61 then
		s_addItem(uid,27108,0,80,0,"1-1","周回馈礼包")
	elseif level >= 60 and level <= 100 then
		s_addItem(uid,27108,0,80,0,"1-1","周回馈礼包")
	elseif level >= 101 then
		s_addItem(uid,27108,0,80,0,"1-1","周回馈礼包")
	end
	return VALUE_OK
end

--升级宝石礼包（120个）
function OnUseItemEvent_32505(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32505") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level < 61 then
		s_addItem(uid,27108,0,120,0,"1-1","周回馈礼包")
	elseif level >= 60 and level <= 100 then
		s_addItem(uid,27108,0,120,0,"1-1","周回馈礼包")
	elseif level >= 101 then
		s_addItem(uid,27108,0,120,0,"1-1","周回馈礼包")
	end
	return VALUE_OK
end

--升级宝石礼包（160个）
function OnUseItemEvent_32506(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32506") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level < 61 then
		s_addItem(uid,27108,0,160,0,"1-1","周回馈礼包")
	elseif level >= 60 and level <= 100 then
		s_addItem(uid,27108,0,160,0,"1-1","周回馈礼包")
	elseif level >= 101 then
		s_addItem(uid,27108,0,160,0,"1-1","周回馈礼包")
	end
	return VALUE_OK
end

--升级宝石礼包（200个）
function OnUseItemEvent_32507(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_32507") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level < 61 then
		s_addItem(uid,27108,0,200,0,"1-1","周回馈礼包")
	elseif level >= 60 and level <= 100 then
		s_addItem(uid,27108,0,200,0,"1-1","周回馈礼包")
	elseif level >= 101 then
		s_addItem(uid,27108,0,200,0,"1-1","周回馈礼包")
	end
	return VALUE_OK
end

--血精石礼包（10个）
function OnUseItemEvent_33500(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33500") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29026,0,10,0,"1-1","月回馈礼包")
	return VALUE_OK
end

--血精石礼包（20个）
function OnUseItemEvent_33501(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33501") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29026,0,20,0,"1-1","月回馈礼包")
	return VALUE_OK
end

--血精石礼包（40个）
function OnUseItemEvent_33502(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33502") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29026,0,40,0,"1-1","月回馈礼包")
	return VALUE_OK
end

--血精石礼包（80个）
function OnUseItemEvent_33503(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33503") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29026,0,80,0,"1-1","月回馈礼包")
	return VALUE_OK
end

--血精石礼包（160个）
function OnUseItemEvent_33504(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33504") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29026,0,160,0,"1-1","月回馈礼包")
	return VALUE_OK
end

--血精石礼包（320个）
function OnUseItemEvent_33505(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33505") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29026,0,320,0,"1-1","月回馈礼包")
	return VALUE_OK
end

--血精石礼包（640个）
function OnUseItemEvent_33506(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33506") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,29026,0,500,0,"1-1","月回馈礼包")
	s_addItem(uid,29026,0,140,0,"1-1","月回馈礼包")
	return VALUE_OK
end

--2500赠点券
function OnUseItemEvent_33000(uid,thisid,targetid)
	local fun = "OnUseItemEvent_Callback_33000("..uid..","..thisid..")"
	s_showbar(uid,5000,fun,UninterruptActionType_None,1)
	return VALUE_OK
end

function OnUseItemEvent_Callback_33000(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_Callback_33000") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,10,0,25,0,"1-1","周回馈礼包")
	return VALUE_OK
end

--4000赠点券
function OnUseItemEvent_33001(uid,thisid,targetid)
	local fun = "OnUseItemEvent_Callback_33001("..uid..","..thisid..")"
	s_showbar(uid,5000,fun,UninterruptActionType_None,1)
	return VALUE_OK
end

function OnUseItemEvent_Callback_33001(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_Callback_33001") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,10,0,40,0,"1-1","月回馈礼包")
	return VALUE_OK
end


--3500赠点券
function OnUseItemEvent_33002(uid,thisid,targetid)
	local fun = "OnUseItemEvent_Callback_33002("..uid..","..thisid..")"
	s_showbar(uid,5000,fun,UninterruptActionType_None,1)
	return VALUE_OK
end

function OnUseItemEvent_Callback_33002(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_Callback_33002") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,10,0,35,0,"1-1","周回馈礼包")
	return VALUE_OK
end

--5000赠点券
function OnUseItemEvent_33003(uid,thisid,targetid)
	local fun = "OnUseItemEvent_Callback_33003("..uid..","..thisid..")"
	s_showbar(uid,5000,fun,UninterruptActionType_None,1)
	return VALUE_OK
end

function OnUseItemEvent_Callback_33003(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_Callback_33003") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,10,0,50,0,"1-1","周回馈礼包")
	return VALUE_OK
end

--2级金刚钻礼包（5个）
function OnUseItemEvent_33507(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33507") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,5,0,"1-1,2-2","月回馈礼包")
	return VALUE_OK
end

--2级金刚钻礼包（8个）
function OnUseItemEvent_33508(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33508") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,8,0,"1-1,2-2","月回馈礼包")
	return VALUE_OK
end

--2级金刚钻礼包（10个）
function OnUseItemEvent_33509(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33509") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,10,0,"1-1,2-2","月回馈礼包")
	return VALUE_OK
end

--2级金刚钻礼包（15个）
function OnUseItemEvent_33510(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33510") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,15,0,"1-1,2-2","月回馈礼包")
	return VALUE_OK
end

--2级金刚钻礼包（25个）
function OnUseItemEvent_33511(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33511") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,25,0,"1-1,2-2","月回馈礼包")
	return VALUE_OK
end

--2级金刚钻礼包（40个）
function OnUseItemEvent_33512(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33512") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,40,0,"1-1,2-2","月回馈礼包")
	return VALUE_OK
end

--2级金刚钻礼包（60个）
function OnUseItemEvent_33513(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33513") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,60,0,"1-1,2-2","月回馈礼包")
	return VALUE_OK
end

--2级金刚钻礼包（80个）
function OnUseItemEvent_33514(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33514") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,80,0,"1-1,2-2","月回馈礼包")
	return VALUE_OK
end

--2级金刚钻礼包（100个）
function OnUseItemEvent_33515(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_33515") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27110,0,100,0,"1-1,2-2","月回馈礼包")
	return VALUE_OK
end
