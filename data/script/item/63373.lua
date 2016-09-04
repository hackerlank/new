--6级骑魂盒(绑)
function OnUseItemEvent_63373(uid,thisid,targetid)
	local rand = math.random(1,6)
	if s_deleteItemByThisID(uid,thisid,1,"删除骑魂礼盒") == VALUE_OK then
		if rand == 1 then
			s_addItem(uid,53001,3,1,1,"1-1,420-6,421-499,422-365,423-377,424-371,425-347,82-1959","OnUseItemEvent_55049") --6级骑魂
		elseif rand == 2 then
			s_addItem(uid,53001,3,1,1,"1-1,420-6,421-364,422-465,423-398,424-401,425-348,82-1976","OnUseItemEvent_55049") --6级骑魂
		elseif rand == 3 then
			s_addItem(uid,53001,3,1,1,"1-1,420-6,421-411,422-399,423-501,424-347,425-348,82-2006","OnUseItemEvent_55049") --6级骑魂
		elseif rand == 4 then
			s_addItem(uid,53001,3,1,1,"1-1,420-6,421-397,422-355,423-365,424-502,425-347,82-1966","OnUseItemEvent_55049") --6级骑魂
		elseif rand == 5 then
			s_addItem(uid,53001,3,1,1,"1-1,420-6,421-378,422-384,423-365,424-353,425-477,82-1957","OnUseItemEvent_55049") --6级骑魂
		elseif rand == 6 then
			s_addItem(uid,53001,3,1,1,"1-1,420-6,421-378,422-411,423-395,424-388,425-401,82-1973","OnUseItemEvent_55049") --6级骑魂
		end
		return VALUE_OK
	end
end
