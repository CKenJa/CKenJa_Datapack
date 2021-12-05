execute at @s as @e[tag=ckenja_nether_marker,limit=1,sort=random] at @s run function ckenja_nether:marker
scoreboard players remove #i ckenja_nether 1
execute if score #i ckenja_nether matches 1.. run function ckenja_nether:main