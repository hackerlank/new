--宠物经验丹
function OnUseItemEvent_43090(userid,thisid,targetid)
	s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_43090")
	s_refreshdemonexp(userid,150)
	return VALUE_OK
end
