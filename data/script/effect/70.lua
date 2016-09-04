
--清除所有减益buff

function OnAddEvent_70(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=70,清除所有减益buff=%d=%d=%d------------------",param1,param2,param3)
	local buff = s_getbuff(etype,eid)
	s_debug("buff长度＝%d",#buff)
	for i=1,table.getn(buff),2 do
		local buffid,bufflev = buff[i],buff[i+1]
		s_debug("buffid=%d,bufflev=%d",buffid,bufflev)
		local key = buffid*10000+bufflev
		local buffflag = BuffDataBase[key].buffflag
		if buffflag == 1 then
			s_removebuff(etype,eid,buffid,1)
		end
	end
end
