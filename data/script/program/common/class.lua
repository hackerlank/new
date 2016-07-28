ClassStore = ClassStore or {}

function Class(class_name,proto, base, _ctor)
	--table.print(ClassStore, 'm')
	local class = ClassStore[class_name]
	if class == nil then
		class = {}
		ClassStore[class_name] = class
	end
	
	if type(proto) == 'function' then
		_ctor = proto
		proto = nil
	elseif type(proto) == 'table' then
		_ctor = base
		base = proto
		proto = nil
	end
	
	if type(base) == 'function' then
		_ctor = base
		base = nil
	end

	if base ~= nil then
	-- our new class is a shallow copy of the base class!
		for i, v in pairs(base) do
			class[i] = v
		end
		class._base = base
	end

	if proto ~= nil then
		local class_proto = CreateLuaProtoTable(proto)
		local class_proto_mb = getmetatable(class_proto)
		class.proto_message_name = class_proto_mb.proto_message_name
	end

	-- the class will be the metatable for all its objects,
	-- and they will look up their methods in it.
	if proto == nil then
		class.__index = function(self, key)
			local my_class = getmetatable(self)
			local member_func = my_class[key]
			if member_func == nil then
				error('#'..key..'# do not init in class '..class_name..' '..debug.traceback())
			end
			return member_func
		end
		class.new_index_status = 'normal'
		class.__newindex = function(self, key, value)
			local v = rawget(self, key)
			if v == nil then
				error('#'..key..'# do not init in class '..class_name..' '..debug.traceback())
			end
			rawset(self, key, value)
		end
		class.ctor_newindex = function(self, key, value)
			rawset(self, key, value)
		end
	else
		class.__index = function(self, key)
			local my_class = getmetatable(self)
			local member_func = my_class[key]
			if member_func ~= nil then return member_func end
			local _proto_data = rawget(self, '_proto_data')
			local v = _proto_data[key]
			if v == nil then
				error('#'..key..'# do not init in class '..class_name..' '..debug.traceback())
			end
			return v
		end
		class.new_index_status = 'normal'
		class.__newindex = function(self, key, value)
			local _proto_data = rawget(self, '_proto_data')
			if rawget(_proto_data, key) ~= nil then
				_proto_data[key] = value
				return 
			end
			local v = rawget(self, key)
			if v == nil then
				error('#'..key..'# do not init in class '..class_name..' '..debug.traceback())
			end
			rawset(self, key, value)
		end
		class.ctor_newindex = function(self, key, value)
			local _proto_data = rawget(self, '_proto_data')
			if rawget(_proto_data, key) ~= nil then
				_proto_data[key] = value
				return 
			end
			rawset(self, key, value)
		end
		class.CreateProto = function(self, msg_name)
			rawset(self, '_proto_data', CreateFullProtoTable(msg_name))
		end

		class.Proto = function(self, data)
			if data ~= nil then
				rawset(self, '_proto_data', data)
			else
				return rawget(self, '_proto_data')
			end
		end

	end
	-- expose a constructor which can be called by <classname>(<args>)
	local mt = {}
	
	mt.__call = function(_class, ...)
		local obj = {}
		setmetatable(obj, _class)
		LogInfo('new_index_status is', _class.new_index_status)
		if _class.new_index_status == 'normal' then
			_class.__newindex, _class.ctor_newindex = _class.ctor_newindex, _class.__newindex
			_class.new_index_status = 'ctor'
		end
		if _class._ctor then
			_class._ctor(obj,...)
		end
		_class.__newindex, _class.ctor_newindex = _class.ctor_newindex, _class.__newindex
		_class.new_index_status = 'normal'
	
		return obj
	end	
		
	class._ctor = _ctor
	class.IsA = function(self, check_class)
		local mt = getmetatable(self)
		while mt do
			if mt == check_class then return true end
			mt = mt._base
		end
		return false
	end

	setmetatable(class, mt)
	return class
end

function IsClass(obj, class)
	if type(obj) ~= 'table' then
		return false
	end

	if obj.IsA == nil then
		return false
	end
	return obj:IsA(class)
end

