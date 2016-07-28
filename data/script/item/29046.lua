--麦克风
function OnUseItemEvent_29046(uid,thisid)
	local msg = "请输入喊话内容:"
	local appendlist = {InputBoxAppendList_Chat}
	local call = Call:New(uid,nil,OnUseItemEvent_29046_1,{thisid})
	s_registerInputBox(uid,call,msg,appendlist)
	return VALUE_OK
end

function OnUseItemEvent_29046_1(uid,param,param_ext)
	local itemid = param[1]
	local content = param_ext[1]
	if s_deleteItemByThisID(uid,itemid,1,"使用麦克风") ~= VALUE_OK then
		s_sysInfo(uid,"删除道具失败，无法使用")
		return
	end
	s_speakerInfo(uid,content)
end
