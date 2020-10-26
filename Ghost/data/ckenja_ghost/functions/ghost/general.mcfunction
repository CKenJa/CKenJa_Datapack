#追従モード
execute if entity @s[tag=ckenja_ghost_follow] run function ckenja_ghost:ghost/follow
#攻撃モード
execute if entity @s[tag=ckenja_ghost_attack] run function ckenja_ghost:ghost/attack
#待機モード
execute if entity @s[tag=ckenja_ghost_stand] run function ckenja_ghost:ghost/stand
#水に弱いの
execute if block ~ ~1 ~ water run function ckenja_ghost:ghost/death