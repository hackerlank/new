--鉴定装备
function JudgeEquipWithLuckyStone(userid,thisid,targetid)
	if checkEquip(userid,targetid) ~= VALUE_OK then
		return VALUE_FAIL
	end
	if s_getItemValue(userid,targetid,Item_Attribute_Judge) ~= 0 then
		return VALUE_FAIL
	end
	local needbind = s_getItemValue(userid,thisid,Item_Attribute_Bind)
	if s_deleteItemByThisID(userid,thisid,1,"JudgeEquipWithLuckyStone") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local refresh = 0
	local targetlevel = s_getItemValue(userid,targetid,Item_Base_NeedLevel)
	if s_judgeItem(userid,targetid,100) ~= VALUE_OK then
		if var < 3 then
			s_setItemValue(userid,targetid,Item_Attribute_Judge,1)
			s_setItemValue(userid,targetid,Item_Attribute_SoulJudge,0)
			refresh = 1
		else
			s_sysInfo(userid,"鉴定未成功，可重新鉴定！")
			return VALUE_OK
		end
	end
	if needbind > 0 then
		s_setItemValue(userid,targetid,Item_Attribute_Bind,needbind)
		refresh = 1
	end
	if refresh == 1 then
		s_refreshItem(userid,targetid)
	end
	s_sysInfo(userid,"恭喜，鉴定成功！")

	--鉴定任务10151
	AddRoleTaskOperate(userid,10151)
	AddRoleTaskOperate(userid,10152)
	RoleTaskInfo30007:AddOperate(userid,targetlevel)
	return VALUE_OK
end

--升级宝石和完美升级宝石对应表
UpgradeStoneTable =
{
	{27107,26123},
	{27108,26124},
	{27109,26125}
}

--幸运宝石
function OnUseItemEvent_26101(userid,thisid,targetid)
	local needlevel = s_getItemValue(userid,thisid,Item_Base_NeedLevel)
	local maxlevel = s_getItemValue(userid,thisid,Item_Base_MaxLevel)
	local needlevel1 = s_getItemValue(userid,targetid,Item_Base_NeedLevel)
	if needlevel1 == nil or maxlevel == nil or needlevel1 == nil then
		return VALUE_FAIL
	end
	if needlevel1 < needlevel or needlevel1 >=maxlevel then
		s_sysInfo(userid,"等级不符，无法对该道具使用")
		return VALUE_FAIL
	end
	return JudgeEquipWithLuckyStone(userid,thisid,targetid)
end
