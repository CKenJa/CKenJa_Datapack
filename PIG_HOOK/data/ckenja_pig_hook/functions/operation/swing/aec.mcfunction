execute at @s run particle enchanted_hit ~ ~ ~ 0 0 0 0 10
execute positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1
data modify storage ckenja_pig_hook: tmp.vec.Pos set from entity @s Pos
kill @s