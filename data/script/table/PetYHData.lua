-- FILE: Pet_战魂表.xlsm SHEET: 引魂 KEY: lv
PetYHData = {
[0]={["lv"]=0,["exp"]=100,["up"]=0,["item"]=14,["add_exp"]=100},
[1]={["lv"]=1,["exp"]=500,["up"]=100,["item"]=14,["add_exp"]=100},
[2]={["lv"]=2,["exp"]=1500,["up"]=200,["item"]=14,["add_exp"]=100},
[3]={["lv"]=3,["exp"]=10000,["up"]=300,["item"]=14,["add_exp"]=100},
[4]={["lv"]=4,["exp"]=10000,["up"]=400,["item"]=14,["add_exp"]=100},
[5]={["lv"]=5,["exp"]=10000,["up"]=500,["item"]=14,["add_exp"]=100},
[6]={["lv"]=6,["exp"]=30000,["up"]=600,["item"]=14,["add_exp"]=100},
[7]={["lv"]=7,["exp"]=60000,["up"]=700,["item"]=14,["add_exp"]=100},
[8]={["lv"]=8,["exp"]=100000,["up"]=800,["item"]=14,["add_exp"]=100},
[9]={["lv"]=9,["exp"]=500000,["up"]=900,["item"]=14,["add_exp"]=100},
[10]={["lv"]=10,["exp"]=0,["up"]=1000,["item"]=14,["add_exp"]=100},
}
PetYHData.query = function(lv) return PetYHData[lv] end

