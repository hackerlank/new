--神兵护甲宝箱
function OnUseItemEvent_31580(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 101 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31580") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 91 and level <= 100 then
		local targetid = {54411,54412,54411,54412}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31580")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	elseif level >= 101 and level <= 110 then
		local targetid = {54425,54426,54425,54426}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31580")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	elseif level >= 111 and level <= 120 then
		local targetid = {54439,54440,54439,54440}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31580")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	elseif level >= 121 and level <= 130 then
		local targetid = {54453,54454,54453,54454}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31580")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	elseif level >= 131 and level<= 140 then
		local targetid = {54467,54468,54467,54468}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31580")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	elseif level >= 141 and level <= 150 then
		local targetid = {54481,54482,54481,54482}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31580")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	end
	return VALUE_OK
end
