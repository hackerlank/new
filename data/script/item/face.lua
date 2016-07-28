--脸型道具
function OnUseFaceItem(uid,itemid)
	local minlevel = s_getItemValue(uid,itemid,Item_Base_NeedLevel)
	local maxlevel = s_getItemValue(uid,itemid,Item_Base_MaxLevel)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < minlevel or level >= maxlevel then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	local face = 0
	local sex = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_SEX)
	local baseid = s_getItemValue(uid,itemid,-2)
	if baseid < 20350 then
		if sex ~= 1 then
			s_sysInfo(uid,"性别不符，无法使用")
			return VALUE_FAIL
		end
		face = baseid - 20300
	elseif baseid < 20400 then
		if sex ~= 2 then
			s_sysInfo(uid,"性别不符，无法使用")
			return VALUE_FAIL
		end
		face = baseid - 20350 + 100
	end

	if s_deleteItemByThisID(uid,itemid,1,"OnUseFaceItem") == VALUE_OK then
		s_setValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_FACE,face)
		return VALUE_OK
	end
	return VALUE_FAIL
end

function OnUseItemEvent_20301(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20302(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20303(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20304(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20305(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20306(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20307(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20308(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20309(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20310(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20311(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20312(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20313(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end

function OnUseItemEvent_20351(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20352(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20353(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20354(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20355(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20356(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20357(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20358(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20359(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20360(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20361(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20362(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end
function OnUseItemEvent_20363(uid,thisid,targetid) return OnUseFaceItem(uid,thisid) end

