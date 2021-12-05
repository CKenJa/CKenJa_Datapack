#execute if entity @s[tag=ckenja_pig_hook_ride]
#仮
scoreboard players set #tmp_ride ckj03_data 1
#乗られているならMotion計算
execute if score #tmp_ride ckj03_data matches 1 run function ckenja_pig_hook:operation/swing/general
