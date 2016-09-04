--技能遗忘手册
function OnUseItemEvent_26010(userid,thisid,skillid)
	local valid = VALUE_FAIL
	if skillid >= 10101 and skillid <= 10120 then
		valid = VALUE_OK
	end
	if skillid >= 10201 and skillid <= 10220 then
		valid = VALUE_OK
	end
	if skillid >= 10301 and skillid <= 10320 then
		valid = VALUE_OK
	end
	if skillid >= 10401 and skillid <= 10420 then
		valid = VALUE_OK
	end
	if skillid >= 10501 and skillid <= 10520 then
		valid = VALUE_OK
	end
	if skillid >= 10601 and skillid <= 10620 then
		valid = VALUE_OK
	end
	if valid == VALUE_FAIL then
		s_sysInfo(userid,"该技能不能遗忘",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end

	if s_getcold(userid,skillid) == -1 then
		s_sysInfo(userid,"您当前没有该技能",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	elseif s_getcold(userid,skillid) ~= 0 then
		s_sysInfo(userid,"处于冷却中的技能不可降级！",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end

	if s_forgetskill(SCENE_ENTRY_PLAYER,userid,skillid,1) == VALUE_OK then
		s_deleteItemByThisID(userid,thisid,1,"OnUseItemEvent_26010")
		return VALUE_OK
	end
	return VALUE_FAIL
end
