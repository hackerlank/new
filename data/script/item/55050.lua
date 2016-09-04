--高帅富升级礼包
function OnUseItemEvent_55050(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level <= 60 then
		s_addItem(uid,29066,3,35,0,"1-1,7-3","绿色初级舞票")
		s_addItem(uid,31147,3,7,0,"1-1,7-3","绿色初级远征证")
		s_addItem(uid,31145,3,15,0,"1-1,7-3","绿色初级速递证")
	else
		s_addItem(uid,29066,3,35,0,"1-1,7-3","绿色中级舞票")
		s_addItem(uid,31147,3,7,0,"1-1,7-3","绿色中级远征证")
		s_addItem(uid,31145,3,15,0,"1-1,7-3","绿色中级速递证")
		s_addItem(uid,29061,3,21,0,"1-1,7-3","绿色钓鱼卡")
	end
	s_addItem(uid,47001,3,35,0,"1-1,7-3","绿色手札")
	return VALUE_OK
end
