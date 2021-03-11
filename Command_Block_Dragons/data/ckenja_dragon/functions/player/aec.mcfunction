data modify entity @e[type=llama,tag=ckenja_dragon_llama,sort=nearest,limit=1] Motion set from entity @s Pos
execute store result score !tmp ckj03_data run data get entity @e[type=llama,tag=ckenja_dragon_llama,sort=nearest,limit=1] Motion[1]
execute at @s run particle crit ~ ~ ~ 0 0 0 1 0 normal
kill @s