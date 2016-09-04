--??
function OnUseItemEvent_55180(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55180") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local manitem = 	{20189,20208,20193,20288}
	local womanitem = 	{20181,20206,20192,20289}
	local rand = math.random(1,4)
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	if sex == 1 then
		s_addItem(uid,manitem[rand],3,1,1,"1-1,3-3600","??")
	else
		s_addItem(uid,womanitem[rand],3,1,1,"1-1,3-3600","??")
	end
	return VALUE_OK
end

