#ポルゲイか
execute if entity @s[type=armor_stand,tag=ckenja_ghost_polgei] if score #tmp2 ckj01_data matches 1.. run execute if predicate ckj01:random/0.45 run function ckenja_ghost:wand/polgei
#攻撃対象か
execute unless entity @s[type=armor_stand,tag=ckenja_ghost_ghost] at @s as @e[type=#ckenja_ghost:enemy,distance=..4,tag=!global.ignore.kill,tag=!global.ignore.gui,tag=!global.ignore] run function ckenja_ghost:wand/enemy
tag @s remove ckenja_ghost_target