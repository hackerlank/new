--经验胶囊
function OnUseItemEvent_34101(uid,thisid,target)
	if s_removeMoney(uid,MoneyType_Money,100,"使用封印经验药") ~= VALUE_OK then
		s_sysInfo(uid,"使用经验胶囊需要100银币手续费")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,100000,ExpType_Exchange,34101)
	return VALUE_OK
end
function OnUseItemEvent_34102(uid,thisid,target)
	if s_removeMoney(uid,MoneyType_Money,100,"使用封印经验药") ~= VALUE_OK then
		s_sysInfo(uid,"使用经验胶囊需要100银币手续费")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,150000,ExpType_Exchange,34102)
	return VALUE_OK
end
function OnUseItemEvent_34103(uid,thisid,target)
	if s_removeMoney(uid,MoneyType_Money,100,"使用封印经验药") ~= VALUE_OK then
		s_sysInfo(uid,"使用经验胶囊需要100银币手续费")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,250000,ExpType_Exchange,34103)
	return VALUE_OK
end
function OnUseItemEvent_34104(uid,thisid,target)
	if s_removeMoney(uid,MoneyType_Money,100,"使用封印经验药") ~= VALUE_OK then
		s_sysInfo(uid,"使用经验胶囊需要100银币手续费")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,450000,ExpType_Exchange,34104)
	return VALUE_OK
end
function OnUseItemEvent_34105(uid,thisid,target)
	if s_removeMoney(uid,MoneyType_Money,100,"使用封印经验药") ~= VALUE_OK then
		s_sysInfo(uid,"使用经验胶囊需要100银币手续费")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,750000,ExpType_Exchange,34105)
	return VALUE_OK
end
function OnUseItemEvent_34106(uid,thisid,target)
	if s_removeMoney(uid,MoneyType_Money,100,"使用封印经验药") ~= VALUE_OK then
		s_sysInfo(uid,"使用经验胶囊需要100银币手续费")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,1200000,ExpType_Exchange,34106)
	return VALUE_OK
end
function OnUseItemEvent_34107(uid,thisid,target)
	if s_removeMoney(uid,MoneyType_Money,100,"使用封印经验药") ~= VALUE_OK then
		s_sysInfo(uid,"使用经验胶囊需要100银币手续费")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,1800000,ExpType_Exchange,34107)
	return VALUE_OK
end
function OnUseItemEvent_34108(uid,thisid,target)
	if s_removeMoney(uid,MoneyType_Money,100,"使用封印经验药") ~= VALUE_OK then
		s_sysInfo(uid,"使用经验胶囊需要100银币手续费")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,2600000,ExpType_Exchange,34108)
	return VALUE_OK
end
function OnUseItemEvent_34109(uid,thisid,target)
	if s_removeMoney(uid,MoneyType_Money,100,"使用封印经验药") ~= VALUE_OK then
		s_sysInfo(uid,"使用经验胶囊需要100银币手续费")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,3750000,ExpType_Exchange,34109)
	return VALUE_OK
end
function OnUseItemEvent_34110(uid,thisid,target)
	if s_removeMoney(uid,MoneyType_Money,100,"使用封印经验药") ~= VALUE_OK then
		s_sysInfo(uid,"使用经验胶囊需要100银币手续费")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"使用") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_refreshExp(uid,5000000,ExpType_Exchange,34110)
	return VALUE_OK
end
