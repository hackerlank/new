--物品使用总接口
function OnUseItemEvent(itemtype,itemid,uid,thisid,targetid,number)
	if itemtype == ItemType_Horse then
		return OnUseHorseItem(itemid,uid,thisid)
	end

	--执行注册事件
	if UseItemEvent ~= nil and UseItemEvent[itemid] ~= nil then
		for i = 1, table.getn(UseItemEvent[itemid]) do
			local call = UseItemEvent[itemid][i]
			if type(call) == "function" then
				call(uid, thisid, targetid, number)
			elseif type(call) == "string" then
				local func = StringToFunction(call)
				if func ~= nil then
					func(uid, thisid, targetid, number)
				end
			end
		end
	end

	--执行事件
	local fun = rawget(_G,"OnUseItemEvent_" .. itemid)
	if fun ~= nil and itemid ~= 23037 and itemid ~= 23038
		and itemid ~= 23039 and itemid ~= 23040 and itemid ~= 23041
		and itemid ~= 23042 and itemid ~= 23043 and itemid ~= 23044 then
		--战术隐蔽使用道具清除
		s_removebuff(SCENE_ENTRY_PLAYER,uid,10211)
		return fun(uid,thisid,targetid,number)
	elseif fun ~= nil then
		return fun(uid,thisid,targetid,number)
	end
	return VALUE_OK
end


--使用马匹道具
function OnUseHorseItem(itemid,uid,thisid)
	s_useHorseItem(uid,thisid)
	return VALUE_OK
end
