--海誓山盟
function OnUseItemEvent_55259(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55259") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addItem(uid,27108,3,20,1,"1-1","海誓山盟")	--升级宝石中
	s_addItem(uid,26102,3,20,1,"1-1","海誓山盟")   --幸运宝石中
	s_addItem(uid,27110,3,1,1,"1-1,2-4","海誓山盟")   --金刚钻四等
	s_addItem(uid,26149,3,2,1,"1-1,2-3","海誓山盟")   --合金材料三等
	return VALUE_OK
end

