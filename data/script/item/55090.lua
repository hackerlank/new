--魔甲材料箱
function OnUseItemEvent_55090(uid,thisid)
	local corps = s_getCorpsId(uid)
	if corps == 0 then
		s_sysInfo(uid,"您当前没有团，请加入团之后使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"魔甲材料箱") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addCorpsField(corps,CorpVar_MagicMaterials,10)
	return VALUE_OK
end
