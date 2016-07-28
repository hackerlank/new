--神兵部件宝箱
function OnUseItemEvent_31581(uid,thisid)
	local level = s_getValue(SCENE_ENTRY_PLAYER,uid,VALUE_TYPE_LEVEL)
	if level < 101 then
		s_sysInfo(uid,"等级不符，无法使用")
		return VALUE_FAIL
	end
	if s_deleteItemByThisID(uid,thisid,1,"OnUseItemEvent_31581") ~= VALUE_OK then
		return VALUE_FAIL
	end
	if level >= 91 and level <= 100 then
		local targetid = {54410,54413,54414,54415,54416,54417,54418,54419}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31581")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	elseif level >= 101 and level <= 110 then
		local targetid = {54424,54427,54428,54429,54430,54431,54432,54433}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31581")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	elseif level >= 111 and level <= 120 then
		local targetid = {54438,54441,54442,54443,54444,54445,54446,54447}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31581")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	elseif level >= 121 and level <= 130 then
		local targetid = {54452,54455,54456,54457,54458,54459,54460,54461}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31581")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	elseif level >= 131 and level<= 140 then
		local targetid = {54466,54469,54470,54471,54472,54473,54474,54475}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31581")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	elseif level >= 141 and level <= 150 then
		local targetid = {54480,54483,54484,54485,54486,54487,54488,54489}
		local itemid = s_addItem(uid,targetid[math.random(1,table.getn(targetid))],3,1,0,"7-4","OnUseItemEvent_31581")
		if itemid ~= nil and itemid ~= 0 then
			local shenbing = rawget(_G, "ItemShenbing")
			if shenbing ~= nil and shenbing.buildAttribute ~= nil then
				shenbing.buildAttribute(shenbing,uid,itemid)
			end
		end
	end
	return VALUE_OK
end

