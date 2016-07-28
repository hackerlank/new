--烟花1
function OnUseItemEvent_30000(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5000,1,10)
	return VALUE_OK
end

--烟花2
function OnUseItemEvent_30001(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5001,1,10)
	return VALUE_OK
end

--烟花3
function OnUseItemEvent_30002(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5002,1,10)
	return VALUE_OK
end

--烟花4
function OnUseItemEvent_30003(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5003,1,10)
	return VALUE_OK
end

--烟花5
function OnUseItemEvent_30004(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5004,1,10)
	return VALUE_OK
end

--烟花6
function OnUseItemEvent_30005(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5005,1,10)
	return VALUE_OK
end

--烟花7
function OnUseItemEvent_30006(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5007,1,10)
	return VALUE_OK
end

--烟花8
function OnUseItemEvent_30007(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5008,1,10)
	return VALUE_OK
end

--烟花9
function OnUseItemEvent_30008(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5009,1,10)
	return VALUE_OK
end

--烟花10
function OnUseItemEvent_30009(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5010,1,10)
	return VALUE_OK
end

--烟花11
function OnUseItemEvent_30010(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5011,1,10)
	return VALUE_OK
end

--烟花10
function OnUseItemEvent_30011(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5012,1,10)
	return VALUE_OK
end

--烟花10
function OnUseItemEvent_30012(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5013,1,10)
	return VALUE_OK
end

--烟花11 新年快乐
function OnUseItemEvent_30013(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5016,1,10)
	return VALUE_OK
end

--烟花12 情人节快乐
function OnUseItemEvent_30014(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5004,1,10)
	return VALUE_OK
end

--烟花13 龙腾虎跃
function OnUseItemEvent_30015(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5015,1,10)
	return VALUE_OK
end

--烟花14 龙马精神
function OnUseItemEvent_30016(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5014,1,10)
	return VALUE_OK
end

--烟花15 吉祥如意
function OnUseItemEvent_30017(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5017,1,10)
	return VALUE_OK
end

--烟花16 (烟)荣耀即吾命
function OnUseItemEvent_30018(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5020,1,10)
	return VALUE_OK
end

--烟花17 (烟)水国万岁！
function OnUseItemEvent_30019(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5021,1,10)
	return VALUE_OK
end

--烟花18 (烟)火国万岁！
function OnUseItemEvent_30020(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5022,1,10)
	return VALUE_OK
end

--烟花19 (烟)沙国万岁！
function OnUseItemEvent_30021(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5023,1,10)
	return VALUE_OK
end

--烟花20 (烟)风国万岁！
function OnUseItemEvent_30022(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5024,1,10)
	return VALUE_OK
end

--烟花21 (烟)天国万岁！
function OnUseItemEvent_30023(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5025,1,10)
	return VALUE_OK
end

--烟花22 (烟)花国万岁！
function OnUseItemEvent_30024(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5026,1,10)
	return VALUE_OK
end

--烟花23 (烟)胜利，胜利！
function OnUseItemEvent_30025(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5027,1,10)
	return VALUE_OK
end

--烟花24 (烟)大彩虹
function OnUseItemEvent_30026(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5028,1,10)
	return VALUE_OK
end

--烟花24 (烟)逗你玩
function OnUseItemEvent_30027(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5029,1,10)
	return VALUE_OK
end

--烟花25 (烟)悲催的人
function OnUseItemEvent_30028(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5030,1,10)
	return VALUE_OK
end

--烟花26 (烟)财神到
function OnUseItemEvent_30029(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5031,1,10)
	return VALUE_OK
end

--烟花27 (烟)花阵
function OnUseItemEvent_30030(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5032,1,10)
	return VALUE_OK
end

--烟花28 (烟)小彩虹
function OnUseItemEvent_30031(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5033,1,10)
	return VALUE_OK
end


--烟花30 (烟)中国加油
function OnUseItemEvent_30032(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5047,1,10)
	return VALUE_OK
end

--烟花31 (烟)爱兵王2爱奥运
function OnUseItemEvent_30033(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,5048,1,10)
	return VALUE_OK
end

--烟花32 (烟)国家万岁
function OnUseItemEvent_30019(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local country = s_getValue(SCENE_ENTRY_PLAYER,userid,VALUE_TYPE_HOMELAND)
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	if country == 2 then
		s_addbuff(SCENE_ENTRY_NPC,npcid,5025,1,10)
	end
	if country == 3 then
		s_addbuff(SCENE_ENTRY_NPC,npcid,5022,1,10)
	end
	if country == 4 then
		s_addbuff(SCENE_ENTRY_NPC,npcid,5024,1,10)
	end
	if country == 5 then
		s_addbuff(SCENE_ENTRY_NPC,npcid,5023,1,10)
	end
	if country == 6 then
		s_addbuff(SCENE_ENTRY_NPC,npcid,5021,1,10)
	end
	if country == 7 then
		s_addbuff(SCENE_ENTRY_NPC,npcid,5026,1,10)
	end
	return VALUE_OK
end

--(烟)马上有钱
function OnUseItemEvent_30034(userid,thisid,targetid)
	if s_deleteItemByThisID(userid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	local npcid = s_summon(SCENE_ENTRY_PLAYER,userid,60570)
	s_setValue(SCENE_ENTRY_NPC,npcid,VALUE_TYPE_LIFE,10*1000)
	if npcid == 0 then
		return VALUE_FAIL
	end
	s_addbuff(SCENE_ENTRY_NPC,npcid,20399,1,10)
	return VALUE_OK
end
