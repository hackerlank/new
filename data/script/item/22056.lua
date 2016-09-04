--记忆蝴蝶
function OnUseItemEvent_22056(uid,thisid)
	local ctype = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SCENE_TYPE)
	if ctype ~= 0 then
		s_sysInfo(eid1,"不能在副本中使用此道具",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local map = s_getItemValue(uid,thisid,Item_Attribute_PosMap)
	if map == 0 then --记录位置
		local func = string.format("SaveCurPos_22056(%u,$2,%u)",uid,thisid)
		local msg = [[确定要记录当前位置么?]]
		s_registerMsgBox(uid,func,"确定|3|Enter|取消|5|Esc",msg)
	else --跳转
		local cur_time = s_getCurTime(TIME_ALLSECONDS)
		local count = s_getItemValue(uid,thisid,Item_Attribute_UseCount)
		local last_time = s_getItemValue(uid,thisid,Item_Attribute_LastUseTime)

		if math.floor(last_time/86400) ~= math.floor(cur_time/86400) then
			count = 0
			s_setItemValue(uid,thisid,Item_Attribute_UseCount,count)
			s_setItemValue(uid,thisid,Item_Attribute_LastUseTime,cur_time)
		else
			if count >= 10 then
				s_sysInfo(uid,"此道具每天只能使用10次")
				return VALUE_FAIL
			end
		end
		local callback = string.format("GoToPos_22056(%u,%u)",uid,thisid)
		s_showbar(uid,4000,callback,0,1,6015)
	end
	return VALUE_OK
end

function SaveCurPos_22056(uid,result,thisid)
	if result ~= Button_Yes then
		return
	end
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	local x = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSX)
	local y = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_POSY)
	s_setItemValue(uid,thisid,Item_Attribute_PosCountry,country)
	s_setItemValue(uid,thisid,Item_Attribute_PosMap,map)
	s_setItemValue(uid,thisid,Item_Attribute_PosX,x)
	s_setItemValue(uid,thisid,Item_Attribute_PosY,y)
	s_refreshItem(uid,thisid)
	s_sysInfo(uid,"记忆蝴蝶记录了当前位置")
end

function GoToPos_22056(uid,thisid)
	local map = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_MAP)
	local homeland = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HOMELAND)
	local country = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_CURRENT_COUNTRY)
	if map == 5 and homeland ~= country then
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,107) ~= 0 then
			s_sysInfo(uid,"您身上有水晶，无法在军乐城使用回城")
			return VALUE_FAIL
		end
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,108) ~= 0 then
			s_sysInfo(uid,"您身上有水晶，无法在军乐城使用回城")
			return VALUE_FAIL
		end
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,109) ~= 0 then
			s_sysInfo(uid,"您身上有水晶，无法在军乐城使用回城")
			return VALUE_FAIL
		end
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,110) ~= 0 then
			s_sysInfo(uid,"您身上有水晶，无法在军乐城使用回城")
			return VALUE_FAIL
		end
		if s_getbufflevel(SCENE_ENTRY_PLAYER,uid,111) ~= 0 then
			s_sysInfo(uid,"您身上有水晶，无法在军乐城使用回城")
			return VALUE_FAIL
		end
	end

	--增加使用次数
	local cur_time = s_getCurTime(TIME_ALLSECONDS)
	local count = s_getItemValue(uid,thisid,Item_Attribute_UseCount)
	local last_time = s_getItemValue(uid,thisid,Item_Attribute_LastUseTime)

	if math.floor(last_time/86400) ~= math.floor(cur_time/86400) then
		count = 1
		s_setItemValue(uid,thisid,Item_Attribute_LastUseTime,cur_time)
	else
		count = count + 1
	end
	s_setItemValue(uid,thisid,Item_Attribute_UseCount,count)

	local country = s_getItemValue(uid,thisid,Item_Attribute_PosCountry)
	local map = s_getItemValue(uid,thisid,Item_Attribute_PosMap)
	local x = s_getItemValue(uid,thisid,Item_Attribute_PosX)
	local y = s_getItemValue(uid,thisid,Item_Attribute_PosY)
	s_gomap(uid,country,map,x,y)
	s_setItemValue(uid,thisid,Item_Attribute_PosCountry,0)
	s_setItemValue(uid,thisid,Item_Attribute_PosMap,0)
	s_setItemValue(uid,thisid,Item_Attribute_PosX,0)
	s_setItemValue(uid,thisid,Item_Attribute_PosY,0)
	s_refreshItem(uid,thisid)
end
