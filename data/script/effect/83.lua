
--随机驱散友方一个减益或敌方一个增益buff

function OnAddEvent_83(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=83,随机驱散友方一个减益或敌方一个增益buff=%d=%d=%d------------------",param1,param2,param3)
	local buff = s_getbuff(etype,eid)
	local removebuff = {}
	local camp = 0
	if s_checkPK(5006,ptype,pid,etype,eid) == VALUE_OK then
		camp = 1
	end
	for i=1,table.getn(buff),2 do
		local buffid,bufflev = buff[i],buff[i+1]
		s_debug("buffid=%d,bufflev=%d",buffid,bufflev)
		local key = buffid*10000+bufflev
		local buffflag = BuffDataBase[key].buffflag
		local removeflag = BuffDataBase[key].removeflag
		s_debug("camp=%d,buffflag=%d,removeflag=%d",camp,buffflag,removeflag)
		if removeflag == 3 then
			if camp == 0 and buffflag == 1 then
				table.insert(removebuff,buffid)
			elseif camp == 1 and buffflag == 0 then
				table.insert(removebuff,buffid)
			end
		end
	end
	local length = table.getn(removebuff)
	s_debug("length=%d",length)
	if length > 0 then
		local rad = math.random(length)
		s_removebuff(etype,eid,removebuff[rad],1)
	end
end
