--屌丝礼包
function OnUseItemEvent_55061(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if s_deleteItemByThisID(uid,thisid,1,"使用扣除") ~= VALUE_OK then
		return VALUE_FAIL
	end
	--升级宝石
	if level <= 60 then
		s_addItem(uid,27108,3,500,0,"1-1","升级宝石")
	else
		s_addItem(uid,27108,3,500,0,"1-1","升级宝石中")
	end
	--复活盾
	if level >= 1 and level <=60 then
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
	elseif level >=61 and level <=80 then
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
	elseif level >=81 and level <=90 then
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
	elseif level >=91 then
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
		s_addItem(uid,26018,3,50,0,"1-1","复活盾")
	end
	--翼魂
	if level >= 81 then
		s_addItem(uid,27126,3,35,0,"1-1,7-3","翼魂")
		s_addItem(uid,43009,3,70,0,"1-1,7-3","遥控指挥棒")
	end
	return VALUE_OK
end
