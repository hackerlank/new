--鉴定宝石
function OnUseItemEvent_27101(userid,thisid,targetid)
	if checkEquip(userid,targetid) ~= VALUE_OK then
		return VALUE_FAIL
	end
	if s_getItemValue(userid,targetid,Item_Attribute_Judge) ~= 0 then
		return VALUE_FAIL
	end
	local needlevel = s_getItemValue(userid,thisid,Item_Base_NeedLevel)
	local maxlevel = s_getItemValue(userid,thisid,Item_Base_MaxLevel)
	local needlevel1 = s_getItemValue(userid,targetid,Item_Base_NeedLevel)
	if needlevel1 < needlevel or needlevel1 >=maxlevel then
		s_sysInfo(userid,"等级不符，无法鉴定")
		return VALUE_FAIL
	end
	local needbind = s_getItemValue(userid,thisid,Item_Attribute_Bind)
	if s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_27101") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local rate = 0
	local var = s_getVar(userid,100,3)
	if var < 3 then
		rate = 100
	end
	local refresh = 0
	local targetlevel = s_getItemValue(userid,targetid,Item_Base_NeedLevel)
	if s_judgeItem(userid,targetid,rate) ~= VALUE_OK then
		if s_getVar(userid,100,3) == 0 then
			s_setItemValue(userid,targetid,Item_Attribute_Judge,1)
			s_setItemValue(userid,targetid,Item_Attribute_SoulJudge,0)
			refresh = 1
		else
			s_deleteItemByThisID(userid,targetid,1,"OnUseItemEvent_27101")
			s_sysInfo(userid,"很遗憾，鉴定失败，装备被损坏！")
			return VALUE_FAIL
		end
	end
	if needbind > 0 then
		s_setItemValue(userid,targetid,Item_Attribute_Bind,needbind)
		refresh = 1
	end
	if refresh == 1 then
		s_refreshItem(userid,targetid)
	end
	if var < 3 then
		s_addVar(userid,100,3,var + 1)
	end
	s_sysInfo(userid,"恭喜，鉴定成功！")
	----------
	--AddRoleTaskOperate(userid,3102)
	AddRoleTaskOperate(userid,10151)
	AddRoleTaskOperate(userid,10152)
	RoleTaskInfo30007:AddOperate(userid,targetlevel)
	return VALUE_OK
end

