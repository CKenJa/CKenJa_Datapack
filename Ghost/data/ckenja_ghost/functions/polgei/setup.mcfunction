#頭をつける
#乱数生成、大体1..8になるはず。だが適当だからどうなるかは知らん。
execute store result score #tmp ckj01_data run data get entity @s UUID[0] 00000000186264514923095703125
execute if score #tmp ckj01_data matches ..-3 run replaceitem entity @s armor.head pumpkin{CustomModelData:126001} 1
execute if score #tmp ckj01_data matches -2 run replaceitem entity @s armor.head pumpkin{CustomModelData:126002} 1
execute if score #tmp ckj01_data matches -1 run replaceitem entity @s armor.head pumpkin{CustomModelData:126003} 1
execute if score #tmp ckj01_data matches 0 run replaceitem entity @s armor.head pumpkin{CustomModelData:126004} 1
execute if score #tmp ckj01_data matches 1.. run replaceitem entity @s armor.head pumpkin{CustomModelData:126005} 1
#execute if score #tmp ckj01_data matches 2 run replaceitem entity @s armor.head pumpkin{CustomModelData:126006} 1
#execute if score #tmp ckj01_data matches 3.. run replaceitem entity @s armor.head pumpkin{CustomModelData:126007} 1
#寿命スコアをつける約八分
scoreboard players set @s ckenja_ghost 10000

tag @s remove ckenja_ghost_polgei_initial