#ブタに乗っていない
#アイテム検知&クリック検知:召喚
execute unless data storage ckj03: fetch_entitydata{RootVehicle: {Entity: {Tags: ["ckenja_pig_hook_pig"]}}} if data storage ckj03: fetch_entitydata{SelectedItem:{tag:{ctc:{id:"pig_hook",from:"ckenja:pig_hook"}}}} run function ckenja_pig_hook:player/not_ride

#ブタに乗っている
##初めてならブタにタグを(降りたときのキル用)
##フックありexist_hook
###アイテム検知/have
####クリック検知:収納behavior/unhook
####視線ジェット計算operation/boost
###アイテム持ってない:視線なしジェット計算
###入れ替え検知:巻き取りbehavior/boost
###Motion計算operation/boost
##フックなしnone_hook
###アイテム検知&クリック検知:射出behavior/shot
###入れ替え検知:ジャンプbehavior/jump
#execute if data storage ckj03: fetch_entitydata{RootVehicle: {Entity: {Tags: ["ckenja_pig_hook_pig"]}}} run function ckenja_pig_hook:player/main
