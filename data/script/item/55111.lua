--30级血脉宝
function OnUseItemEvent_55111(uid,thisid,targetid)
	local worldlevel = s_getWorldLevel()
	local skillsetlevel = 30
	if skillsetlevel  + 20 > worldlevel * 10  then
		s_sysInfo(uid,"使用失败，人类进程限制")
		return
	end
	if s_deleteItemByThisID(uid,thisid,1,"删除"..skillsetlevel.."血脉宝") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local list = {31001,31002,31003,31004,31005,31006,31007,31008,31009,31010}
	for i = 1,table.getn(list) do
		local lv = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,list[i])
		if lv == 0 then
			s_addskill(SCENE_ENTRY_PLAYER,uid,list[i],1)
			s_setskilllevel(SCENE_ENTRY_PLAYER,uid,list[i],skillsetlevel)
			s_setField(uid,UserVar_EquipBloodAllLevel,s_getField(uid,UserVar_EquipBloodAllLevel)+skillsetlevel)
		else
			if lv < skillsetlevel then
				s_setskilllevel(SCENE_ENTRY_PLAYER,uid,list[i],skillsetlevel)
				s_setField(uid,UserVar_EquipBloodAllLevel,s_getField(uid,UserVar_EquipBloodAllLevel) + skillsetlevel-lv)
			end
		end
	end
	s_sysInfo(uid,"血脉升级成功，您的血脉已经全部升为"..skillsetlevel.."级",ChatPos_MsgBox)
	return VALUE_OK
end
