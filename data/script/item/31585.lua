--神兵武器宝箱
function OnUseItemEvent_31585(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 121 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31585") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 91 and level <= 100 then
		local targetid = {54420,54421,54422,54423}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31585")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	elseif level >= 101 and level <= 110 then
		local targetid = {54434,54435,54436,54437}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31585")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	elseif level >= 111 and level <= 120 then
		local targetid = {54448,54449,54450,54451}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31585")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	elseif level >= 121 and level <= 130 then
		local targetid = {54462,54463,54464,54465}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31585")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	elseif level >= 131 and level<= 140 then
		local targetid = {54476,54477,54478,54479}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31585")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	elseif level >= 141 and level <= 150 then
		local targetid = {54490,54491,54492,54493}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31585")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	end
	return VALUE_OK
end

