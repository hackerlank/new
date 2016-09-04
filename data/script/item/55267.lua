--婚庆喜糖
function OnUseItemEvent_55267(uid,thisid,targetid)
	s_addItem(uid,10,3,2,0,"1-1","OnUseItemEvent_55267")
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	local exp = 40*(50+0.1*level^2.2)
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_55267") == VALUE_OK then
		s_refreshExp(uid,exp,ExpType_Item,55267)
	end
	s_sysInfo(uid,"这甜甜的感觉，让人想起爱的幸福味道...")
	return VALUE_OK
end
