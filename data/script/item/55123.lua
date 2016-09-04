--炸弹礼盒
function OnUseItemEvent_55123(uid,thisid,targetid)
	local name = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_NAME)
	local hpvalue = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55123") == VALUE_OK then
		if math.random(1,2) == 1 then
			if hpvalue > 1 then
				subhpvalue = math.floor(hpvalue * 0.99)
				if subhpvalue > hpvalue then
					subhpvalue = 0
				end
				s_subValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_HP,subhpvalue)
			end
			s_addbuff(SCENE_ENTRY_PLAYER,uid,86,1,10)
			s_addbuff(SCENE_ENTRY_PLAYER,uid,20280,1,60*60)
			s_nineInfo(uid,"轰！无辜的".. name .."被炸成了熊猫，口吐黑烟……这副窘相，让人忍不住捧腹大笑。")
		else
			s_addbuff(SCENE_ENTRY_PLAYER,uid,5046,1,60*60)
			s_addbuff(SCENE_ENTRY_PLAYER,uid,5032,1,10)
			s_nineInfo(uid,"真幸运，".. name .."躲过了塔布里斯的整蛊，轻松获得奖励。")
		end
		return VALUE_OK
	end
	return VALUE_FAIL
end
