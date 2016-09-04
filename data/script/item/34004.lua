--团成就礼包
function OnUseItemEvent_34004(uid,thisid,targetid)
	local addexp = s_getItemValue(uid,thisid,Item_Attribute_TakeExp)
	local addoffer = s_getItemValue(uid,thisid,Item_Attribute_TakeOffer)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_34004") == VALUE_OK then
		s_refreshExp(uid, addexp, ExpType_Exchange,34004)
		local corps = s_getCorpsId(uid)
		if corps > 0 then
			s_addField(uid, UserVar_Offer, addoffer)
		end
	end
end

