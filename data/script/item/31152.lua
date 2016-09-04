--守护者宝箱
function OnUseItemEvent_31152(uid,thisid,targetid)
	s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31152")
	local num = math.random(3,5)
	s_addItem(uid,27108,0,num,0,"1-1","守护者宝箱")
	return VALUE_OK
end
