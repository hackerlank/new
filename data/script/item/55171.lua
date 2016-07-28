--单项升1级血脉宝
function OnUseItemEvent_55171(uid,thisid,targetid)
	local money = 3000
	local list = 	 {31001 ,31002 ,31003 ,31004 ,31005 ,31006 ,31007 ,31008 ,31009 ,31010 }
	local listname = {"信仰","忠诚","荣誉","责任","公正","正直","怜悯","谦卑","奉献","勇气"}
	local blood = false
	for i=1,#list do
		if targetid == list[i] then
			blood = true
		end
	end
	if blood == false then s_messageBox(uid,"您选中的不是血脉。") return end
	local num = targetid - 31000
	if num < 1 or num > 10 then num = 1 end
	local bloodname = listname[num]
	local msg = "您是否花费".. money .."银币将".. bloodname .."血脉提升1级？"
	local buttons = "确定|3|Enter|取消|4|Esc"
	local call = "CallBack_OnUseItemEvent_55171($1,$2," .. thisid .. ",".. money ..",".. targetid ..")"
	s_registerMsgBox(uid,call,buttons,msg,300)
	return VALUE_OK
end

function CallBack_OnUseItemEvent_55171(uid,result,thisid,money,targetid)
	if result ~= Button_Yes then
		return
	end
	local worldlevel = s_getWorldLevel()
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local list = 	 {31001 ,31002 ,31003 ,31004 ,31005 ,31006 ,31007 ,31008 ,31009 ,31010 }
	local listname = {"信仰","忠诚","荣誉","责任","公正","正直","怜悯","谦卑","奉献","勇气"}
	local worldblood = 	math.floor(s_getCountryField(13,CountryVar_EquipBloodAllLevel)/10)
	local blooduserlevel = false
	local lv = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,targetid)
	if math.floor(lv/10)*10  + 60  <= level then
		blooduserlevel = true
	end
	if blooduserlevel == false then
		s_sysInfo(uid,"您的血脉已经达到最高学习等级，请升级后再使用。")
		return VALUE_FAIL
	end
	local num = targetid - 31000
	if num < 1 or num > 10 then num = 1 end
	--判断能最高学的血脉
	local blood = false
	local lv = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,targetid)
	if lv  <  worldblood - 3 then
		blood = true
	end
	if blood == false then
		s_messageBox(uid,"您的".. listname[num] .."血脉等级过高，不能使用血脉宝升级的血脉等级了")
		return VALUE_FAIL
	end
	if s_removeMoney(uid,MoneyType_Money,money,"单项升级血脉宝扣除") ~= VALUE_OK then
		s_messageBox(uid,"银币不足"..money.."银币")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"升级血脉"..listname[num].."扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local lv = s_getskilllevel(SCENE_ENTRY_PLAYER,uid,targetid)
	if lv == 0 then
		s_addskill(SCENE_ENTRY_PLAYER,uid,targetid,1)
		s_setField(uid,UserVar_EquipBloodAllLevel,s_getField(uid,UserVar_EquipBloodAllLevel)+1)
	else
		if lv >= worldblood - 3 then
			s_messageBox(uid,string.format("%s血脉可通过血脉宝升级的等级已经达到上限。",listname[num]))
		else
			s_setskilllevel(SCENE_ENTRY_PLAYER,uid,targetid,lv+1)
			s_setField(uid,UserVar_EquipBloodAllLevel,s_getField(uid,UserVar_EquipBloodAllLevel)+1)
		end
	end
	s_sysInfo(uid,"您的血脉已经升级成功！",ChatPos_MsgBox)
	return VALUE_OK
end
