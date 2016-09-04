-- FILE: Pet_Õ½»ê±í.xlsm SHEET: ¹éÔª KEY: quality*10000 + grade
PetGYData = {
[10001]={["ID"]=1,["quality"]=1,["grade"]=1,["up_odds"]=3000},
[10002]={["ID"]=2,["quality"]=1,["grade"]=2,["up_odds"]=2000},
[10003]={["ID"]=3,["quality"]=1,["grade"]=3,["up_odds"]=1000},
[10004]={["ID"]=4,["quality"]=1,["grade"]=4,["up_odds"]=500},
[20001]={["ID"]=5,["quality"]=2,["grade"]=1,["up_odds"]=2000},
[20002]={["ID"]=6,["quality"]=2,["grade"]=2,["up_odds"]=1000},
[20003]={["ID"]=7,["quality"]=2,["grade"]=3,["up_odds"]=500},
[20004]={["ID"]=8,["quality"]=2,["grade"]=4,["up_odds"]=50},
}
PetGYData.query = function(quality, grade) return PetGYData[quality * 10000 + grade] end

