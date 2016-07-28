--老兵荣誉勋章
function OnUseItemEvent_55104(uid,thisid,targetid)
	if targetid == uid then
		s_sysInfo(uid,"对不起，不能对自己使用，您需要找另一位玩家帮助您！")
		return VALUE_FAIL
	end
	-- 判断对方是否帮助其他老兵
	if s_getField(targetid, UserVar_MeHelpSoldier) ~= 0 then
		s_sysInfo(uid,"对方已经在帮助一位老兵了，不能同时帮助两位老兵。")
		return VALUE_FAIL
	end

	--判断邀请方是否已经接受其他人帮助
	if s_getField(uid,UserVar_OtherHelpMe) ~= 0 then
		s_sysInfo(uid,"对不起，您已经接受了帮助，无法再次邀请帮助！")
		return VALUE_FAIL
	end

	s_sysInfo(uid,"请耐心等待对方接受您的邀请...",ChatPos_MsgBox)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local msg = "老兵".. name .."希望您可以帮助他的成长，同时你也会收到老兵成长的奖励（同时只能帮助一位老兵）。是否同意？"
	local buttons = "我愿意|3|Enter|我拒绝|4|Esc"
	local call = "InviteHelpEvent($1,$2," .. uid .. ","..thisid..")"
	s_registerMsgBox(targetid,call,buttons,msg,300)
	return VALUE_OK
end

function InviteHelpEvent(targetid, ret, uid, thisid)
	if ret ~= Button_Yes then
		s_sysInfo(uid,"对方拒绝了您的邀请")
		return VALUE_FAIL
	end

	--判断邀请方是否已经接受其他人帮助
	if s_getField(uid,UserVar_OtherHelpMe) ~= 0 then
		s_sysInfo(targetid,"对方已接受其他人的帮助，请帮助别的老兵吧^_^！")
		return VALUE_FAIL
	end
	-- 判断对方是否帮助其他老兵
	if s_getField(targetid, UserVar_MeHelpSoldier) ~= 0 then
		s_sysInfo(targetid,"你已经在帮助一位老兵了，不能同时帮助两位老兵。")
		return VALUE_FAIL
	end
	--判断双方是否同时在线
	if s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL) == nil or s_getValue(SCENE_ENTRY_PLAYER,targetid,VALUE_TYPE_LEVEL) == nil then
		s_sysInfo(uid,"对方不在线，无法完成邀请")
		return VALUE_FAIL
	end

	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55104") ~= VALUE_OK then
		s_sysInfo(uid,"删除老兵荣誉勋章失败，请检查您的包裹")
		return VALUE_FAIL
	end

	local diaryA = s_addItem(uid,55105,3,1,1,"1-1,7-3,5004-" .. s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME),"老兵回归日记A")		--邀请方奖励
	if diaryA ~= 0 then
		s_setValue(diaryA,Item_Attribute_Old_Soldier_Reward,0)
	end
	s_setField(uid,UserVar_OtherHelpMe,targetid)
	s_setVar(uid,101,56,0)
	s_addItem(targetid,55106,3,1,1,"1-1,7-3,5004-" .. s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME),"被邀请方老兵日记")	--被邀请方奖励
	s_setField(targetid,UserVar_MeHelpSoldier,uid)
end
