--球队支持鲜花
function OnUseItemEvent_29535(uid,thisid)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	s_addField(uid,UserVar_FootBallNum,20,"球队支持鲜花")
	s_sysInfo(uid,"<p><n>【系】您使用了鲜花，获得了20点积分。积分可参与欧洲杯球队支持活动！</n><event hotkeyid='72' eid='100' cid='168' text='马上参与'/></p>")
	return VALUE_OK
end
