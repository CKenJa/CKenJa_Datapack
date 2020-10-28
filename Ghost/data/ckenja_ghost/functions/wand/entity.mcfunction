#ゴーストか
#検知はアマスタ君に変更。
#execute if entity @s[type=armor_stand,tag=ckenja_ghost_ghost] run function ckenja_ghost:wand/ghost/general
#攻撃対象か
execute unless entity @s[type=armor_stand,tag=ckenja_ghost_ghost] at @s as @e[type=#ckenja_ghost:enemy,distance=..4,tag=!global.ignore.kill,tag=!global.ignore.gui,tag=!global.ignore] run function ckenja_ghost:wand/enemy