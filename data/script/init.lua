--/////////////////////////////////////////////////////////////////
--////脚本初始化文件
--/////////////////////////////////////////////////////////////////
--根目录，全局变量
ROOT_DIR = c_getRootDir()
math.randomseed(os.time())
--package.path = package.path..[[;/root/bwtserver/data/script/3Party/?.lua]]
--c_debug(package.path)
--c_debug(package.cpath)
--
----初始化proto文件
--local proto_path = [[/data/script/dynamicproto]]
--local file,err=io.open('.'..proto_path)
--if file == nil then
--       os.execute("mkdir ."..proto_path)
--else
--       file:close()
--end
--os.execute("cp common/server/*.proto ."..proto_path)
--os.execute("cp common/user/*.proto ."..proto_path)

function LoadProto(proto_paths)
	--proto_path = MainPath()..proto_path
	for k, v in pairs(proto_paths) do
		PushProtoSource(v)
	end
	for k, proto_path in pairs(proto_paths) do
		FILE_LIST = {c_walkThroughPath('../../'..proto_path)}
		for i=1,table.getn(FILE_LIST) do
			if string.find(FILE_LIST[i],"^.*\.proto$") then
				local file_name = FILE_LIST[i]
				--file_name = string.sub(file_name, string.find(file_name, [[/*/.proto]]) + 1, #file_name)
				file_name = string.match(file_name, [[%w+%.proto]])
				CompilerProto(file_name)
			end
		end
	end
end

LoadProto({[[common/server]], [[common/user]]})

RegisterLuaProtoMsg("GameSmd.ServerCommand", "GameSmd")
RegisterLuaProtoMsg("GameCmd.ClientCommand", "GameCmd")

--加载脚本文件函数-------------------------------------------------
function DoFile(file)
	file = ROOT_DIR .. file
	if c_dofile(file) == 0 then
		local chunk,err = loadfile(file)
		if not chunk then
			c_debug("".. err)
			c_worldInfo("脚本错误:" .. err,10)
		end
	end
end

--加载文件------------------------------------------------------
function LoadDir(dir)
	local FILE_LIST = {c_walkThroughPath(dir)}
	for i=1,table.getn(FILE_LIST) do
		if string.find(FILE_LIST[i],"^.*\.lua$") then
			DoFile(FILE_LIST[i])
		end
	end
end

function LoadScripts()
	c_debug('load scripts')
	--todo 换require来加载 可能更好
	LoadDir("lib")	--加载lib目录
	LoadDir("table")	--加载table目录 要在programe之前
	LoadDir("program/common")	--加载base目录
	LoadDir("program")	--加载programe目录
	LoadDir("event")	--加载event目录
	LoadDir("effect")	--加载effect目录
	LoadDir("npc")	--加载npc目录
	LoadDir("task_new")	--加载task目录
	LoadDir("item")	--加载item目录
	LoadDir("buff")	--加载buff目录
	LoadDir("skill")	--加载skill目录
	LoadDir("data")	--加载data目录
	LoadDir("copy")	--加载copy目录
	LoadDir("dead")	--加载dead目录
	LoadDir("book") --加载book目录
	LoadDir("game") --加载game目录
	LoadDir("holiday") --加载holiday目录
	LoadDir("hotkey") --加载hotkey目录

--fix table
	ComfortTable(PetDataBase)

--注册函数要放在最后
	PetBox.RegisterHandle()
	return true
end
LoadScripts()

function ShowStackVal(...)
	local args = {...}
	for _, v in ipairs(args) do
		if type(v) == 'table' then
			table.print(v, 'mm')
		else
			print(v)
		end

	end
end
 
--NPC点击事件入口----------------------------------------------------
function OnClickNpcEvent(uid,baseid,thisid)
	c_debug("[001---init:120]注册Npc访问事件,[uid]=%d,[baseid]=%d,[thisid]=%d",uid,baseid,thisid)
	--执行注册事件
	if ClickNpcEvent ~= nil and ClickNpcEvent[baseid] ~= nil then
		for i = 1, table.getn(ClickNpcEvent[baseid]) do
			local call = ClickNpcEvent[baseid][i]
			if type(call) == "function" then
				call(uid, thisid)
			elseif type(call) == "string" then
				local func = StringToFunction(call)
				if func ~= nil then
					func(uid, thisid)
				end
			end
		end
	end

	local fun = rawget(_G,"OnClickNpc_" .. baseid)
	if fun ~= nil then
		c_debug("[002-init:138 OnClickNpc_%d]",baseid)
		fun(uid,thisid)
		return VALUE_OK
	end
	local info = rawget(_G,"NpcMenuInfo" .. baseid)
	if info ~= nil then
		c_debug("[003-init:141 NpcMenuInfo%d]",baseid)
		ShowNpcMenuByTable(uid,info)
		return VALUE_OK
	end
	return VALUE_FAIL
end

--对话框选择菜单处理入口-----------------------------------------------
function OnChooseMenuEvent(step,uid,choose,option)
	if step == "2008" then
		local buf = s_getCallBack(uid,choose)
		if buf == nil or buf == "" then
			return
		end
		--解析过的字符串可以存起来,省掉重复解析的开销
		local fun = StringToFunction(buf)
		if fun ~= nil then
			s_addVar(uid,1,1,choose)
			s_addVar(uid,1,2,option)
			fun(uid)
		end
	end
end
-----------------------------------------------------------------------
--
--GM活动脚本加载-----------------------------------------------
function OnResetGMScript(script)
	local func,e = loadstring(script)
	if func == nil then
		s_errorm(e)
		return
	end
	func()
end
-----------------------------------------------------------------------
--
--GM给玩家发的立即执行的活动脚本加载-----------------------------------------------
function OnResetAndExcuteUserScript(uid,script)
	local func,e = loadstring(script)
	if func == nil then
		s_errorm(e)
		return
	end
end
-----------------------------------------------------------------------
