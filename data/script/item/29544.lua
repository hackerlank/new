--团资金券
function OnUseItemEvent_29544(uid,thisid,targetid)
	local corps = s_getCorpsId(uid)
	if corps == 0 then
		s_sysInfo(uid,"您当前未加入任何团组织不可使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"删除团资金券") == VALUE_OK then
		s_addCorpsField(corps,CorpVar_Money,3000)
		return VALUE_OK
	end
	return VALUE_FAIL
end

--100炼金材料券
function OnUseItemEvent_29545(uid,thisid,targetid)
	if s_deleteItemByThisID(uid,thisid,1,"删除100炼金材料券") == VALUE_OK then
		local value = s_getVar(uid,1,40)
		s_addVar(uid,1,40,value+100)
		s_sysInfo(uid,"您获得了100炼金材料")
		return VALUE_OK
	end
	return VALUE_FAIL
end
