--3级报恩技能卡盒
function OnUseItemEvent_55047(uid,thisid)
	local fun = "OnUseItemEvent_Callback_55047($1,"..thisid..")"
	s_showbar(uid,1500,fun,UninterruptActionType_None,1)
	return VALUE_OK
end

function OnUseItemEvent_Callback_55047(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rand = math.random(1,100)
	if rand <= 18 then
		s_addItem(uid,43213,0,1,0,"","圣诞活动")
	elseif rand <= 36 then
		s_addItem(uid,43223,0,1,0,"","圣诞活动")
	elseif rand <= 54 then
		s_addItem(uid,43233,0,1,0,"","圣诞活动")
	elseif rand <= 72 then
		s_addItem(uid,43243,0,1,0,"","圣诞活动")
	elseif rand <= 90 then
		s_addItem(uid,43253,0,1,0,"","圣诞活动")
	elseif rand <= 93 then
		s_addItem(uid,43263,0,1,0,"","圣诞活动")
	elseif rand <= 96 then
		s_addItem(uid,43273,0,1,0,"","圣诞活动")
	else
		s_addItem(uid,43283,0,1,0,"","圣诞活动")
	end
	return VALUE_OK
end
