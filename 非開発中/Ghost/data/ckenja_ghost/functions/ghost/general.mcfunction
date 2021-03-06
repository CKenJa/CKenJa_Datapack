#追従モード
execute if entity @s[tag=ckenja_ghost_follow] run function ckenja_ghost:ghost/follow

#攻撃モード
execute if entity @s[tag=ckenja_ghost_attack] unless score @s ckenja_ghost2 matches 1.. run function ckenja_ghost:ghost/attack
execute if entity @s[tag=ckenja_ghost_attack] run scoreboard players remove @s ckenja_ghost2 1

#待機モード
execute if entity @s[tag=ckenja_ghost_stand] run function ckenja_ghost:ghost/stand

#異能モード
#execute if entity @s[tag=ckenja_ghost_ability] run function ckenja_ghost:ability/general

#水に弱いの
execute if block ~ ~1 ~ water run function ckenja_ghost:ghost/death

#わーいキャンディーだー
execute as @e[distance=..2,type=minecraft:item,nbt={Item:{tag:{ckenja:{Tags:["ckenja_ghost:candy"]}}}}] run function ckenja_ghost:ghost/candy
execute if entity @e[distance=..2,type=minecraft:item,nbt={Item:{tag:{ckenja:{Tags:["ckenja_ghost:candy"]}}}}] run function ckenja_ghost:ghost/treat
#execute if score #tmp ckj01_data matches 1 run say 1
#execute if score #tmp ckj01_data matches 1 run say 0

#お菓子をくれなきゃいたずら以下略
scoreboard players add @s ckenja_ghost3 1
execute if score @s ckenja_ghost3 > #240000 ckj01_data if predicate ckj01:random/0.00006103515 run function ckenja_ghost:trick/general