--种植经验丹
function OnUseItemEvent_34006(uid,thisid,targetid)
	local addexp = s_getItemValue(uid,thisid,Item_Attribute_TakeExp)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_34006") == VALUE_OK then
		s_refreshExp(uid, addexp, ExpType_Exchange,34006)
	end
end

