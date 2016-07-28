
--持续治疗效果/1秒

function OnLoopEvent_1Sec_78(etype,eid,pid,ptype,param1,param2,param3)
	s_debug("-------------ID=78,持续治疗效果/1秒=%d=%d=%d------------------",param1,param2,param3) 
	--获取最终治疗量
	local cure = s_getValue(etype,eid,VALUE_TYPE_CURE)
	local addhp = (cure + param1)*param2/10000
	s_addValue(etype,eid,VALUE_TYPE_HP,addhp)
end