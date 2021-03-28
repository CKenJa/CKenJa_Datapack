execute facing entity @e[tag=ckenja_pig_hook_now] feet positioned ^ ^ ^8 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:0,Tags:["ckenja_pig_hook_aec"]}

data modify storage ckenja_pig_hook: tmp.vec.Pos set from entity @s Pos
kill @s