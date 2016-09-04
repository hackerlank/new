--发型道具
function OnUseHairItem(uid,itemid)
	local minlevel = s_getItemValue(uid,itemid,Item_Base_NeedLevel)
	local maxlevel = s_getItemValue(uid,itemid,Item_Base_MaxLevel)
	local color = s_getItemValue(uid,itemid,Item_Attribute_Face)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < minlevel or level >= maxlevel then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	local hair = 0
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	local baseid = s_getItemValue(uid,itemid,-2)
	if baseid < 20450 then
		if sex ~= 1 then
			s_sysInfo(uid,"性别不符，无法使用")
			return VALUE_FAIL
		end
		hair = baseid - 20400
	elseif baseid < 20500 then
		if sex ~= 2 then
			s_sysInfo(uid,"性别不符，无法使用")
			return VALUE_FAIL
		end
		hair = baseid - 20450 + 200
	end

	if s_deleteItemByThisID(uid,itemid,1,"OnUseHairItem") == VALUE_OK then
		s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HAIR,hair)
		if color ~= 0 then
			s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HAIR_COLOR,color)
		end
		return VALUE_OK
	end
	return VALUE_FAIL
end

function OnUseItemEvent_20401(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20402(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20403(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20404(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20405(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20406(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20407(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20408(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20409(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20410(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20411(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20412(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20413(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end

function OnUseItemEvent_20451(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20452(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20453(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20454(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20455(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20456(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20457(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20458(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20459(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20460(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20461(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20462(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20463(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
function OnUseItemEvent_20464(uid,thisid,targetid) return OnUseHairItem(uid,thisid) end
