--变身卡1 变身对方卡
function OnUseItemEvent_55120(uid,thisid,targetid)
	if uid == targetid then
		s_sysInfo(uid,"不能对自己使用",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local traffic = s_getTrafficType(targetid)
	if traffic ~= TrafficType_None then
		s_sysInfo(uid,"目标玩家当前状态不可被变身",ChatPos_Sys + ChatPos_Important)
		return VALUE_FAIL
	end
	local list = {41126,41129,41130,41643,41644,41645,41651,41655,41673,41125}
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55120") == VALUE_OK then
		s_setTrafficType(targetid,TrafficType_MagicChange,list[math.random(1,table.getn(list))],60)
		local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
		s_sysInfo(targetid,"<p><n color=GXColorBlueSky>你被</n><q buttonid=6005 ownerid=".. uid .. ">" ..name.. "</q><n color=GXColorBlueSky>的魔镜照了下，感觉身体发生了异样的变化，哈哈，愚人节快乐哦！</n></p>")
		return VALUE_OK
	end
	return VALUE_FAIL
end
