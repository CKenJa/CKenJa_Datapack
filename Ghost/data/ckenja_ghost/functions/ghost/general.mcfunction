#追従モード
execute if entity @s[tag=ckenja_ghost_follow] run function ckenja_ghost:ghost/follow

#攻撃モード
execute if entity @s[tag=ckenja_ghost_attack] unless score @s ckenja_ghost2 matches 1.. run function ckenja_ghost:ghost/attack
execute if entity @s[tag=ckenja_ghost_attack] run scoreboard players remove @s ckenja_ghost2 1

#待機モード
execute if entity @s[tag=ckenja_ghost_stand] run function ckenja_ghost:ghost/stand

#異能モード
execute if entity @s[tag=ckenja_ghost_ability] run function ckenja_ghost:ability/general

#水に弱いの
execute if block ~ ~1 ~ water run function ckenja_ghost:ghost/death
