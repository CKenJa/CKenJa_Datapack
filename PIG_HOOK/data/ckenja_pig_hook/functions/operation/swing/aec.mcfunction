data modify entity @s Pos set from storage ckenja_pig_hook: tmp.Pos
execute at @s run particle enchanted_hit ~ ~ ~ 0 0 0 0 10
execute facing entity @s feet positioned ^ ^ ^12 run tp @s ~ ~ ~
execute facing entity @s feet run execute positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^-1
data modify storage ckenja_pig_hook: tmp.vec.Pos set from entity @s Pos
kill @s