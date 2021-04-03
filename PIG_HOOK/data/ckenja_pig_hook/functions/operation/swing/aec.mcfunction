data modify entity @s Pos set from storage ckenja_pig_hook: tmp.Pos
execute at @s run particle enchanted_hit ~ ~ ~ 0 0 0 0 10
execute facing entity @s feet positioned ^ ^ ^12 run tp @s ~ ~ ~
execute facing entity @s feet run function ckenja_pig_hook:operation/swing/origin
