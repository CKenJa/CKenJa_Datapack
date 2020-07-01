#https://www.reddit.com/r/Minecraft/comments/gz4o5j/this_took_way_too_long/
execute if entity @s[tag=ckenja_sand_initial] run function ckenja_sand:initialize
execute if entity @s[tag=ckenja_sand_down] run function ckenja_sand:down
execute if entity @s[tag=ckenja_sand_up] run function ckenja_sand:up