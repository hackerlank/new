--5级全队报恩技能卡盒
function OnUseItemEvent_55150(uid,thisid)
	local fun = "OnUseItemEvent_Callback_55150($1,"..thisid..")"
	s_showbar(uid,1500,fun,UninterruptActionType_None,1)
	return VALUE_OK
end

function OnUseItemEvent_Callback_55150(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,100)
	if rand <= 33 then
		s_addItem(uid,43265,0,1,0,"","活动获得")
	elseif rand <= 66 then
		s_addItem(uid,43275,0,1,0,"","活动获得")
	else
		s_addItem(uid,43285,0,1,0,"","活动获得")
	end
	return VALUE_OK
end
