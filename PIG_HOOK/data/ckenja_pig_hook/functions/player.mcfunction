#ブタに乗っているか、フックがあるか1か0で返す
execute store success score #tmp_ride ckj03_data run execute if data storage ckj03: fetch_entitydata{RootVehicle:{Entity:{Tags:["ckenja_pig_hook_pig"]}}}
#クリック検知
execute if score @s ckj03_coas matches 1.. if predicate ckenja_pig_hook:mainhand_hook unless predicate ckenja_pig_hook:offhand_hook run function ckenja_pig_hook:click/general
#アイテム入れ替え検知、入れ替える
execute unless predicate ckenja_pig_hook:mainhand_hook if predicate ckenja_pig_hook:offhand_hook run function ckenja_pig_hook:swap/general