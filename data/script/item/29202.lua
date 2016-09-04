--战友生命礼赞
function OnUseItemEvent_29202(uid,thisid,targetid)
	--判断是否拥有战友
	if s_checkCompanion(SCENE_ENTRY_PLAYER,uid) ~= VALUE_OK then
		s_sysInfo(uid,"您目前尚未拥有志同道合的战友！")
		return VALUE_FAIL
	end
	--使用次数
	--[[
	local today = s_getCurTime(TIME_ALLDAYS)
	if s_getVar(uid,116,21) == today then
	if s_getVar(uid,116,22) >= 2 then
	s_sysInfo(uid,"生命礼赞每日最多使用两次")
	return VALUE_FAIL
	end
	end
	]]--
	local level = s_getCompanionLevel(SCENE_ENTRY_PLAYER,uid,targetid)
	if level == 0 then
		s_sysInfo(uid,"不能对非战友使用该道具")
		return VALUE_FAIL
	elseif level < 9 then
		s_sysInfo(uid,"好友度等级达到生死之交才可以对对方使用")
		return VALUE_FAIL
	end
	if s_getValue(SCENE_ENTRY_PLAYER,targetid,VALUE_TYPE_HP) ~= 0 then
		s_sysInfo(uid,"对方没有死亡")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"战友生命礼赞") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local func = string.format("OnSkillAction_50011($1,$2,%u)",uid)
	local buttons = "确定|3|Enter|取消|5|Esc"
	local msg = "您的战友牺牲自身生命力，希望能够复活您。请问是否接受？"
	s_registerMsgBox(targetid,func,buttons,msg,300,1)
	--[[
	if s_getVar(uid,116,21) == today then
	s_addVar(uid,116,22,s_getVar(uid,116,22)+1)
	else
	s_addVar(uid,116,21,today)
	s_addVar(uid,116,22,1)
	end
	]]--
	return VALUE_OK
end
