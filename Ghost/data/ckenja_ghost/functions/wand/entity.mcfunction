#ゴーストか
execute if entity @s[type=armor_stand,tag=ckenja_ghost_ghost] run function ckenja_ghost:wand/ghost/general
#攻撃対象か
execute unless entity @s[type=armor_stand,tag=ckenja_ghost_ghost] run function ckenja_ghost:wand/enemy