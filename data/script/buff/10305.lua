--致命要害
function OnHoldBuff_10305(level,etype,eid,value)

	local luck = {1,1,1,2,2,2,3,3,4,4,5,5,5,5,5,5 }
	local percent ={ 2,2.5,3,4,4.5,5,6,7,8,9,10,11,12,13,14,15}
	local addtion = { 10,15,20,30,40,50,60,70,80,90,100,110,120,130,140,150}

	local add = addtion[level] * (100 + value) / 100
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_PER,percent[level] * 100)
	s_addValue(etype,eid,VALUE_TYPE_PDAM_ADD_EXT,add)
	--s_addValue(etype,eid,VALUE_TYPE_LUCKY,luck[level]*100)
end
